; Auto-generated. Do not edit!


(cl:in-package trajectory_generation-srv)


;//! \htmlinclude TrajectoryGeneration-request.msg.html

(cl:defclass <TrajectoryGeneration-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fin
    :reader fin
    :initarg :fin
    :type cl:boolean
    :initform cl:nil)
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (params
    :reader params
    :initarg :params
    :type trajectory_generation-msg:path_params
    :initform (cl:make-instance 'trajectory_generation-msg:path_params)))
)

(cl:defclass TrajectoryGeneration-request (<TrajectoryGeneration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryGeneration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryGeneration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<TrajectoryGeneration-request> is deprecated: use trajectory_generation-srv:TrajectoryGeneration-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrajectoryGeneration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:header-val is deprecated.  Use trajectory_generation-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'fin-val :lambda-list '(m))
(cl:defmethod fin-val ((m <TrajectoryGeneration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:fin-val is deprecated.  Use trajectory_generation-srv:fin instead.")
  (fin m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <TrajectoryGeneration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:start-val is deprecated.  Use trajectory_generation-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <TrajectoryGeneration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:goal-val is deprecated.  Use trajectory_generation-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <TrajectoryGeneration-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:params-val is deprecated.  Use trajectory_generation-srv:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryGeneration-request>) ostream)
  "Serializes a message object of type '<TrajectoryGeneration-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fin) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryGeneration-request>) istream)
  "Deserializes a message object of type '<TrajectoryGeneration-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'fin) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryGeneration-request>)))
  "Returns string type for a service object of type '<TrajectoryGeneration-request>"
  "trajectory_generation/TrajectoryGenerationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryGeneration-request)))
  "Returns string type for a service object of type 'TrajectoryGeneration-request"
  "trajectory_generation/TrajectoryGenerationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryGeneration-request>)))
  "Returns md5sum for a message object of type '<TrajectoryGeneration-request>"
  "90353c7601ed12743e0f0864a9ba39ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryGeneration-request)))
  "Returns md5sum for a message object of type 'TrajectoryGeneration-request"
  "90353c7601ed12743e0f0864a9ba39ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryGeneration-request>)))
  "Returns full string definition for message of type '<TrajectoryGeneration-request>"
  (cl:format cl:nil "Header header~%bool fin~%geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%trajectory_generation/path_params params~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_generation/path_params~%Header header~%float32 k0~%float32 k1~%float32 kf~%float32 sf~%float32 v0~%float32 a0~%float32 vt~%float32 af~%float32 vf~%float32 dt~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryGeneration-request)))
  "Returns full string definition for message of type 'TrajectoryGeneration-request"
  (cl:format cl:nil "Header header~%bool fin~%geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%trajectory_generation/path_params params~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_generation/path_params~%Header header~%float32 k0~%float32 k1~%float32 kf~%float32 sf~%float32 v0~%float32 a0~%float32 vt~%float32 af~%float32 vf~%float32 dt~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryGeneration-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryGeneration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryGeneration-request
    (cl:cons ':header (header msg))
    (cl:cons ':fin (fin msg))
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':params (params msg))
))
;//! \htmlinclude TrajectoryGeneration-response.msg.html

(cl:defclass <TrajectoryGeneration-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (params
    :reader params
    :initarg :params
    :type trajectory_generation-msg:path_params
    :initform (cl:make-instance 'trajectory_generation-msg:path_params))
   (v_array
    :reader v_array
    :initarg :v_array
    :type trajectory_generation-msg:VelocityArray
    :initform (cl:make-instance 'trajectory_generation-msg:VelocityArray))
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryGeneration-response (<TrajectoryGeneration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryGeneration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryGeneration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<TrajectoryGeneration-response> is deprecated: use trajectory_generation-srv:TrajectoryGeneration-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <TrajectoryGeneration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:path-val is deprecated.  Use trajectory_generation-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <TrajectoryGeneration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:params-val is deprecated.  Use trajectory_generation-srv:params instead.")
  (params m))

(cl:ensure-generic-function 'v_array-val :lambda-list '(m))
(cl:defmethod v_array-val ((m <TrajectoryGeneration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:v_array-val is deprecated.  Use trajectory_generation-srv:v_array instead.")
  (v_array m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <TrajectoryGeneration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:tolerance-val is deprecated.  Use trajectory_generation-srv:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryGeneration-response>) ostream)
  "Serializes a message object of type '<TrajectoryGeneration-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v_array) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryGeneration-response>) istream)
  "Deserializes a message object of type '<TrajectoryGeneration-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v_array) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryGeneration-response>)))
  "Returns string type for a service object of type '<TrajectoryGeneration-response>"
  "trajectory_generation/TrajectoryGenerationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryGeneration-response)))
  "Returns string type for a service object of type 'TrajectoryGeneration-response"
  "trajectory_generation/TrajectoryGenerationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryGeneration-response>)))
  "Returns md5sum for a message object of type '<TrajectoryGeneration-response>"
  "90353c7601ed12743e0f0864a9ba39ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryGeneration-response)))
  "Returns md5sum for a message object of type 'TrajectoryGeneration-response"
  "90353c7601ed12743e0f0864a9ba39ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryGeneration-response>)))
  "Returns full string definition for message of type '<TrajectoryGeneration-response>"
  (cl:format cl:nil "nav_msgs/Path path~%trajectory_generation/path_params params~%trajectory_generation/VelocityArray v_array~%float32 tolerance~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_generation/path_params~%Header header~%float32 k0~%float32 k1~%float32 kf~%float32 sf~%float32 v0~%float32 a0~%float32 vt~%float32 af~%float32 vf~%float32 dt~%~%~%~%================================================================================~%MSG: trajectory_generation/VelocityArray~%Header header~%~%Velocity[] vel~%int64 id_num~%~%================================================================================~%MSG: trajectory_generation/Velocity~%Header header~%~%float32 op_linear~%float32 op_angular~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryGeneration-response)))
  "Returns full string definition for message of type 'TrajectoryGeneration-response"
  (cl:format cl:nil "nav_msgs/Path path~%trajectory_generation/path_params params~%trajectory_generation/VelocityArray v_array~%float32 tolerance~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: trajectory_generation/path_params~%Header header~%float32 k0~%float32 k1~%float32 kf~%float32 sf~%float32 v0~%float32 a0~%float32 vt~%float32 af~%float32 vf~%float32 dt~%~%~%~%================================================================================~%MSG: trajectory_generation/VelocityArray~%Header header~%~%Velocity[] vel~%int64 id_num~%~%================================================================================~%MSG: trajectory_generation/Velocity~%Header header~%~%float32 op_linear~%float32 op_angular~%int32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryGeneration-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v_array))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryGeneration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryGeneration-response
    (cl:cons ':path (path msg))
    (cl:cons ':params (params msg))
    (cl:cons ':v_array (v_array msg))
    (cl:cons ':tolerance (tolerance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrajectoryGeneration)))
  'TrajectoryGeneration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrajectoryGeneration)))
  'TrajectoryGeneration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryGeneration)))
  "Returns string type for a service object of type '<TrajectoryGeneration>"
  "trajectory_generation/TrajectoryGeneration")