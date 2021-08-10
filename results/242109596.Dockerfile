[app/sources/242109596.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:e515d9c39c820600a29dcde05925ad58190244214c4dd0cd04e9ab7b9961f1c6" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:3e2065e474b246be18f211b0bca5e5f502d5bac080cceab3db189da05682a60f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2de46b650101a1e781a23e43c8a195429748ea2c79e930fbe71c73a68c60b863" [label="local://context" shape="ellipse"];
  "sha256:6f4e977d372ad52743de28eeae16ef733395f157e0ae7b1a0ac663c13dcea130" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/bower.json, dest=/usr/src/app/},copy{src=/.bowerrc, dest=/usr/src/app/}" shape="note"];
  "sha256:069255eed9bb43c2fc4a54cac75ece160d18e7c5aee60f3e5e2156210e2763e6" [label="/bin/sh -c apk add --no-cache git &&     npm install --production -g bower pm2 &&     npm install --production  &&     bower install &&     bower cache clean &&     npm uninstall -g bower &&     npm cache clean --force &&     apk del git" shape="box"];
  "sha256:88350065b42b658a6277dbce08cef018bde6ecbdfc6e2924ae21c09c8c5aa372" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:8e9cc09acbdaa70c0ae105a92ba9d237b389b0607daa17fd6393f175f1a7c355" [label="sha256:8e9cc09acbdaa70c0ae105a92ba9d237b389b0607daa17fd6393f175f1a7c355" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:e515d9c39c820600a29dcde05925ad58190244214c4dd0cd04e9ab7b9961f1c6" [label=""];
  "sha256:e515d9c39c820600a29dcde05925ad58190244214c4dd0cd04e9ab7b9961f1c6" -> "sha256:3e2065e474b246be18f211b0bca5e5f502d5bac080cceab3db189da05682a60f" [label=""];
  "sha256:3e2065e474b246be18f211b0bca5e5f502d5bac080cceab3db189da05682a60f" -> "sha256:6f4e977d372ad52743de28eeae16ef733395f157e0ae7b1a0ac663c13dcea130" [label=""];
  "sha256:2de46b650101a1e781a23e43c8a195429748ea2c79e930fbe71c73a68c60b863" -> "sha256:6f4e977d372ad52743de28eeae16ef733395f157e0ae7b1a0ac663c13dcea130" [label=""];
  "sha256:6f4e977d372ad52743de28eeae16ef733395f157e0ae7b1a0ac663c13dcea130" -> "sha256:069255eed9bb43c2fc4a54cac75ece160d18e7c5aee60f3e5e2156210e2763e6" [label=""];
  "sha256:069255eed9bb43c2fc4a54cac75ece160d18e7c5aee60f3e5e2156210e2763e6" -> "sha256:88350065b42b658a6277dbce08cef018bde6ecbdfc6e2924ae21c09c8c5aa372" [label=""];
  "sha256:2de46b650101a1e781a23e43c8a195429748ea2c79e930fbe71c73a68c60b863" -> "sha256:88350065b42b658a6277dbce08cef018bde6ecbdfc6e2924ae21c09c8c5aa372" [label=""];
  "sha256:88350065b42b658a6277dbce08cef018bde6ecbdfc6e2924ae21c09c8c5aa372" -> "sha256:8e9cc09acbdaa70c0ae105a92ba9d237b389b0607daa17fd6393f175f1a7c355" [label=""];
}

