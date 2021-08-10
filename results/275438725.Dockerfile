[app/sources/275438725.Dockerfile]
digraph {
  "sha256:b5a1a3022cda083b0e2c8b360a28be7bfbebefbe20084eddbb5669ab0bee9302" [label="docker-image://docker.io/nickistre/centos-lamp:latest" shape="ellipse"];
  "sha256:c7c0438a060a09a664054f8f5b6a08a94c647efbcf9d0206790d3edfdbeeff3c" [label="local://context" shape="ellipse"];
  "sha256:88ffc56d75bc3772d4cd5a6028a0b612810eab767da3d5f72464a2654b958b85" [label="copy{src=/src, dest=/var/www/html/}" shape="note"];
  "sha256:70a9f865e1f040a68346ad244793ed469f1d9a88e5fbddc084f9c76b78fc6e85" [label="/bin/sh -c /etc/init.d/mysqld start     && mysqladmin -uroot password 'ctfhub'     && mysql -e \"CREATE DATABASE ctfhub DEFAULT CHARACTER SET utf8;\" -uroot -pctfhub     && mysql -e \"use ctfhub;source /var/www/html/ctfhub.sql;\" -uroot -pctfhub     && rm /var/www/html/ctfhub.sql     && rm /var/www/html/phpinfo.php     && chmod -R 655 /var/www/html/" shape="box"];
  "sha256:57d26e6193b87b096e2ac1b6ae06ca4d1150c68d882c51bd7f15488e6caba8a5" [label="sha256:57d26e6193b87b096e2ac1b6ae06ca4d1150c68d882c51bd7f15488e6caba8a5" shape="plaintext"];
  "sha256:b5a1a3022cda083b0e2c8b360a28be7bfbebefbe20084eddbb5669ab0bee9302" -> "sha256:88ffc56d75bc3772d4cd5a6028a0b612810eab767da3d5f72464a2654b958b85" [label=""];
  "sha256:c7c0438a060a09a664054f8f5b6a08a94c647efbcf9d0206790d3edfdbeeff3c" -> "sha256:88ffc56d75bc3772d4cd5a6028a0b612810eab767da3d5f72464a2654b958b85" [label=""];
  "sha256:88ffc56d75bc3772d4cd5a6028a0b612810eab767da3d5f72464a2654b958b85" -> "sha256:70a9f865e1f040a68346ad244793ed469f1d9a88e5fbddc084f9c76b78fc6e85" [label=""];
  "sha256:70a9f865e1f040a68346ad244793ed469f1d9a88e5fbddc084f9c76b78fc6e85" -> "sha256:57d26e6193b87b096e2ac1b6ae06ca4d1150c68d882c51bd7f15488e6caba8a5" [label=""];
}

