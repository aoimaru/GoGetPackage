[app/sources/292259334.Dockerfile]
digraph {
  "sha256:6dbfa610883b2d12960c592c9573871b3c11a52d05c5153cd5cd64f9016464f2" [label="docker-image://docker.io/library/nginx:1.16.0-alpine" shape="ellipse"];
  "sha256:01f9c5edc41cd53e29ac4079942ee80d76b4a718ad927570cfe689c17ccda24a" [label="local://context" shape="ellipse"];
  "sha256:b20b3ea50ed18313821512545b515b59a6d6ca15f3d6f399e7d8b6895947e237" [label="docker-image://docker.io/library/node:12.4.0-alpine" shape="ellipse"];
  "sha256:ce3ed457c892a55c12d4e50c684b1652255a54adf0b27a9592303bb86c347cdf" [label="mkdir{path=/app}" shape="note"];
  "sha256:67563c366e0507597aa1a5277bd59ac407b6e2a9f8c981c1cd6b60d6e79aa436" [label="copy{src=/package.json, dest=/app/},copy{src=/yarn.lock, dest=/app/}" shape="note"];
  "sha256:309ca7280fd7638805b472b3670bb7bf842759f9c35bdbcce248e507fa7f5a43" [label="/bin/sh -c apk add --no-cache --virtual python make g++     && yarn install --frozen-lockfile" shape="box"];
  "sha256:d19e033bef4ef926429725c46adace863be063e3ba5a3695d156cf30a62b8577" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c7da86344970fb30998b08c3f472d01badda453d78f98fed1d59031711ff7cad" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:586fe67ea8fa492ec8f7ddb0bba72755ce9ae11136c87ffe34e523f94b4bafa8" [label="copy{src=/app/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:b6f15d15843482657ecf7bbd4df8e60b3b306a79614e43e7ea5c83a65af9975e" [label="sha256:b6f15d15843482657ecf7bbd4df8e60b3b306a79614e43e7ea5c83a65af9975e" shape="plaintext"];
  "sha256:b20b3ea50ed18313821512545b515b59a6d6ca15f3d6f399e7d8b6895947e237" -> "sha256:ce3ed457c892a55c12d4e50c684b1652255a54adf0b27a9592303bb86c347cdf" [label=""];
  "sha256:ce3ed457c892a55c12d4e50c684b1652255a54adf0b27a9592303bb86c347cdf" -> "sha256:67563c366e0507597aa1a5277bd59ac407b6e2a9f8c981c1cd6b60d6e79aa436" [label=""];
  "sha256:01f9c5edc41cd53e29ac4079942ee80d76b4a718ad927570cfe689c17ccda24a" -> "sha256:67563c366e0507597aa1a5277bd59ac407b6e2a9f8c981c1cd6b60d6e79aa436" [label=""];
  "sha256:67563c366e0507597aa1a5277bd59ac407b6e2a9f8c981c1cd6b60d6e79aa436" -> "sha256:309ca7280fd7638805b472b3670bb7bf842759f9c35bdbcce248e507fa7f5a43" [label=""];
  "sha256:309ca7280fd7638805b472b3670bb7bf842759f9c35bdbcce248e507fa7f5a43" -> "sha256:d19e033bef4ef926429725c46adace863be063e3ba5a3695d156cf30a62b8577" [label=""];
  "sha256:01f9c5edc41cd53e29ac4079942ee80d76b4a718ad927570cfe689c17ccda24a" -> "sha256:d19e033bef4ef926429725c46adace863be063e3ba5a3695d156cf30a62b8577" [label=""];
  "sha256:d19e033bef4ef926429725c46adace863be063e3ba5a3695d156cf30a62b8577" -> "sha256:c7da86344970fb30998b08c3f472d01badda453d78f98fed1d59031711ff7cad" [label=""];
  "sha256:6dbfa610883b2d12960c592c9573871b3c11a52d05c5153cd5cd64f9016464f2" -> "sha256:586fe67ea8fa492ec8f7ddb0bba72755ce9ae11136c87ffe34e523f94b4bafa8" [label=""];
  "sha256:c7da86344970fb30998b08c3f472d01badda453d78f98fed1d59031711ff7cad" -> "sha256:586fe67ea8fa492ec8f7ddb0bba72755ce9ae11136c87ffe34e523f94b4bafa8" [label=""];
  "sha256:586fe67ea8fa492ec8f7ddb0bba72755ce9ae11136c87ffe34e523f94b4bafa8" -> "sha256:b6f15d15843482657ecf7bbd4df8e60b3b306a79614e43e7ea5c83a65af9975e" [label=""];
}

