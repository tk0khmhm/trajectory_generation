FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "msg_gen"
  "srv_gen"
  "src/trajectory_generation/msg"
  "src/trajectory_generation/srv"
  "CMakeFiles/doxygen"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doxygen.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
