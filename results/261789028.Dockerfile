[app/sources/261789028.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:449b7b791e760094bb61fc00e14ac5083004608ade9b24e74822312a4e44867d" [label="/bin/sh -c apt-get update && apt-get upgrade -y && apt-get install -y wget lsb-release curl fuse libfuse2  net-tools gnupg2 systemd tree" shape="box"];
  "sha256:e097bd18b376de8ac18868f886531f6edcbd769dd4fb3625f4a1a8fb820e3822" [label="/bin/sh -c wget -O - http://ppa.moosefs.com/moosefs.key | apt-key add -" shape="box"];
  "sha256:3d8f4bf17f8f4432ccd23ad24d5a6ea27a4a930d2b4a22c07d24295443b4dc3f" [label="/bin/sh -c echo \"deb http://ppa.moosefs.com/moosefs-3/apt/$(awk -F= '$1==\"ID\" { print $2 ;}' /etc/os-release)/$(lsb_release -sc) $(lsb_release -sc) main\" > /etc/apt/sources.list.d/moosefs.list" shape="box"];
  "sha256:5d1cac64f0bb43e0f1237bb448cdeb51cde0d2462c4b65546b699ccd2b1e6d90" [label="/bin/sh -c apt-get update && apt-get install -y moosefs-chunkserver moosefs-client" shape="box"];
  "sha256:86046fc9f9231c3ab01d3b953e551699fa01977d58e59bf6be935a57480af399" [label="local://context" shape="ellipse"];
  "sha256:fa94174f8d3100fdb4eec468dd24e530ecf858f068fd5de1f7a3e59c375dce78" [label="copy{src=/start-chunkserver-client.sh, dest=/home/start-chunkserver-client.sh}" shape="note"];
  "sha256:9de4d73694cba7576aa047105b5d4708b45876e63e6ce2189ea363e23552bacc" [label="/bin/sh -c chown root:root /home/start-chunkserver-client.sh" shape="box"];
  "sha256:010cae924f38e64fa175826e3d99c49a0e7740ce671c741d7e49bf0b86e76695" [label="/bin/sh -c chmod 700 /home/start-chunkserver-client.sh" shape="box"];
  "sha256:dd60514756d492a620fd178aeb576287bf1798c95ee00c01c52f447720c3a9e5" [label="sha256:dd60514756d492a620fd178aeb576287bf1798c95ee00c01c52f447720c3a9e5" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:449b7b791e760094bb61fc00e14ac5083004608ade9b24e74822312a4e44867d" [label=""];
  "sha256:449b7b791e760094bb61fc00e14ac5083004608ade9b24e74822312a4e44867d" -> "sha256:e097bd18b376de8ac18868f886531f6edcbd769dd4fb3625f4a1a8fb820e3822" [label=""];
  "sha256:e097bd18b376de8ac18868f886531f6edcbd769dd4fb3625f4a1a8fb820e3822" -> "sha256:3d8f4bf17f8f4432ccd23ad24d5a6ea27a4a930d2b4a22c07d24295443b4dc3f" [label=""];
  "sha256:3d8f4bf17f8f4432ccd23ad24d5a6ea27a4a930d2b4a22c07d24295443b4dc3f" -> "sha256:5d1cac64f0bb43e0f1237bb448cdeb51cde0d2462c4b65546b699ccd2b1e6d90" [label=""];
  "sha256:5d1cac64f0bb43e0f1237bb448cdeb51cde0d2462c4b65546b699ccd2b1e6d90" -> "sha256:fa94174f8d3100fdb4eec468dd24e530ecf858f068fd5de1f7a3e59c375dce78" [label=""];
  "sha256:86046fc9f9231c3ab01d3b953e551699fa01977d58e59bf6be935a57480af399" -> "sha256:fa94174f8d3100fdb4eec468dd24e530ecf858f068fd5de1f7a3e59c375dce78" [label=""];
  "sha256:fa94174f8d3100fdb4eec468dd24e530ecf858f068fd5de1f7a3e59c375dce78" -> "sha256:9de4d73694cba7576aa047105b5d4708b45876e63e6ce2189ea363e23552bacc" [label=""];
  "sha256:9de4d73694cba7576aa047105b5d4708b45876e63e6ce2189ea363e23552bacc" -> "sha256:010cae924f38e64fa175826e3d99c49a0e7740ce671c741d7e49bf0b86e76695" [label=""];
  "sha256:010cae924f38e64fa175826e3d99c49a0e7740ce671c741d7e49bf0b86e76695" -> "sha256:dd60514756d492a620fd178aeb576287bf1798c95ee00c01c52f447720c3a9e5" [label=""];
}

