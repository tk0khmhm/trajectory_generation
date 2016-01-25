; Auto-generated. Do not edit!


(cl:in-package trajectory_generation-srv)


;//! \htmlinclude TableLookUP-request.msg.html

(cl:defclass <TableLookUP-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TableLookUP-request (<TableLookUP-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TableLookUP-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TableLookUP-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<TableLookUP-request> is deprecated: use trajectory_generation-srv:TableLookUP-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <TableLookUP-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:goal-val is deprecated.  Use trajectory_generation-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TableLookUP-request>) ostream)
  "Serializes a message object of type '<TableLookUP-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TableLookUP-request>) istream)
  "Deserializes a message object of type '<TableLookUP-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TableLookUP-request>)))
  "Returns string type for a service object of type '<TableLookUP-request>"
  "trajectory_generation/TableLookUPRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TableLookUP-request)))
  "Returns string type for a service object of type 'TableLookUP-request"
  "trajectory_generation/TableLookUPRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TableLookUP-request>)))
  "Returns md5sum for a message object of type '<TableLookUP-request>"
  "e59b537a5dc79a8445a0e0ad3a15d115")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TableLookUP-request)))
  "Returns md5sum for a message object of type 'TableLookUP-request"
  "e59b537a5dc79a8445a0e0ad3a15d115")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TableLookUP-request>)))
  "Returns full string definition for message of type '<TableLookUP-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TableLookUP-request)))
  "Returns full string definition for message of type 'TableLookUP-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TableLookUP-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TableLookUP-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TableLookUP-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude TableLookUP-response.msg.html

(cl:defclass <TableLookUP-response> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type trajectory_generation-msg:path_params
    :initform (cl:make-instance 'trajectory_generation-msg:path_params))
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TableLookUP-response (<TableLookUP-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TableLookUP-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TableLookUP-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trajectory_generation-srv:<TableLookUP-response> is deprecated: use trajectory_generation-srv:TableLookUP-response instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <TableLookUP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:params-val is deprecated.  Use trajectory_generation-srv:params instead.")
  (params m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <TableLookUP-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trajectory_generation-srv:flag-val is deprecated.  Use trajectory_generation-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TableLookUP-response>) ostream)
  "Serializes a message object of type '<TableLookUP-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TableLookUP-response>) istream)
  "Deserializes a message object of type '<TableLookUP-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TableLookUP-response>)))
  "Returns string type for a service object of type '<TableLookUP-response>"
  "trajectory_generation/TableLookUPResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TableLookUP-response)))
  "Returns string type for a service object of type 'TableLookUP-response"
  "trajectory_generation/TableLookUPResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TableLookUP-response>)))
  "Returns md5sum for a message object of type '<TableLookUP-response>"
  "e59b537a5dc79a8445a0e0ad3a15d115")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TableLookUP-response)))
  "Returns md5sum for a message object of type 'TableLookUP-response"
  "e59b537a5dc79a8445a0e0ad3a15d115")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TableLookUP-response>)))
  "Returns full string definition for message of type '<TableLookUP-response>"
  (cl:format cl:nil "trajectory_generation/path_params params~%int8 flag~%~%~%================================================================================~%MSG: trajectory_generation/path_params~%Header header~%float32 k0~%float32 k1~%float32 kf~%float32 sf~%float32 v0~%float32 a0~%float32 vt~%float32 af~%float32 vf~%float32 dt~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TableLookUP-response)))
  "Returns full string definition for message of type 'TableLookUP-response"
  (cl:format cl:nil "trajectory_generation/path_params params~%int8 flag~%~%~%================================================================================~%MSG: trajectory_generation/path_params~%Header header~%float32 k0~%float32 k1~%float32 kf~%float32 sf~%float32 v0~%float32 a0~%float32 vt~%float32 af~%float32 vf~%float32 dt~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TableLookUP-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TableLookUP-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TableLookUP-response
    (cl:cons ':params (params msg))
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TableLookUP)))
  'TableLookUP-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TableLookUP)))
  'TableLookUP-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TableLookUP)))
  "Returns string type for a service object of type '<TableLookUP>"
  "trajectory_generation/TableLookUP")