FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/trajectory_generation/msg"
  "../src/trajectory_generation/srv"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/trajectory_generation/Velocity.h"
  "../msg_gen/cpp/include/trajectory_generation/path_params.h"
  "../msg_gen/cpp/include/trajectory_generation/RoadProperty.h"
  "../msg_gen/cpp/include/trajectory_generation/VelocityArray.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
