FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "msg_gen"
  "srv_gen"
  "src/trajectory_generation/msg"
  "src/trajectory_generation/srv"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "src/trajectory_generation/msg/__init__.py"
  "src/trajectory_generation/msg/_path_params.py"
  "src/trajectory_generation/msg/_Velocity.py"
  "src/trajectory_generation/msg/_RoadProperty.py"
  "src/trajectory_generation/msg/_VelocityArray.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
