#include "trajectory_generation/Visualize_lib.h"
#include <iostream>

using namespace std;

Visualization::Visualization(std_msgs::ColorRGBA rgba_in,
							 uint action_in,
							 float scale_in,
							 const string& name_in,
							 const string& frame_id_in)
{
	marker.color = rgba_in;
	marker.action = action_in;
	marker.scale.x=scale_in;
	marker.scale.y=scale_in;
	marker.scale.z=scale_in;
	marker.ns = name_in;
	marker.header.frame_id = frame_id_in;
}
///////////////////////////////////////////////////////
/////-----------Visualize function-------------////////
///////////////////////////////////////////////////////
void Visualization::convertPath2MarkerLine(	nav_msgs::Path path,
								visualization_msgs::Marker& line, 
								int id)
{
	line = marker;
	line.header.stamp=ros::Time::now();
	line.id = id; // set each ID number of lines
	line.type=visualization_msgs::Marker::LINE_STRIP;

	line.pose.position.x=0.0;
	line.pose.position.y=0.0;
	line.pose.position.z=0.0;
	line.pose.orientation.x = 0.0;
	line.pose.orientation.y = 0.0;
	line.pose.orientation.z = 0.0;
	line.pose.orientation.w = 0.0;

	
	
	geometry_msgs::Point pt;
	for(uint i=0; i<path.poses.size(); i++){
		pt.x = path.poses[i].pose.position.x;
		pt.y = path.poses[i].pose.position.y;
		pt.z = path.poses[i].pose.position.z+0.1;
		line.points.push_back(pt);
	}
}

void Visualization::txtMarker(	const string& txt_in,
								geometry_msgs::PoseStamped goal,
								visualization_msgs::Marker& mk, 
								int id)
{
	mk = marker;
	mk.header.stamp=ros::Time::now();

	mk.type = visualization_msgs::Marker::TEXT_VIEW_FACING;
    mk.id = id;
	mk.text = txt_in;
	mk.pose = goal.pose;
	mk.scale.x = 0.1;
	mk.scale.y = 0.1;
	mk.scale.z = 0.1;
	mk.color.r = 0.9;
	mk.color.g = 0.9;
	mk.color.b = 0.9;
	mk.color.a = 0.9;
	mk.lifetime = ros::Duration();
}
