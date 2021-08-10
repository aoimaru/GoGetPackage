[app/sources/261789034.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:a0c7d9d84589526d55efc4d08b584213105b792749f06546680d95ec940bdaf5" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y wget lsb-release curl net-tools gnupg2 systemd python" shape="box"];
  "sha256:38eae48236b82a5bf71ca3ba42b0d0dca3c70718f18e9b64e7ceddd7eb6c5919" [label="/bin/sh -c wget -O - http://ppa.moosefs.com/moosefs.key | apt-key add -" shape="box"];
  "sha256:f9c7b0cb37054d8f3286be63352723de1b06ecf9876caab1e3cba9e6c17e1ebe" [label="/bin/sh -c echo \"deb http://ppa.moosefs.com/moosefs-3/apt/$(awk -F= '$1==\"ID\" { print $2 ;}' /etc/os-release)/$(lsb_release -sc) $(lsb_release -sc) main\" > /etc/apt/sources.list.d/moosefs.list" shape="box"];
  "sha256:165edebea43c13f15d406fe0e86358210723d0bc6d2e4e0f72b6e8490bdc0743" [label="/bin/sh -c apt-get update && apt-get install -y moosefs-master moosefs-cgi moosefs-cgiserv" shape="box"];
  "sha256:6445f75aca716336bf457e486eb79cc998b92fd1cc0d874ab0a52743c3d70ca4" [label="/bin/sh -c systemctl enable moosefs-cgiserv" shape="box"];
  "sha256:6b374cf25598cda394e39d3230980cae1ac6d9419d7f4eadb15e0d0418975af3" [label="/bin/sh -c systemctl enable moosefs-master" shape="box"];
  "sha256:18c68e3ec2ded1846b59fe8992dc3601fd4292db4070e1f69a3c33f361bc16c9" [label="local://context" shape="ellipse"];
  "sha256:215db030825b07d186ec337211fff4576d9d9b56e7c62abf413b9fbf940f3ecc" [label="copy{src=/start.sh, dest=/home/start.sh}" shape="note"];
  "sha256:344b028f1b9147e2eb396c681ddb7ea84630951fdf715aa574fd7bda9edde70d" [label="/bin/sh -c chown root:root /home/start.sh" shape="box"];
  "sha256:f6f285c13fc66925efb335a0dbf8ee66b1c1441a94266fad5ee45eeee1150766" [label="/bin/sh -c chmod 700 /home/start.sh" shape="box"];
  "sha256:1cf7f40c87f1fda7bbb298d32f5ffd3fda2a7f97a36d3989d03d10a47a184ac5" [label="sha256:1cf7f40c87f1fda7bbb298d32f5ffd3fda2a7f97a36d3989d03d10a47a184ac5" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:a0c7d9d84589526d55efc4d08b584213105b792749f06546680d95ec940bdaf5" [label=""];
  "sha256:a0c7d9d84589526d55efc4d08b584213105b792749f06546680d95ec940bdaf5" -> "sha256:38eae48236b82a5bf71ca3ba42b0d0dca3c70718f18e9b64e7ceddd7eb6c5919" [label=""];
  "sha256:38eae48236b82a5bf71ca3ba42b0d0dca3c70718f18e9b64e7ceddd7eb6c5919" -> "sha256:f9c7b0cb37054d8f3286be63352723de1b06ecf9876caab1e3cba9e6c17e1ebe" [label=""];
  "sha256:f9c7b0cb37054d8f3286be63352723de1b06ecf9876caab1e3cba9e6c17e1ebe" -> "sha256:165edebea43c13f15d406fe0e86358210723d0bc6d2e4e0f72b6e8490bdc0743" [label=""];
  "sha256:165edebea43c13f15d406fe0e86358210723d0bc6d2e4e0f72b6e8490bdc0743" -> "sha256:6445f75aca716336bf457e486eb79cc998b92fd1cc0d874ab0a52743c3d70ca4" [label=""];
  "sha256:6445f75aca716336bf457e486eb79cc998b92fd1cc0d874ab0a52743c3d70ca4" -> "sha256:6b374cf25598cda394e39d3230980cae1ac6d9419d7f4eadb15e0d0418975af3" [label=""];
  "sha256:6b374cf25598cda394e39d3230980cae1ac6d9419d7f4eadb15e0d0418975af3" -> "sha256:215db030825b07d186ec337211fff4576d9d9b56e7c62abf413b9fbf940f3ecc" [label=""];
  "sha256:18c68e3ec2ded1846b59fe8992dc3601fd4292db4070e1f69a3c33f361bc16c9" -> "sha256:215db030825b07d186ec337211fff4576d9d9b56e7c62abf413b9fbf940f3ecc" [label=""];
  "sha256:215db030825b07d186ec337211fff4576d9d9b56e7c62abf413b9fbf940f3ecc" -> "sha256:344b028f1b9147e2eb396c681ddb7ea84630951fdf715aa574fd7bda9edde70d" [label=""];
  "sha256:344b028f1b9147e2eb396c681ddb7ea84630951fdf715aa574fd7bda9edde70d" -> "sha256:f6f285c13fc66925efb335a0dbf8ee66b1c1441a94266fad5ee45eeee1150766" [label=""];
  "sha256:f6f285c13fc66925efb335a0dbf8ee66b1c1441a94266fad5ee45eeee1150766" -> "sha256:1cf7f40c87f1fda7bbb298d32f5ffd3fda2a7f97a36d3989d03d10a47a184ac5" [label=""];
}

