[app/sources/276479610.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c8e3396f79f5fc57a354161f30b3724d9d4e6ce78fd56aa6803f0e20fcf09ec6" [label="/bin/sh -c sh -c 'echo \"deb http://packages.ros.org/ros/ubuntu xenial main\" > /etc/apt/sources.list.d/ros-latest.list' &&   apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 &&   apt-get update &&   apt-get install -y     python-pip     ros-kinetic-desktop-full &&   apt-get clean &&   rm -rf           /tmp/*           /var/lib/apt/lists/*           /var/tmp/*" shape="box"];
  "sha256:6930f91f64d0ca1afb1fde5533cb164334592e367150e532699edd9fa4e7ce75" [label="local://context" shape="ellipse"];
  "sha256:2b25e1c56b190d673a12026a1bec02312d77a111d399dee1cf5c1c0fcaee4c04" [label="copy{src=/dbw_mkz/*, dest=/tmp/}" shape="note"];
  "sha256:5972b05d84b69aaa5c595444ce6b5354cf4b728d18699ad3efca9c7b4a54080f" [label="/bin/sh -c cd /tmp && ./sdk_update.bash &&   rm /tmp/sdk_update.bash /tmp/sdk_install.bash" shape="box"];
  "sha256:c0f6070823a8592936e5355b440efc1db7168ec0949c42539b229945eb3c2dec" [label="/bin/sh -c rosdep init" shape="box"];
  "sha256:51b6dbac7ba0b7c438b21c88175edcd78993ceb4b3ba9201ed20f2f812e241f8" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:db5d714d97d08ec5e5248fbe8dea56cbc42ac1c5b66e4683f807e6b6351e9c54" [label="/bin/sh -c pip install -r /tmp/requirements.txt &&   rm /tmp/requirements.txt" shape="box"];
  "sha256:28854abe9152bc35f1a2861960c33a129e909d468ef94b7c6091e9fdf97a2f95" [label="/bin/sh -c groupadd -g $C_GID udacity" shape="box"];
  "sha256:8e63023eeed77a33c8d373456b3f34978ad3c9874bac6a71600b2c5e09cf1c1d" [label="/bin/sh -c useradd --create-home -u $C_UID -g $C_GID udacity" shape="box"];
  "sha256:1ef9c9dd090ac1e50a5b20dc148c6ca61b5eb472b7ce26469166cb663e517c5f" [label="copy{src=/bashrc_udacity, dest=/home/udacity/.bashrc_udacity}" shape="note"];
  "sha256:1ab468c603eea91330bff81bc86cb848189a35ba126bdd623b672f0b7b35213a" [label="/bin/sh -c echo \"source /home/udacity/.bashrc_udacity\" >> /home/udacity/.bashrc &&   echo \"source /opt/ros/kinetic/setup.bash\" >> /home/udacity/.bashrc" shape="box"];
  "sha256:9bdb83ba964c1ba3474891888e98c38a7922b29bac540888d181a828179444c1" [label="/bin/sh -c chown udacity:udacity /udacity" shape="box"];
  "sha256:745950e2459779929fa5f00fde1081abc353e2ec51eece9febe5e460e6152368" [label="/bin/sh -c rosdep update" shape="box"];
  "sha256:a594fcdc68617708c29b200f03b509a5bb9044cdc485523efecaee10b6a0d49c" [label="mkdir{path=/udacity}" shape="note"];
  "sha256:bfd9b2099a4e07fdbbc51bd06b33a0a556798c508895f21e8d2b3de32bba2025" [label="sha256:bfd9b2099a4e07fdbbc51bd06b33a0a556798c508895f21e8d2b3de32bba2025" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c8e3396f79f5fc57a354161f30b3724d9d4e6ce78fd56aa6803f0e20fcf09ec6" [label=""];
  "sha256:c8e3396f79f5fc57a354161f30b3724d9d4e6ce78fd56aa6803f0e20fcf09ec6" -> "sha256:2b25e1c56b190d673a12026a1bec02312d77a111d399dee1cf5c1c0fcaee4c04" [label=""];
  "sha256:6930f91f64d0ca1afb1fde5533cb164334592e367150e532699edd9fa4e7ce75" -> "sha256:2b25e1c56b190d673a12026a1bec02312d77a111d399dee1cf5c1c0fcaee4c04" [label=""];
  "sha256:2b25e1c56b190d673a12026a1bec02312d77a111d399dee1cf5c1c0fcaee4c04" -> "sha256:5972b05d84b69aaa5c595444ce6b5354cf4b728d18699ad3efca9c7b4a54080f" [label=""];
  "sha256:5972b05d84b69aaa5c595444ce6b5354cf4b728d18699ad3efca9c7b4a54080f" -> "sha256:c0f6070823a8592936e5355b440efc1db7168ec0949c42539b229945eb3c2dec" [label=""];
  "sha256:c0f6070823a8592936e5355b440efc1db7168ec0949c42539b229945eb3c2dec" -> "sha256:51b6dbac7ba0b7c438b21c88175edcd78993ceb4b3ba9201ed20f2f812e241f8" [label=""];
  "sha256:6930f91f64d0ca1afb1fde5533cb164334592e367150e532699edd9fa4e7ce75" -> "sha256:51b6dbac7ba0b7c438b21c88175edcd78993ceb4b3ba9201ed20f2f812e241f8" [label=""];
  "sha256:51b6dbac7ba0b7c438b21c88175edcd78993ceb4b3ba9201ed20f2f812e241f8" -> "sha256:db5d714d97d08ec5e5248fbe8dea56cbc42ac1c5b66e4683f807e6b6351e9c54" [label=""];
  "sha256:db5d714d97d08ec5e5248fbe8dea56cbc42ac1c5b66e4683f807e6b6351e9c54" -> "sha256:28854abe9152bc35f1a2861960c33a129e909d468ef94b7c6091e9fdf97a2f95" [label=""];
  "sha256:28854abe9152bc35f1a2861960c33a129e909d468ef94b7c6091e9fdf97a2f95" -> "sha256:8e63023eeed77a33c8d373456b3f34978ad3c9874bac6a71600b2c5e09cf1c1d" [label=""];
  "sha256:8e63023eeed77a33c8d373456b3f34978ad3c9874bac6a71600b2c5e09cf1c1d" -> "sha256:1ef9c9dd090ac1e50a5b20dc148c6ca61b5eb472b7ce26469166cb663e517c5f" [label=""];
  "sha256:6930f91f64d0ca1afb1fde5533cb164334592e367150e532699edd9fa4e7ce75" -> "sha256:1ef9c9dd090ac1e50a5b20dc148c6ca61b5eb472b7ce26469166cb663e517c5f" [label=""];
  "sha256:1ef9c9dd090ac1e50a5b20dc148c6ca61b5eb472b7ce26469166cb663e517c5f" -> "sha256:1ab468c603eea91330bff81bc86cb848189a35ba126bdd623b672f0b7b35213a" [label=""];
  "sha256:1ab468c603eea91330bff81bc86cb848189a35ba126bdd623b672f0b7b35213a" -> "sha256:9bdb83ba964c1ba3474891888e98c38a7922b29bac540888d181a828179444c1" [label=""];
  "sha256:9bdb83ba964c1ba3474891888e98c38a7922b29bac540888d181a828179444c1" -> "sha256:745950e2459779929fa5f00fde1081abc353e2ec51eece9febe5e460e6152368" [label=""];
  "sha256:745950e2459779929fa5f00fde1081abc353e2ec51eece9febe5e460e6152368" -> "sha256:a594fcdc68617708c29b200f03b509a5bb9044cdc485523efecaee10b6a0d49c" [label=""];
  "sha256:a594fcdc68617708c29b200f03b509a5bb9044cdc485523efecaee10b6a0d49c" -> "sha256:bfd9b2099a4e07fdbbc51bd06b33a0a556798c508895f21e8d2b3de32bba2025" [label=""];
}

