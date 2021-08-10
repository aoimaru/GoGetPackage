[app/sources/257434136.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:fefd5c39641b2e4fe927eb62677d831806a9ea9df7f17ad206ce573c2fb1e2e7" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 &&     echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list &&     apt-get update &&     apt-get install -y pwgen mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-mongos mongodb-org-tools &&     echo \"mongodb-org hold\" | dpkg --set-selections &&     echo \"mongodb-org-server hold\" | dpkg --set-selections &&     echo \"mongodb-org-shell hold\" | dpkg --set-selections &&     echo \"mongodb-org-mongos hold\" | dpkg --set-selections &&     echo \"mongodb-org-tools hold\" | dpkg --set-selections" shape="box"];
  "sha256:ae95d455667f8013e3adaa3834d79555d004647000afa8c77a037733ac2439b8" [label="local://context" shape="ellipse"];
  "sha256:9bec697f1bd7c3a1bc318ffd0d182c4f3e6b7617ce7c849eab31fd69be66ea66" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:c0d6e33822edda7bf51aeaf41693d16c3f431a5a1dbd6f3fd60dcfc26029ae20" [label="copy{src=/set_mongodb_password.sh, dest=/set_mongodb_password.sh}" shape="note"];
  "sha256:867de6071b947cc3eb1c4f0c83fc0817d4c8b819d7dc85a1c7b2466b28154e45" [label="sha256:867de6071b947cc3eb1c4f0c83fc0817d4c8b819d7dc85a1c7b2466b28154e45" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:fefd5c39641b2e4fe927eb62677d831806a9ea9df7f17ad206ce573c2fb1e2e7" [label=""];
  "sha256:fefd5c39641b2e4fe927eb62677d831806a9ea9df7f17ad206ce573c2fb1e2e7" -> "sha256:9bec697f1bd7c3a1bc318ffd0d182c4f3e6b7617ce7c849eab31fd69be66ea66" [label=""];
  "sha256:ae95d455667f8013e3adaa3834d79555d004647000afa8c77a037733ac2439b8" -> "sha256:9bec697f1bd7c3a1bc318ffd0d182c4f3e6b7617ce7c849eab31fd69be66ea66" [label=""];
  "sha256:9bec697f1bd7c3a1bc318ffd0d182c4f3e6b7617ce7c849eab31fd69be66ea66" -> "sha256:c0d6e33822edda7bf51aeaf41693d16c3f431a5a1dbd6f3fd60dcfc26029ae20" [label=""];
  "sha256:ae95d455667f8013e3adaa3834d79555d004647000afa8c77a037733ac2439b8" -> "sha256:c0d6e33822edda7bf51aeaf41693d16c3f431a5a1dbd6f3fd60dcfc26029ae20" [label=""];
  "sha256:c0d6e33822edda7bf51aeaf41693d16c3f431a5a1dbd6f3fd60dcfc26029ae20" -> "sha256:867de6071b947cc3eb1c4f0c83fc0817d4c8b819d7dc85a1c7b2466b28154e45" [label=""];
}

