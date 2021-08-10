[app/sources/335325964.Dockerfile]
digraph {
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" [label="docker-image://docker.io/library/python:3.7-slim" shape="ellipse"];
  "sha256:7f55a2ba327e99dc90dad337818dadd96c0546f56b9464e129e12e73e707be90" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:5bf39e61b2da6c7948dd7beee70dd97ba8d17013e90e55f1a2fd2e210aca91a8" [label="/bin/sh -c apt-get install -y python-pip python-dev build-essential" shape="box"];
  "sha256:df2f4728e6dd147a5cd0db989524115264943445e0f202de7e97cc8430d96e35" [label="local://context" shape="ellipse"];
  "sha256:94e481206cbe2d12bfdf248cb16ba52c80ae54a8654a6d64485d39d44ca10880" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:2cf410e0d5972d32f1669bb3a030232edc8d5fccd4a3b7b74feb2c75e871d950" [label="/bin/sh -c cd /tmp &&     pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:74ad20f03d124623ad0eb171f9e5d404a63d47360342fb1c9e46e9307d5abf22" [label="/bin/sh -c mkdir training" shape="box"];
  "sha256:0c442d056e42f93539fccebd3382fc1e6ac07bafafa82aec33dc53dd8e6c5000" [label="copy{src=/create_model.py, dest=/training/create_model.py}" shape="note"];
  "sha256:ece5bd27437f175e2cb347fa142338be8e3e7f80176d939098e1ec5bdc6d1cf8" [label="copy{src=/train.sh, dest=/training/train.sh}" shape="note"];
  "sha256:af7a876c22d3fa7b2b2c336b44a07c6f6e382aeb15d5c0f25ff1de01eb97b94f" [label="mkdir{path=/training}" shape="note"];
  "sha256:87809855c1d4bede34b0c7e04fdb24ea3b128dc04d7047f3599aea295f9089fd" [label="sha256:87809855c1d4bede34b0c7e04fdb24ea3b128dc04d7047f3599aea295f9089fd" shape="plaintext"];
  "sha256:4a92a13abf9f99ec1685954f64a61d22e1de5ebb63531b2235a4643a5437cdc2" -> "sha256:7f55a2ba327e99dc90dad337818dadd96c0546f56b9464e129e12e73e707be90" [label=""];
  "sha256:7f55a2ba327e99dc90dad337818dadd96c0546f56b9464e129e12e73e707be90" -> "sha256:5bf39e61b2da6c7948dd7beee70dd97ba8d17013e90e55f1a2fd2e210aca91a8" [label=""];
  "sha256:5bf39e61b2da6c7948dd7beee70dd97ba8d17013e90e55f1a2fd2e210aca91a8" -> "sha256:94e481206cbe2d12bfdf248cb16ba52c80ae54a8654a6d64485d39d44ca10880" [label=""];
  "sha256:df2f4728e6dd147a5cd0db989524115264943445e0f202de7e97cc8430d96e35" -> "sha256:94e481206cbe2d12bfdf248cb16ba52c80ae54a8654a6d64485d39d44ca10880" [label=""];
  "sha256:94e481206cbe2d12bfdf248cb16ba52c80ae54a8654a6d64485d39d44ca10880" -> "sha256:2cf410e0d5972d32f1669bb3a030232edc8d5fccd4a3b7b74feb2c75e871d950" [label=""];
  "sha256:2cf410e0d5972d32f1669bb3a030232edc8d5fccd4a3b7b74feb2c75e871d950" -> "sha256:74ad20f03d124623ad0eb171f9e5d404a63d47360342fb1c9e46e9307d5abf22" [label=""];
  "sha256:74ad20f03d124623ad0eb171f9e5d404a63d47360342fb1c9e46e9307d5abf22" -> "sha256:0c442d056e42f93539fccebd3382fc1e6ac07bafafa82aec33dc53dd8e6c5000" [label=""];
  "sha256:df2f4728e6dd147a5cd0db989524115264943445e0f202de7e97cc8430d96e35" -> "sha256:0c442d056e42f93539fccebd3382fc1e6ac07bafafa82aec33dc53dd8e6c5000" [label=""];
  "sha256:0c442d056e42f93539fccebd3382fc1e6ac07bafafa82aec33dc53dd8e6c5000" -> "sha256:ece5bd27437f175e2cb347fa142338be8e3e7f80176d939098e1ec5bdc6d1cf8" [label=""];
  "sha256:df2f4728e6dd147a5cd0db989524115264943445e0f202de7e97cc8430d96e35" -> "sha256:ece5bd27437f175e2cb347fa142338be8e3e7f80176d939098e1ec5bdc6d1cf8" [label=""];
  "sha256:ece5bd27437f175e2cb347fa142338be8e3e7f80176d939098e1ec5bdc6d1cf8" -> "sha256:af7a876c22d3fa7b2b2c336b44a07c6f6e382aeb15d5c0f25ff1de01eb97b94f" [label=""];
  "sha256:af7a876c22d3fa7b2b2c336b44a07c6f6e382aeb15d5c0f25ff1de01eb97b94f" -> "sha256:87809855c1d4bede34b0c7e04fdb24ea3b128dc04d7047f3599aea295f9089fd" [label=""];
}

