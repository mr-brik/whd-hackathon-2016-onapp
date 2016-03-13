DROP TABLE IF EXISTS location;
CREATE TABLE location (
  id INT PRIMARY KEY,
  label TEXT NOT NULL,
  hypervisor_group_id INT NOT NULL UNIQUE
);

DROP TABLE IF EXISTS template;
CREATE TABLE template (
  id INT PRIMARY KEY,
  label TEXT NOT NULL,
  location_id INT NOT NULL,
  onapp_id INT NOT NULL UNIQUE,
  min_disk_size INT NOT NULL,
  min_memory_size INT NOT NULL,
  operating_system TEXT NOT NULL,
  operating_system_distro TEXT NOT NULL,
  FOREIGN KEY(location_id) REFERENCES location(id)
);

DROP TABLE IF EXISTS server;
CREATE TABLE server (
  id INT PRIMARY KEY,
  template_id INT NOT NULL,
  label TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'building',
  FOREIGN KEY(template_id) REFERENCES template(id)
);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  id INT PRIMARY KEY,
  email TEXT NOT NULL UNIQUE
);

DROP TABLE IF EXISTS user_server_link;
CREATE TABLE user_server_link (
  id INT PRIMARY KEY,
  user_id INT NOT NULL,
  server_id INT NOT NULL,
  UNIQUE(user_id, server_id),
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(server_id) REFERENCES server(id)
);
