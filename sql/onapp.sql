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
  min_disk_size INT,
  min_memory_size INT,
  operating_system TEXT NOT NULL,
  operating_system_distro TEXT NOT NULL,
  FOREIGN KEY(location_id) REFERENCES location(id)
);

DROP TABLE IF EXISTS server;
CREATE TABLE server (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  onapp_id TEXT NOT NULL,
  template_id INT NOT NULL,
  label TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'building',
  cpus INT NOT NULL,
  disk_size INT NOT NULL,
  memory_size INT NOT NULL,
  ipv4_address TEXT NOT NULL,
  initial_root_password TEXT NOT NULL,
  FOREIGN KEY(template_id) REFERENCES template(id)
);

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  email TEXT NOT NULL
);

DROP TABLE IF EXISTS user_server_link;
CREATE TABLE user_server_link (
  user_id INT NOT NULL,
  server_id INT NOT NULL,
  UNIQUE(user_id, server_id),
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(server_id) REFERENCES server(id)
);
