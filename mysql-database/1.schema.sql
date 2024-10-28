CREATE TABLE `departments` (
  `dept_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_code` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `IXU_dept_code` (`dept_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `dept_emp` (
  `dept_no` int(10) unsigned NOT NULL,
  `emp_no` int(10) unsigned NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`dept_no`,`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `dept_manager` (
  `emp_no` int(10) unsigned NOT NULL,
  `dept_no` int(10) unsigned NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`dept_no`,`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `emp_salaries` (
  `emp_no` int(10) unsigned NOT NULL,
  `salary` decimal(9,2) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `emp_titles` (
  `emp_no` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `employees` (
  `emp_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `birth_date` date NOT NULL,
  `first_name` varchar(63) NOT NULL,
  `last_name` varchar(63) NOT NULL,
  `gender` enum('F','M','O','X') NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB AUTO_INCREMENT=500000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `loc_emp` (
  `loc_no` int(10) unsigned NOT NULL,
  `emp_no` int(10) unsigned NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`loc_no`,`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

CREATE TABLE `locations` (
  `loc_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc_type` enum('HQ','RHQ','BRANCH','OFFICE','DIVISION') NOT NULL,
  `loc_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `postalcode` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`loc_no`),
  UNIQUE KEY `IXU_loc_name` (`loc_type`,`loc_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci

