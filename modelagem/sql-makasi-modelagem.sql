CREATE TABLE `project` (
  `project_id` INT PRIMARY KEY AUTO_INCREMENT,
  `description` VARCHAR(100)
);

CREATE TABLE `data_tasks` (
  `id_tasks` INT PRIMARY KEY AUTO_INCREMENT,
  `project_id` INT,
  `created` DATE,
  `status_changed` DATE,
  `task_groups` VARCHAR(50),
  FOREIGN KEY (`project_id`) REFERENCES `project`(`project_id`)
);

CREATE TABLE `data_forms` (
  `id_forms` INT PRIMARY KEY AUTO_INCREMENT,
  `project_id` INT,
  `created` DATE,
  `status_changed` DATE,
  `forms_group` VARCHAR(50),
  FOREIGN KEY (`project_id`) REFERENCES `project`(`project_id`)
);
