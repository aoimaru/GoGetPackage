[app/sources/296132614.Dockerfile]
digraph {
  "sha256:09de01f8f6683b0d9daf845a368e9d6461dae28bcd6ab00f287c45d82491aa83" [label="local://context" shape="ellipse"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" [label="docker-image://docker.io/library/java:8-jre-alpine" shape="ellipse"];
  "sha256:ecd44ea40539e2074f01e3c18d51bbd69c7409907f2ab46cf87cadfc7aec511b" [label="/bin/sh -c sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/' /etc/apk/repositories" shape="box"];
  "sha256:bf7f1dc09fe62fcbd410ac99fd3f0faf2dce28ed22dceca82fdcc0eaeeff6939" [label="copy{src=/build/libs/*.jar, dest=/app.jar}" shape="note"];
  "sha256:b9eed21c0fbb1ecc1b694bed1ab0c0ad5f683ba4c6c3eb8e2a9748ced49723bb" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:6b095bda7906d1e894d5c45a4d982cec273a93e4222310e3f9e432bdcc822d18" [label="sha256:6b095bda7906d1e894d5c45a4d982cec273a93e4222310e3f9e432bdcc822d18" shape="plaintext"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" -> "sha256:ecd44ea40539e2074f01e3c18d51bbd69c7409907f2ab46cf87cadfc7aec511b" [label=""];
  "sha256:ecd44ea40539e2074f01e3c18d51bbd69c7409907f2ab46cf87cadfc7aec511b" -> "sha256:bf7f1dc09fe62fcbd410ac99fd3f0faf2dce28ed22dceca82fdcc0eaeeff6939" [label=""];
  "sha256:09de01f8f6683b0d9daf845a368e9d6461dae28bcd6ab00f287c45d82491aa83" -> "sha256:bf7f1dc09fe62fcbd410ac99fd3f0faf2dce28ed22dceca82fdcc0eaeeff6939" [label=""];
  "sha256:bf7f1dc09fe62fcbd410ac99fd3f0faf2dce28ed22dceca82fdcc0eaeeff6939" -> "sha256:b9eed21c0fbb1ecc1b694bed1ab0c0ad5f683ba4c6c3eb8e2a9748ced49723bb" [label=""];
  "sha256:b9eed21c0fbb1ecc1b694bed1ab0c0ad5f683ba4c6c3eb8e2a9748ced49723bb" -> "sha256:6b095bda7906d1e894d5c45a4d982cec273a93e4222310e3f9e432bdcc822d18" [label=""];
}

