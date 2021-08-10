[app/sources/401856528.Dockerfile]
digraph {
  "sha256:475b73492260dd6b34e1ac0cd229603b343af17e698650d77a9b287e3fbda8d4" [label="local://context" shape="ellipse"];
  "sha256:5ef241ff8ff86d46769114e7b9e737b3e8a35493c5b204e5b67cf65a72ed14f6" [label="docker-image://docker.io/studentenportal/base:2.7-1" shape="ellipse"];
  "sha256:f667bb0fcbdcd1c3d580e43e6264b00ab90a3685601f5bbb144126639e61b0e7" [label="/bin/sh -c groupadd -g $GID studentenportal" shape="box"];
  "sha256:8131864a6711f7c0062ffba7b4e2ee9db68fcb4c26db0eb36cd474e982ed0cd0" [label="/bin/sh -c useradd --home /home/studentenportal -u $UID -g $GID -M studentenportal" shape="box"];
  "sha256:7f01b7b76391f42cb5d9a4c0f36caaaed3a7661ab58a9b3b974a0550d21f2173" [label="copy{src=/requirements, dest=/tmp/requirements/}" shape="note"];
  "sha256:c62a3ce3e34590391baf38305d78a51d7f219c5a77dcc57475f150f9a5fc4564" [label="/bin/sh -c pip --quiet install -r /tmp/requirements/base.txt -r /tmp/requirements/production.txt && rm -r /tmp/requirements" shape="box"];
  "sha256:4483ba47ba3612195aa51075aa9d78552d310cc004eccc17295a6748e2609bc6" [label="/bin/sh -c mkdir -p /srv/www/studentenportal" shape="box"];
  "sha256:bbde1ea2b15bec22f8e6d0040788958884cfffbd53c04d790c8424b528056741" [label="mkdir{path=/srv/www/studentenportal}" shape="note"];
  "sha256:f1040b534805f85000f60f32633a80c1f7442c5d318a07a2669bc88decd70d9e" [label="/bin/sh -c mkdir media static" shape="box"];
  "sha256:fc2a43d4fb3f1e0a170f9b112533a916942719d8416b4a4a8daf2c03c33baabe" [label="copy{src=/LICENSE.txt, dest=/srv/www/studentenportal/},copy{src=/manage.py, dest=/srv/www/studentenportal/},copy{src=/setup.py, dest=/srv/www/studentenportal/},copy{src=/deploy/production/start.sh, dest=/srv/www/studentenportal/}" shape="note"];
  "sha256:064fafb1577d4cecdb7d5eba6fc7a6b94c348cc81d4ebb038bce1d8a5065621f" [label="copy{src=/apps, dest=/srv/www/studentenportal/apps/}" shape="note"];
  "sha256:3a8f3c5f94d621236ab012ef39ab891011bcb49528f1d401f432fafa4d660a85" [label="copy{src=/config, dest=/srv/www/studentenportal/config/}" shape="note"];
  "sha256:b39e5e38fa59c7347a6197dcce0acc8d6a7987261c3ebf178c84ca3435ae142d" [label="/bin/sh -c chown -R studentenportal:studentenportal /srv/www/studentenportal/" shape="box"];
  "sha256:3314fef0a6070b1b2a399c9041fd008cbe46ea2ef9d0c7a07eee11932c529c1e" [label="sha256:3314fef0a6070b1b2a399c9041fd008cbe46ea2ef9d0c7a07eee11932c529c1e" shape="plaintext"];
  "sha256:5ef241ff8ff86d46769114e7b9e737b3e8a35493c5b204e5b67cf65a72ed14f6" -> "sha256:f667bb0fcbdcd1c3d580e43e6264b00ab90a3685601f5bbb144126639e61b0e7" [label=""];
  "sha256:f667bb0fcbdcd1c3d580e43e6264b00ab90a3685601f5bbb144126639e61b0e7" -> "sha256:8131864a6711f7c0062ffba7b4e2ee9db68fcb4c26db0eb36cd474e982ed0cd0" [label=""];
  "sha256:8131864a6711f7c0062ffba7b4e2ee9db68fcb4c26db0eb36cd474e982ed0cd0" -> "sha256:7f01b7b76391f42cb5d9a4c0f36caaaed3a7661ab58a9b3b974a0550d21f2173" [label=""];
  "sha256:475b73492260dd6b34e1ac0cd229603b343af17e698650d77a9b287e3fbda8d4" -> "sha256:7f01b7b76391f42cb5d9a4c0f36caaaed3a7661ab58a9b3b974a0550d21f2173" [label=""];
  "sha256:7f01b7b76391f42cb5d9a4c0f36caaaed3a7661ab58a9b3b974a0550d21f2173" -> "sha256:c62a3ce3e34590391baf38305d78a51d7f219c5a77dcc57475f150f9a5fc4564" [label=""];
  "sha256:c62a3ce3e34590391baf38305d78a51d7f219c5a77dcc57475f150f9a5fc4564" -> "sha256:4483ba47ba3612195aa51075aa9d78552d310cc004eccc17295a6748e2609bc6" [label=""];
  "sha256:4483ba47ba3612195aa51075aa9d78552d310cc004eccc17295a6748e2609bc6" -> "sha256:bbde1ea2b15bec22f8e6d0040788958884cfffbd53c04d790c8424b528056741" [label=""];
  "sha256:bbde1ea2b15bec22f8e6d0040788958884cfffbd53c04d790c8424b528056741" -> "sha256:f1040b534805f85000f60f32633a80c1f7442c5d318a07a2669bc88decd70d9e" [label=""];
  "sha256:f1040b534805f85000f60f32633a80c1f7442c5d318a07a2669bc88decd70d9e" -> "sha256:fc2a43d4fb3f1e0a170f9b112533a916942719d8416b4a4a8daf2c03c33baabe" [label=""];
  "sha256:475b73492260dd6b34e1ac0cd229603b343af17e698650d77a9b287e3fbda8d4" -> "sha256:fc2a43d4fb3f1e0a170f9b112533a916942719d8416b4a4a8daf2c03c33baabe" [label=""];
  "sha256:fc2a43d4fb3f1e0a170f9b112533a916942719d8416b4a4a8daf2c03c33baabe" -> "sha256:064fafb1577d4cecdb7d5eba6fc7a6b94c348cc81d4ebb038bce1d8a5065621f" [label=""];
  "sha256:475b73492260dd6b34e1ac0cd229603b343af17e698650d77a9b287e3fbda8d4" -> "sha256:064fafb1577d4cecdb7d5eba6fc7a6b94c348cc81d4ebb038bce1d8a5065621f" [label=""];
  "sha256:064fafb1577d4cecdb7d5eba6fc7a6b94c348cc81d4ebb038bce1d8a5065621f" -> "sha256:3a8f3c5f94d621236ab012ef39ab891011bcb49528f1d401f432fafa4d660a85" [label=""];
  "sha256:475b73492260dd6b34e1ac0cd229603b343af17e698650d77a9b287e3fbda8d4" -> "sha256:3a8f3c5f94d621236ab012ef39ab891011bcb49528f1d401f432fafa4d660a85" [label=""];
  "sha256:3a8f3c5f94d621236ab012ef39ab891011bcb49528f1d401f432fafa4d660a85" -> "sha256:b39e5e38fa59c7347a6197dcce0acc8d6a7987261c3ebf178c84ca3435ae142d" [label=""];
  "sha256:b39e5e38fa59c7347a6197dcce0acc8d6a7987261c3ebf178c84ca3435ae142d" -> "sha256:3314fef0a6070b1b2a399c9041fd008cbe46ea2ef9d0c7a07eee11932c529c1e" [label=""];
}

