[app/sources/374668526.Dockerfile]
digraph {
  "sha256:b843e14b901718ca83c983758932a2d504196de5eca4886ba888b56d78764fd2" [label="docker-image://docker.io/publicisworldwide/jenkins-slave:latest" shape="ellipse"];
  "sha256:35581a5b3f3101438023b9985300486ee294a57d9454dd349ade2f74668aa3a9" [label="/bin/sh -c /bin/wget -P /opt https://nodejs.org/dist/${node_version}/node-${node_version}-linux-x64.tar.xz &&     /bin/tar -xvf /opt/node-${node_version}-linux-x64.tar.xz -C /usr/local/ --strip-components=1" shape="box"];
  "sha256:ba2da197c30fe5e2dfce1bbd17b7f03cf5ffc88d3db4bf878040715965350bf0" [label="sha256:ba2da197c30fe5e2dfce1bbd17b7f03cf5ffc88d3db4bf878040715965350bf0" shape="plaintext"];
  "sha256:b843e14b901718ca83c983758932a2d504196de5eca4886ba888b56d78764fd2" -> "sha256:35581a5b3f3101438023b9985300486ee294a57d9454dd349ade2f74668aa3a9" [label=""];
  "sha256:35581a5b3f3101438023b9985300486ee294a57d9454dd349ade2f74668aa3a9" -> "sha256:ba2da197c30fe5e2dfce1bbd17b7f03cf5ffc88d3db4bf878040715965350bf0" [label=""];
}

