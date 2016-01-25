#include "trajectory_generation/LocalPlanning_lib.h"
#include <iostream>
#include <math.h>

using namespace std;

/////////////////////////////////////////////////////////
//-------------------Sign関数!!!!!---------------------//
//---------------引数の符号を返します-------------------//
/////////////////////////////////////////////////////////
int Sign(float x)
{
	int sign = 1;
	if(x < 0)	sign = -1;
	else if(x==0)	sign = 0;
	return sign;
}

float
distance(float x1,float y1,float x2,float y2)
{
	return sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
}

///////////////////////////////////////////////////////
//----------Checking collision function--------------//
//bresenhamsLineアルゴリズムによりpathをグリッド化し，
//グリッドマップとの照らし合わせを行います．
//costはpathとGridMapが重なった部分の占有率です.
//占有率 = (0　～　100)
///////////////////////////////////////////////////////
float pathCheck(nav_msgs::Path path, nav_msgs::OccupancyGrid map)
{
	const int expand=1;
	vector<float> x,y;
	tp::bresenhamsLine(x,y, path.poses, map.info.resolution);
	
	float cost=0;
	int count=0;
	int n=x.size();
	for(int i=20; i<n; i++){
		int xi=round( (map.info.origin.position.x - x[i])/map.info.resolution );
		int yi=round( (map.info.origin.position.y - y[i])/map.info.resolution );
		if(xi>=expand && xi<(int)map.info.height-expand && yi>=expand && yi<(int)map.info.width-expand){
			
			if(map.data[xi+map.info.width*yi] > cost){
				cost = map.data[xi+map.info.width*yi];
			}else if(map.data[xi+expand+map.info.width*(yi+expand)] > cost){
				cost = map.data[xi+expand+map.info.width*(yi+expand)];
			}else if(map.data[xi-expand+map.info.width*(yi-expand)] > cost){
				cost = map.data[xi-expand+map.info.width*(yi-expand)];
			}
			
			geometry_msgs::Point pt;
			pt.x=x[i];	pt.y=y[i];	pt.z=0;
			count++;
		}
	}
			
	return cost;
}

///////////////////////////////////////////////////////
/////-------Cordinate Convert function---------////////
///////////////////////////////////////////////////////

void pathLocal2Global(nav_msgs::Path& path, const tf::StampedTransform transform)
{
	int length=path.poses.size();
	nav_msgs::Odometry zero;
	float angle = tf::getYaw(transform.getRotation()) - 0;
	for(int i=0;i<length;i++){
		float tmp_x = path.poses[i].pose.position.x - zero.pose.pose.position.x;
		float tmp_y = path.poses[i].pose.position.y - zero.pose.pose.position.y;
		float conv_x = cos(angle)*tmp_x - sin(angle)*tmp_y;
		float conv_y = sin(angle)*tmp_x + cos(angle)*tmp_y;
		path.poses[i].pose.position.x = conv_x + transform.getOrigin().x();
		path.poses[i].pose.position.y = conv_y + transform.getOrigin().y();
	}
}

void localToGlobal(	geometry_msgs::Pose local_point,
					geometry_msgs::Pose& global,
					const tf::StampedTransform transform)
{
	float g_x = transform.getOrigin().x();
	float g_y = transform.getOrigin().y();
	float g_yaw = tf::getYaw(transform.getRotation());
	float l_x = local_point.position.x;
	float l_y = local_point.position.y;
	float l_yaw = tf::getYaw(local_point.orientation);
	float C = cos(g_yaw);
	float S = sin(g_yaw);
	
	float p_x = l_x*C - l_y*S + g_x;
	float p_y = l_x*S + l_y*C + g_y;
	
	geometry_msgs::Quaternion pose_quat = tf::createQuaternionMsgFromRollPitchYaw(0,0,g_yaw+l_yaw);
	
	global.orientation = pose_quat;
	global.position.x = p_x;
	global.position.y = p_y;
}

float 
pathMake(const tf::StampedTransform trans, 
			float v, 
			float yawrate, 
			float time, 
			nav_msgs::Path& pa_, 
			const geometry_msgs::PoseStamped endp)
{
	float dt = 0.1;
	float xs2 = 0;
	float ys2 = 0;
	
	float theta = 0;
	float dis_cost;

	geometry_msgs::PoseStamped ps;
	geometry_msgs::PoseStamped ps_glo;
	geometry_msgs::Point pt;
	nav_msgs::Path pa;
	pa.header.frame_id="/odom";
	pa.header.stamp=ros::Time::now();
	
	for(int j=0; j<time*10; j++){
		ps.pose.position.x=xs2 + dt*v*cos(theta);
		ps.pose.position.y=ys2 + dt*v*sin(theta);
		ps.pose.position.z=0.03;
		ps.pose.orientation = tf::createQuaternionMsgFromRollPitchYaw(0,0,theta);
		pa.poses.push_back(ps);	
		xs2 += dt*v*cos(theta);
		ys2 += dt*v*sin(theta);
		theta += yawrate*dt;
	}
	pathLocal2Global(pa, trans);
	localToGlobal(ps.pose,ps_glo.pose,trans);
	pa_ = pa;
	float path_end_x = ps_glo.pose.position.x;
	float path_end_y = ps_glo.pose.position.y;
	dis_cost = distance(path_end_x, path_end_y, endp.pose.position.x, endp.pose.position.y);
	return dis_cost;
}
