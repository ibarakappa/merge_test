CREATE TABLE IF NOT EXISTS `course` (
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_week` varchar(45) NOT NULL,
  `course_start_time` int NOT NULL,
  `course_end_time` int NOT NULL,
  `course_credit` int NOT NULL,
  PRIMARY KEY (`course_code`)
);

CREATE TABLE IF NOT EXISTS `student_course` (
  `student_number` int NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(20) DEFAULT NULL,
  `student_credit` int DEFAULT NULL,
  PRIMARY KEY (`student_number`,`course_code`),
  KEY `course_code_idx` (`course_code`),
  CONSTRAINT `course_code` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  CONSTRAINT `student_number` FOREIGN KEY (`student_number`) REFERENCES `student_info` (`number`)
);

CREATE TABLE IF NOT EXISTS `student_info` (
  `number` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `credit` int DEFAULT '0',
  PRIMARY KEY (`number`)
);
