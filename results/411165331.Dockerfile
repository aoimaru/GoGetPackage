[app/sources/411165331.Dockerfile]
digraph {
  "sha256:a72ce5a3370e17aa31a31b0cbab6f5784adb66207a4be0c7ca344f34f3ab5ceb" [label="docker-image://docker.io/jprjr/centos-php-fpm:latest" shape="ellipse"];
  "sha256:370171fad736e98ad1ae10a7691fb9e06df1336e16e7485ecc403fd096c7c6f7" [label="/bin/sh -c yum -y install rsync tar" shape="box"];
  "sha256:ead0b7237578e48367c0d597a66a643643e2510c39dd6fcb6136289688104c26" [label="/bin/sh -c sed -i '/^file_uploads/c file_uploads = On' /etc/php.ini" shape="box"];
  "sha256:22d24436770f82551009f9064ca1acb797523b8ebf7fd7c429a71bcf6c45607a" [label="/bin/sh -c sed -i '/open_basedir/c open_basedir = /usr/share/webapps/wordpress/:/var/lib/wordpress/:/etc/wordpress/:/tmp/' /etc/php.ini" shape="box"];
  "sha256:875a843ebf2d001113214eae98274a8a805e528573fe16bb90882efd9b0a1f53" [label="/bin/sh -c mkdir -p /usr/share/webapps &&     mkdir -p /var/lib/wordpress &&     mkdir -p /etc/wordpress &&     mkdir -p /opt/wp &&     cd /usr/share/webapps &&     curl -R -L     \"http://wordpress.org/wordpress-3.9.1.tar.gz\"     | tar xz  &&     mv /usr/share/webapps/wordpress/wp-content /opt/wp/wp-content &&     mv /usr/share/webapps/wordpress/wp-config-sample.php /opt/wp/wp-config.php &&     ln -sf /var/lib/wordpress /usr/share/webapps/wordpress/wp-content &&     ln -sf /etc/wordpress/wp-config.php /usr/share/webapps/wordpress/wp-config.php &&     chown -R apache:apache /opt/wp &&     chown -R apache:apache /var/lib/wordpress &&     chown -R apache:apache /etc/wordpress &&     chown -R apache:apache /usr/share/webapps" shape="box"];
  "sha256:fcb54e7bc242c949b3b6bb924932ba5d23dae82577b0effe21691925da57177e" [label="local://context" shape="ellipse"];
  "sha256:3efd1f75580692d2f2db3fce5076e7e89d296247a21a85cfd01ece0270789624" [label="copy{src=/init_data_folder.sh, dest=/opt/init_data_folder.sh}" shape="note"];
  "sha256:08e517d84c3546a528b558f9d7fc573da062db415f70d5a393f2a5f6e4d40b4c" [label="copy{src=/init_conf_folder.sh, dest=/opt/init_conf_folder.sh}" shape="note"];
  "sha256:9c7f3257a5499d199cf18ec43bfd069d65a48321f3f0f2adac12f847525bd6e1" [label="copy{src=/init_folders.sh, dest=/opt/init_folders.sh}" shape="note"];
  "sha256:30adff3563a7d6b03fffd0ae2c49a715200103d8c833bb812363c2cc8debabf4" [label="/bin/sh -c /opt/init_folders.sh" shape="box"];
  "sha256:d1d927d49b64d1527ae3667001e05a91a0c5b4132e9cf2076900c3f2d6aebdbf" [label="sha256:d1d927d49b64d1527ae3667001e05a91a0c5b4132e9cf2076900c3f2d6aebdbf" shape="plaintext"];
  "sha256:a72ce5a3370e17aa31a31b0cbab6f5784adb66207a4be0c7ca344f34f3ab5ceb" -> "sha256:370171fad736e98ad1ae10a7691fb9e06df1336e16e7485ecc403fd096c7c6f7" [label=""];
  "sha256:370171fad736e98ad1ae10a7691fb9e06df1336e16e7485ecc403fd096c7c6f7" -> "sha256:ead0b7237578e48367c0d597a66a643643e2510c39dd6fcb6136289688104c26" [label=""];
  "sha256:ead0b7237578e48367c0d597a66a643643e2510c39dd6fcb6136289688104c26" -> "sha256:22d24436770f82551009f9064ca1acb797523b8ebf7fd7c429a71bcf6c45607a" [label=""];
  "sha256:22d24436770f82551009f9064ca1acb797523b8ebf7fd7c429a71bcf6c45607a" -> "sha256:875a843ebf2d001113214eae98274a8a805e528573fe16bb90882efd9b0a1f53" [label=""];
  "sha256:875a843ebf2d001113214eae98274a8a805e528573fe16bb90882efd9b0a1f53" -> "sha256:3efd1f75580692d2f2db3fce5076e7e89d296247a21a85cfd01ece0270789624" [label=""];
  "sha256:fcb54e7bc242c949b3b6bb924932ba5d23dae82577b0effe21691925da57177e" -> "sha256:3efd1f75580692d2f2db3fce5076e7e89d296247a21a85cfd01ece0270789624" [label=""];
  "sha256:3efd1f75580692d2f2db3fce5076e7e89d296247a21a85cfd01ece0270789624" -> "sha256:08e517d84c3546a528b558f9d7fc573da062db415f70d5a393f2a5f6e4d40b4c" [label=""];
  "sha256:fcb54e7bc242c949b3b6bb924932ba5d23dae82577b0effe21691925da57177e" -> "sha256:08e517d84c3546a528b558f9d7fc573da062db415f70d5a393f2a5f6e4d40b4c" [label=""];
  "sha256:08e517d84c3546a528b558f9d7fc573da062db415f70d5a393f2a5f6e4d40b4c" -> "sha256:9c7f3257a5499d199cf18ec43bfd069d65a48321f3f0f2adac12f847525bd6e1" [label=""];
  "sha256:fcb54e7bc242c949b3b6bb924932ba5d23dae82577b0effe21691925da57177e" -> "sha256:9c7f3257a5499d199cf18ec43bfd069d65a48321f3f0f2adac12f847525bd6e1" [label=""];
  "sha256:9c7f3257a5499d199cf18ec43bfd069d65a48321f3f0f2adac12f847525bd6e1" -> "sha256:30adff3563a7d6b03fffd0ae2c49a715200103d8c833bb812363c2cc8debabf4" [label=""];
  "sha256:30adff3563a7d6b03fffd0ae2c49a715200103d8c833bb812363c2cc8debabf4" -> "sha256:d1d927d49b64d1527ae3667001e05a91a0c5b4132e9cf2076900c3f2d6aebdbf" [label=""];
}

