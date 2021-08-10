[app/sources/233475828.Dockerfile]
digraph {
  "sha256:7e45041a1383429141e1023af6141c9dcd30dae2e2b5d0a5f39098819168ee62" [label="docker-image://docker.io/eason02/java:1.8" shape="ellipse"];
  "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 &&     curl -o /usr/local/bin/gosu -SL \"https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64\" &&     curl -o /usr/local/bin/gosu.asc -SL \"https://github.com/tianon/gosu/releases/download/1.9/gosu-amd64.asc\" &&     gpg --verify /usr/local/bin/gosu.asc &&     rm /usr/local/bin/gosu.asc &&     rm -rf /root/.gnupg/ &&     chmod +x /usr/local/bin/gosu &&     gosu nobody true" shape="box"];
  "sha256:8162a5492b8457437cb4cebae4116cee82d3efe19b360c385397a2400681ff98" [label="/bin/sh -c set -x &&     cd ~ &&     yum clean all &&     yum -y install which &&     rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch" shape="box"];
  "sha256:a114ed2c02680dcc0dc9d61103b74261f01d757ed56f069b324a555491ef0708" [label="/bin/sh -c wget https://artifacts.elastic.co/downloads/kibana/kibana-6.1.2-x86_64.rpm &&     sha1sum kibana-6.1.2-x86_64.rpm &&     rpm --install kibana-6.1.2-x86_64.rpm &&     rm -rf kibana-6.1.2-x86_64.rpm &&     rm -rf /etc/kibana/*" shape="box"];
  "sha256:175e4bab652344eb4a8c985520d3a032cbdfedac5476b39b2ca0bf61bab30fb3" [label="mkdir{path=/usr/share/kibana/bin}" shape="note"];
  "sha256:1b92d4a1c80b8c2dc43e4d36edbe92af513fd9fd15e51de58b610c53187b072f" [label="local://context" shape="ellipse"];
  "sha256:35f4f081477facb4005414def5c88cd3b420f95ca3a1b980d83a0f5266bae49b" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:3815700e192297e7a431f9e21e8fce33a2d7f520e9198d1e75685578ae4409a4" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:0b9274122735c23fe7c55851564ac1ea7f985958d6db0a75814f48ebee1e84e5" [label="sha256:0b9274122735c23fe7c55851564ac1ea7f985958d6db0a75814f48ebee1e84e5" shape="plaintext"];
  "sha256:7e45041a1383429141e1023af6141c9dcd30dae2e2b5d0a5f39098819168ee62" -> "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" [label=""];
  "sha256:04e0a26fd05033ade22a55db5540737a10f23ff18925dd9efa0a70e20716d284" -> "sha256:8162a5492b8457437cb4cebae4116cee82d3efe19b360c385397a2400681ff98" [label=""];
  "sha256:8162a5492b8457437cb4cebae4116cee82d3efe19b360c385397a2400681ff98" -> "sha256:a114ed2c02680dcc0dc9d61103b74261f01d757ed56f069b324a555491ef0708" [label=""];
  "sha256:a114ed2c02680dcc0dc9d61103b74261f01d757ed56f069b324a555491ef0708" -> "sha256:175e4bab652344eb4a8c985520d3a032cbdfedac5476b39b2ca0bf61bab30fb3" [label=""];
  "sha256:175e4bab652344eb4a8c985520d3a032cbdfedac5476b39b2ca0bf61bab30fb3" -> "sha256:35f4f081477facb4005414def5c88cd3b420f95ca3a1b980d83a0f5266bae49b" [label=""];
  "sha256:1b92d4a1c80b8c2dc43e4d36edbe92af513fd9fd15e51de58b610c53187b072f" -> "sha256:35f4f081477facb4005414def5c88cd3b420f95ca3a1b980d83a0f5266bae49b" [label=""];
  "sha256:35f4f081477facb4005414def5c88cd3b420f95ca3a1b980d83a0f5266bae49b" -> "sha256:3815700e192297e7a431f9e21e8fce33a2d7f520e9198d1e75685578ae4409a4" [label=""];
  "sha256:3815700e192297e7a431f9e21e8fce33a2d7f520e9198d1e75685578ae4409a4" -> "sha256:0b9274122735c23fe7c55851564ac1ea7f985958d6db0a75814f48ebee1e84e5" [label=""];
}

