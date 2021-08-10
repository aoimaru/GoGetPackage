[app/sources/293018667.Dockerfile]
digraph {
  "sha256:8ee33c8178728ee4f023b68133739f8f4593a4f1d9f3da5db27c4368b3c8828c" [label="docker-image://docker.io/library/java:openjdk-8-jdk-alpine" shape="ellipse"];
  "sha256:f5f91a4df6292aedaa3846c2dbe066dcba72e8068791ebeeda54a305cda5d945" [label="local://context" shape="ellipse"];
  "sha256:76adfd06ecd6e381481fb5cb50e615c758199527d32468c0965cdd19fa043db3" [label="copy{src=/target/*.jar, dest=/app.jar}" shape="note"];
  "sha256:f06937485d7c8a597905ce8e629ec5b5b25bc51ed6b93a760a896c6d39a4e14d" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:4ee935db28c7ad757aa17282d824db226e4adb5623f8c58eb563b38271b183b5" [label="sha256:4ee935db28c7ad757aa17282d824db226e4adb5623f8c58eb563b38271b183b5" shape="plaintext"];
  "sha256:8ee33c8178728ee4f023b68133739f8f4593a4f1d9f3da5db27c4368b3c8828c" -> "sha256:76adfd06ecd6e381481fb5cb50e615c758199527d32468c0965cdd19fa043db3" [label=""];
  "sha256:f5f91a4df6292aedaa3846c2dbe066dcba72e8068791ebeeda54a305cda5d945" -> "sha256:76adfd06ecd6e381481fb5cb50e615c758199527d32468c0965cdd19fa043db3" [label=""];
  "sha256:76adfd06ecd6e381481fb5cb50e615c758199527d32468c0965cdd19fa043db3" -> "sha256:f06937485d7c8a597905ce8e629ec5b5b25bc51ed6b93a760a896c6d39a4e14d" [label=""];
  "sha256:f06937485d7c8a597905ce8e629ec5b5b25bc51ed6b93a760a896c6d39a4e14d" -> "sha256:4ee935db28c7ad757aa17282d824db226e4adb5623f8c58eb563b38271b183b5" [label=""];
}

