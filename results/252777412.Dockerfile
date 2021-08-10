[app/sources/252777412.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:62541a06d9920ad606751a140f7419497d068288bf0d5c033a5eed420be69394" [label="/bin/sh -c apk --update add logrotate" shape="box"];
  "sha256:f5999043c4c079fbcfed52ac358f6ad86f34359cbad3f0f8ca0de6e8b1a5d4b3" [label="local://context" shape="ellipse"];
  "sha256:74f165061606dd4f8277042b378189164c80a2588f2ea7b4cd7b330f03c0d7e6" [label="copy{src=/src, dest=/}" shape="note"];
  "sha256:627a3ec5c92b93116d324710dff5d3b9e85a5275f440da55dbfd63cd4e6cf1f9" [label="sha256:627a3ec5c92b93116d324710dff5d3b9e85a5275f440da55dbfd63cd4e6cf1f9" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:62541a06d9920ad606751a140f7419497d068288bf0d5c033a5eed420be69394" [label=""];
  "sha256:62541a06d9920ad606751a140f7419497d068288bf0d5c033a5eed420be69394" -> "sha256:74f165061606dd4f8277042b378189164c80a2588f2ea7b4cd7b330f03c0d7e6" [label=""];
  "sha256:f5999043c4c079fbcfed52ac358f6ad86f34359cbad3f0f8ca0de6e8b1a5d4b3" -> "sha256:74f165061606dd4f8277042b378189164c80a2588f2ea7b4cd7b330f03c0d7e6" [label=""];
  "sha256:74f165061606dd4f8277042b378189164c80a2588f2ea7b4cd7b330f03c0d7e6" -> "sha256:627a3ec5c92b93116d324710dff5d3b9e85a5275f440da55dbfd63cd4e6cf1f9" [label=""];
}

