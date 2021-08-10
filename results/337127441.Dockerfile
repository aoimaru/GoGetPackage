[app/sources/337127441.Dockerfile]
digraph {
  "sha256:708c413a2d790fd473ee69a8685be8d8353df401fefec6784c3e9850d5ed8ebd" [label="local://context" shape="ellipse"];
  "sha256:6468fc053853857ceb9fc4842bacffe13c118ddb665aeebb6cfe968960790299" [label="docker-image://docker.io/openrasp/java7:latest" shape="ellipse"];
  "sha256:919c963aa67e57822c01f5df4a744c619042bd1522db8e2ed637a07341c6ff1d" [label="/bin/sh -c curl \"$tomcat_url\" -o package.tar.gz \t&& tar -xf package.tar.gz \t&& rm -f package.tar.gz \t&& mv apache-tomcat-* /tomcat/" shape="box"];
  "sha256:f488fa747da4d1bb00e46d011369ae80506c82c7a948f48322106b034cf1d42b" [label="/bin/sh -c curl https://packages.baidu.com/app/groovy-all-2.3.9.jar -o /tomcat/lib/groovy-all-2.3.9.jar \t&& curl https://packages.baidu.com/app/tomcat-catalina-jmx-remote-7.0.4.jar -o /tomcat/lib/catalina-jmx-remote.jar" shape="box"];
  "sha256:ee3aaa024a75906fdf32bda8400d145365156b30c61c42dad225bb483b8a6336" [label="copy{src=/start.sh, dest=/root/}" shape="note"];
  "sha256:3aca3b45f2fb831eb68190bf4cf97d91c8f7926f74be2f8af20e7f70206c2136" [label="copy{src=/bin/*, dest=/tomcat/bin/}" shape="note"];
  "sha256:0c11ab3cac8b66e2986b803ea23c95f5d2e759cb1d279542390aeb83370f79f3" [label="copy{src=/conf/*, dest=/tomcat/conf/}" shape="note"];
  "sha256:676f1c34172c9f32cc92656db5036023ab8dcbb86979c72869f2321bec598bc7" [label="/bin/sh -c chmod +x /tomcat/bin/*.sh /root/*.sh" shape="box"];
  "sha256:32c5ed70a6960437c50757a8c182da53591d4ba5f218dbb0f2750c904baedc84" [label="sha256:32c5ed70a6960437c50757a8c182da53591d4ba5f218dbb0f2750c904baedc84" shape="plaintext"];
  "sha256:6468fc053853857ceb9fc4842bacffe13c118ddb665aeebb6cfe968960790299" -> "sha256:919c963aa67e57822c01f5df4a744c619042bd1522db8e2ed637a07341c6ff1d" [label=""];
  "sha256:919c963aa67e57822c01f5df4a744c619042bd1522db8e2ed637a07341c6ff1d" -> "sha256:f488fa747da4d1bb00e46d011369ae80506c82c7a948f48322106b034cf1d42b" [label=""];
  "sha256:f488fa747da4d1bb00e46d011369ae80506c82c7a948f48322106b034cf1d42b" -> "sha256:ee3aaa024a75906fdf32bda8400d145365156b30c61c42dad225bb483b8a6336" [label=""];
  "sha256:708c413a2d790fd473ee69a8685be8d8353df401fefec6784c3e9850d5ed8ebd" -> "sha256:ee3aaa024a75906fdf32bda8400d145365156b30c61c42dad225bb483b8a6336" [label=""];
  "sha256:ee3aaa024a75906fdf32bda8400d145365156b30c61c42dad225bb483b8a6336" -> "sha256:3aca3b45f2fb831eb68190bf4cf97d91c8f7926f74be2f8af20e7f70206c2136" [label=""];
  "sha256:708c413a2d790fd473ee69a8685be8d8353df401fefec6784c3e9850d5ed8ebd" -> "sha256:3aca3b45f2fb831eb68190bf4cf97d91c8f7926f74be2f8af20e7f70206c2136" [label=""];
  "sha256:3aca3b45f2fb831eb68190bf4cf97d91c8f7926f74be2f8af20e7f70206c2136" -> "sha256:0c11ab3cac8b66e2986b803ea23c95f5d2e759cb1d279542390aeb83370f79f3" [label=""];
  "sha256:708c413a2d790fd473ee69a8685be8d8353df401fefec6784c3e9850d5ed8ebd" -> "sha256:0c11ab3cac8b66e2986b803ea23c95f5d2e759cb1d279542390aeb83370f79f3" [label=""];
  "sha256:0c11ab3cac8b66e2986b803ea23c95f5d2e759cb1d279542390aeb83370f79f3" -> "sha256:676f1c34172c9f32cc92656db5036023ab8dcbb86979c72869f2321bec598bc7" [label=""];
  "sha256:676f1c34172c9f32cc92656db5036023ab8dcbb86979c72869f2321bec598bc7" -> "sha256:32c5ed70a6960437c50757a8c182da53591d4ba5f218dbb0f2750c904baedc84" [label=""];
}

