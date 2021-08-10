[app/sources/233475786.Dockerfile]
digraph {
  "sha256:7e45041a1383429141e1023af6141c9dcd30dae2e2b5d0a5f39098819168ee62" [label="docker-image://docker.io/eason02/java:1.8" shape="ellipse"];
  "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64\" &&     curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64.asc\" &&     gpg --verify /usr/local/bin/gosu.asc &&     rm /usr/local/bin/gosu.asc &&     rm -rf /root/.gnupg/ &&     chmod +x /usr/local/bin/gosu &&     gosu nobody true" shape="box"];
  "sha256:8162a5492b8457437cb4cebae4116cee82d3efe19b360c385397a2400681ff98" [label="/bin/sh -c set -x &&     cd ~ &&     yum clean all &&     yum -y install which &&     rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch" shape="box"];
  "sha256:8daf08e02fc8db5894089fdac4c6f416cc8de9bc3fcfa676decdb997534a8247" [label="/bin/sh -c wget https://artifacts.elastic.co/downloads/kibana/kibana-6.0.0-x86_64.rpm &&     sha1sum kibana-6.0.0-x86_64.rpm &&     rpm --install kibana-6.0.0-x86_64.rpm &&     rm -rf kibana-6.0.0-x86_64.rpm &&     rm -rf /etc/kibana/*" shape="box"];
  "sha256:78fa3935879c893f2b2cd62a6ad2e024fc772ae6668d6d605863838b3a82116b" [label="mkdir{path=/usr/share/kibana/bin}" shape="note"];
  "sha256:40033e7f1c2c2b8967f730ca06d844393756aaca8d20205daeb2e077d819652b" [label="local://context" shape="ellipse"];
  "sha256:58077b4ad2cd9331ba5daea27cee6eb4b6ecf83a05504ad71a4ce0959c165950" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:d27ac0f7dd7fd795bd0bc8969da8618d4cf1c4216dd1cc238ceb0fc7939593bf" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:077f79f7554ff69072513de731d47ea652385fb2ae7e76269c205633146f86f8" [label="sha256:077f79f7554ff69072513de731d47ea652385fb2ae7e76269c205633146f86f8" shape="plaintext"];
  "sha256:7e45041a1383429141e1023af6141c9dcd30dae2e2b5d0a5f39098819168ee62" -> "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" [label=""];
  "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" -> "sha256:8162a5492b8457437cb4cebae4116cee82d3efe19b360c385397a2400681ff98" [label=""];
  "sha256:8162a5492b8457437cb4cebae4116cee82d3efe19b360c385397a2400681ff98" -> "sha256:8daf08e02fc8db5894089fdac4c6f416cc8de9bc3fcfa676decdb997534a8247" [label=""];
  "sha256:8daf08e02fc8db5894089fdac4c6f416cc8de9bc3fcfa676decdb997534a8247" -> "sha256:78fa3935879c893f2b2cd62a6ad2e024fc772ae6668d6d605863838b3a82116b" [label=""];
  "sha256:78fa3935879c893f2b2cd62a6ad2e024fc772ae6668d6d605863838b3a82116b" -> "sha256:58077b4ad2cd9331ba5daea27cee6eb4b6ecf83a05504ad71a4ce0959c165950" [label=""];
  "sha256:40033e7f1c2c2b8967f730ca06d844393756aaca8d20205daeb2e077d819652b" -> "sha256:58077b4ad2cd9331ba5daea27cee6eb4b6ecf83a05504ad71a4ce0959c165950" [label=""];
  "sha256:58077b4ad2cd9331ba5daea27cee6eb4b6ecf83a05504ad71a4ce0959c165950" -> "sha256:d27ac0f7dd7fd795bd0bc8969da8618d4cf1c4216dd1cc238ceb0fc7939593bf" [label=""];
  "sha256:d27ac0f7dd7fd795bd0bc8969da8618d4cf1c4216dd1cc238ceb0fc7939593bf" -> "sha256:077f79f7554ff69072513de731d47ea652385fb2ae7e76269c205633146f86f8" [label=""];
}

