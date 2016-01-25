/* Auto-generated by genmsg_cpp for file /home/ubuntu/AMSL_ros_pkg/masanobusan/infant_ver/20130928/trajectory_generation/srv/PathCheck.srv */
#ifndef TRAJECTORY_GENERATION_SERVICE_PATHCHECK_H
#define TRAJECTORY_GENERATION_SERVICE_PATHCHECK_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"

#include "nav_msgs/Path.h"
#include "nav_msgs/OccupancyGrid.h"


#include "nav_msgs/GridCells.h"

namespace trajectory_generation
{
template <class ContainerAllocator>
struct PathCheckRequest_ {
  typedef PathCheckRequest_<ContainerAllocator> Type;

  PathCheckRequest_()
  : path()
  , map()
  {
  }

  PathCheckRequest_(const ContainerAllocator& _alloc)
  : path(_alloc)
  , map(_alloc)
  {
  }

  typedef  ::nav_msgs::Path_<ContainerAllocator>  _path_type;
   ::nav_msgs::Path_<ContainerAllocator>  path;

  typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _map_type;
   ::nav_msgs::OccupancyGrid_<ContainerAllocator>  map;


  typedef boost::shared_ptr< ::trajectory_generation::PathCheckRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::trajectory_generation::PathCheckRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct PathCheckRequest
typedef  ::trajectory_generation::PathCheckRequest_<std::allocator<void> > PathCheckRequest;

typedef boost::shared_ptr< ::trajectory_generation::PathCheckRequest> PathCheckRequestPtr;
typedef boost::shared_ptr< ::trajectory_generation::PathCheckRequest const> PathCheckRequestConstPtr;



template <class ContainerAllocator>
struct PathCheckResponse_ {
  typedef PathCheckResponse_<ContainerAllocator> Type;

  PathCheckResponse_()
  : cost(0)
  , out_cells()
  {
  }

  PathCheckResponse_(const ContainerAllocator& _alloc)
  : cost(0)
  , out_cells(_alloc)
  {
  }

  typedef int32_t _cost_type;
  int32_t cost;

  typedef  ::nav_msgs::GridCells_<ContainerAllocator>  _out_cells_type;
   ::nav_msgs::GridCells_<ContainerAllocator>  out_cells;


  typedef boost::shared_ptr< ::trajectory_generation::PathCheckResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::trajectory_generation::PathCheckResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct PathCheckResponse
typedef  ::trajectory_generation::PathCheckResponse_<std::allocator<void> > PathCheckResponse;

typedef boost::shared_ptr< ::trajectory_generation::PathCheckResponse> PathCheckResponsePtr;
typedef boost::shared_ptr< ::trajectory_generation::PathCheckResponse const> PathCheckResponseConstPtr;


struct PathCheck
{

typedef PathCheckRequest Request;
typedef PathCheckResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct PathCheck
} // namespace trajectory_generation

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::trajectory_generation::PathCheckRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::trajectory_generation::PathCheckRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::trajectory_generation::PathCheckRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "726516aab2b9d123db1e77f2a3c768df";
  }

  static const char* value(const  ::trajectory_generation::PathCheckRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x726516aab2b9d123ULL;
  static const uint64_t static_value2 = 0xdb1e77f2a3c768dfULL;
};

template<class ContainerAllocator>
struct DataType< ::trajectory_generation::PathCheckRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "trajectory_generation/PathCheckRequest";
  }

  static const char* value(const  ::trajectory_generation::PathCheckRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::trajectory_generation::PathCheckRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "nav_msgs/Path path\n\
nav_msgs/OccupancyGrid map\n\
\n\
================================================================================\n\
MSG: nav_msgs/Path\n\
#An array of poses that represents a Path for a robot to follow\n\
Header header\n\
geometry_msgs/PoseStamped[] poses\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: nav_msgs/OccupancyGrid\n\
# This represents a 2-D grid map, in which each cell represents the probability of\n\
# occupancy.\n\
\n\
Header header \n\
\n\
#MetaData for the map\n\
MapMetaData info\n\
\n\
# The map data, in row-major order, starting with (0,0).  Occupancy\n\
# probabilities are in the range [0,100].  Unknown is -1.\n\
int8[] data\n\
\n\
================================================================================\n\
MSG: nav_msgs/MapMetaData\n\
# This hold basic information about the characterists of the OccupancyGrid\n\
\n\
# The time at which the map was loaded\n\
time map_load_time\n\
# The map resolution [m/cell]\n\
float32 resolution\n\
# Map width [cells]\n\
uint32 width\n\
# Map height [cells]\n\
uint32 height\n\
# The origin of the map [m, m, rad].  This is the real-world pose of the\n\
# cell (0,0) in the map.\n\
geometry_msgs/Pose origin\n\
";
  }

  static const char* value(const  ::trajectory_generation::PathCheckRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::trajectory_generation::PathCheckResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::trajectory_generation::PathCheckResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::trajectory_generation::PathCheckResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b30bbafba75f86ad51a03dc0abf641c6";
  }

  static const char* value(const  ::trajectory_generation::PathCheckResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xb30bbafba75f86adULL;
  static const uint64_t static_value2 = 0x51a03dc0abf641c6ULL;
};

template<class ContainerAllocator>
struct DataType< ::trajectory_generation::PathCheckResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "trajectory_generation/PathCheckResponse";
  }

  static const char* value(const  ::trajectory_generation::PathCheckResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::trajectory_generation::PathCheckResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 cost\n\
nav_msgs/GridCells out_cells\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: nav_msgs/GridCells\n\
#an array of cells in a 2D grid\n\
Header header\n\
float32 cell_width\n\
float32 cell_height\n\
geometry_msgs/Point[] cells\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::trajectory_generation::PathCheckResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::trajectory_generation::PathCheckRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.path);
    stream.next(m.map);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PathCheckRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::trajectory_generation::PathCheckResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.cost);
    stream.next(m.out_cells);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PathCheckResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<trajectory_generation::PathCheck> {
  static const char* value() 
  {
    return "b215c250b8749397d181c33e02960bd4";
  }

  static const char* value(const trajectory_generation::PathCheck&) { return value(); } 
};

template<>
struct DataType<trajectory_generation::PathCheck> {
  static const char* value() 
  {
    return "trajectory_generation/PathCheck";
  }

  static const char* value(const trajectory_generation::PathCheck&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<trajectory_generation::PathCheckRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b215c250b8749397d181c33e02960bd4";
  }

  static const char* value(const trajectory_generation::PathCheckRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<trajectory_generation::PathCheckRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "trajectory_generation/PathCheck";
  }

  static const char* value(const trajectory_generation::PathCheckRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<trajectory_generation::PathCheckResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b215c250b8749397d181c33e02960bd4";
  }

  static const char* value(const trajectory_generation::PathCheckResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<trajectory_generation::PathCheckResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "trajectory_generation/PathCheck";
  }

  static const char* value(const trajectory_generation::PathCheckResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // TRAJECTORY_GENERATION_SERVICE_PATHCHECK_H
