; Auto-generated. Do not edit!


(cl:in-package trajectory_generation-srv)


;//! \htmlinclude PathCheck-request.msg.html

(cl:defclass <PathCheck-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (map
    :reader map
    :initarg :map
    :type nav_msgs-msg:OccupancyGrid
    :initform (cl:make-instance 'nav_msgs-msg:OccupancyGrid)))
)

(cl:defclass PathCheck-request (<PathCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<PathCheck-request> is deprecated: use trajectory_generation-srv:PathCheck-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:path-val is deprecated.  Use trajectory_generation-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <PathCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:map-val is deprecated.  Use trajectory_generation-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathCheck-request>) ostream)
  "Serializes a message object of type '<PathCheck-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathCheck-request>) istream)
  "Deserializes a message object of type '<PathCheck-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathCheck-request>)))
  "Returns string type for a service object of type '<PathCheck-request>"
  "trajectory_generation/PathCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathCheck-request)))
  "Returns string type for a service object of type 'PathCheck-request"
  "trajectory_generation/PathCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathCheck-request>)))
  "Returns md5sum for a message object of type '<PathCheck-request>"
  "b215c250b8749397d181c33e02960bd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathCheck-request)))
  "Returns md5sum for a message object of type 'PathCheck-request"
  "b215c250b8749397d181c33e02960bd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathCheck-request>)))
  "Returns full string definition for message of type '<PathCheck-request>"
  (cl:format cl:nil "nav_msgs/Path path~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathCheck-request)))
  "Returns full string definition for message of type 'PathCheck-request"
  (cl:format cl:nil "nav_msgs/Path path~%nav_msgs/OccupancyGrid map~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/OccupancyGrid~%# This represents a 2-D grid map, in which each cell represents the probability of~%# occupancy.~%~%Header header ~%~%#MetaData for the map~%MapMetaData info~%~%# The map data, in row-major order, starting with (0,0).  Occupancy~%# probabilities are in the range [0,100].  Unknown is -1.~%int8[] data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathCheck-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathCheck-request
    (cl:cons ':path (path msg))
    (cl:cons ':map (map msg))
))
;//! \htmlinclude PathCheck-response.msg.html

(cl:defclass <PathCheck-response> (roslisp-msg-protocol:ros-message)
  ((cost
    :reader cost
    :initarg :cost
    :type cl:integer
    :initform 0)
   (out_cells
    :reader out_cells
    :initarg :out_cells
    :type nav_msgs-msg:GridCells
    :initform (cl:make-instance 'nav_msgs-msg:GridCells)))
)

(cl:defclass PathCheck-response (<PathCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<PathCheck-response> is deprecated: use trajectory_generation-srv:PathCheck-response instead.")))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <PathCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:cost-val is deprecated.  Use trajectory_generation-srv:cost instead.")
  (cost m))

(cl:ensure-generic-function 'out_cells-val :lambda-list '(m))
(cl:defmethod out_cells-val ((m <PathCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:out_cells-val is deprecated.  Use trajectory_generation-srv:out_cells instead.")
  (out_cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathCheck-response>) ostream)
  "Serializes a message object of type '<PathCheck-response>"
  (cl:let* ((signed (cl:slot-value msg 'cost)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'out_cells) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathCheck-response>) istream)
  "Deserializes a message object of type '<PathCheck-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cost) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'out_cells) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathCheck-response>)))
  "Returns string type for a service object of type '<PathCheck-response>"
  "trajectory_generation/PathCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathCheck-response)))
  "Returns string type for a service object of type 'PathCheck-response"
  "trajectory_generation/PathCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathCheck-response>)))
  "Returns md5sum for a message object of type '<PathCheck-response>"
  "b215c250b8749397d181c33e02960bd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathCheck-response)))
  "Returns md5sum for a message object of type 'PathCheck-response"
  "b215c250b8749397d181c33e02960bd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathCheck-response>)))
  "Returns full string definition for message of type '<PathCheck-response>"
  (cl:format cl:nil "int32 cost~%nav_msgs/GridCells out_cells~%~%~%~%~%================================================================================~%MSG: nav_msgs/GridCells~%#an array of cells in a 2D grid~%Header header~%float32 cell_width~%float32 cell_height~%geometry_msgs/Point[] cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathCheck-response)))
  "Returns full string definition for message of type 'PathCheck-response"
  (cl:format cl:nil "int32 cost~%nav_msgs/GridCells out_cells~%~%~%~%~%================================================================================~%MSG: nav_msgs/GridCells~%#an array of cells in a 2D grid~%Header header~%float32 cell_width~%float32 cell_height~%geometry_msgs/Point[] cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathCheck-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'out_cells))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathCheck-response
    (cl:cons ':cost (cost msg))
    (cl:cons ':out_cells (out_cells msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathCheck)))
  'PathCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathCheck)))
  'PathCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathCheck)))
  "Returns string type for a service object of type '<PathCheck>"
  "trajectory_generation/PathCheck")