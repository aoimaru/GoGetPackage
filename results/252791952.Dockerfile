[app/sources/252791952.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:dff6b0fcfe750ade95a5f7ef973caa556d3e21d6c6bf1863dac870bd3d03a451" [label="/bin/sh -c apt-get update && apt-get install -y --force-yes curl default-jdk git nodejs npm scala wget && update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 && npm install npm -g && wget https://dl.bintray.com/sbt/debian/sbt-0.13.9.deb && apt-get update && dpkg -i sbt-0.13.9.deb && sbt && npm install -g vsoagent-installer && mkdir /opt/myagent && cd /opt/myagent && vsoagent-installer && echo \"vsoagent\\nvsoagent\\n\\n\\n\\n\\n\\n\\n\" | adduser vsoagent && chown -R vsoagent /opt/myagent" shape="box"];
  "sha256:cc4e52ee6729d37b36348b3ee76a300dfafe80aa24b95bdfd373d09a09831730" [label="mkdir{path=/opt/myagent}" shape="note"];
  "sha256:8b1f7b1379e84a3d16ef45a707e9536ab8e019e683e158242583b1bc4c000790" [label="sha256:8b1f7b1379e84a3d16ef45a707e9536ab8e019e683e158242583b1bc4c000790" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:dff6b0fcfe750ade95a5f7ef973caa556d3e21d6c6bf1863dac870bd3d03a451" [label=""];
  "sha256:dff6b0fcfe750ade95a5f7ef973caa556d3e21d6c6bf1863dac870bd3d03a451" -> "sha256:cc4e52ee6729d37b36348b3ee76a300dfafe80aa24b95bdfd373d09a09831730" [label=""];
  "sha256:cc4e52ee6729d37b36348b3ee76a300dfafe80aa24b95bdfd373d09a09831730" -> "sha256:8b1f7b1379e84a3d16ef45a707e9536ab8e019e683e158242583b1bc4c000790" [label=""];
}

