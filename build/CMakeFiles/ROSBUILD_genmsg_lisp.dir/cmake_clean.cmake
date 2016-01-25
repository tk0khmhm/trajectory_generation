FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/trajectory_generation/msg"
  "../src/trajectory_generation/srv"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Velocity.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Velocity.lisp"
  "../msg_gen/lisp/path_params.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_path_params.lisp"
  "../msg_gen/lisp/RoadProperty.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_RoadProperty.lisp"
  "../msg_gen/lisp/VelocityArray.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_VelocityArray.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
