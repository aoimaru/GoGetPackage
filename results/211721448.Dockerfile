[app/sources/211721448.Dockerfile]
digraph {
  "sha256:6dbd5673a18a4543fe226ba004320b04c1a3fe06550b5e99ad5d07b03040aeec" [label="docker-image://docker.io/library/node:7.9.0" shape="ellipse"];
  "sha256:ea911cdf0663673fb82c1d566b5598bfa187ead396c60ddd698daf69f6f10ea8" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:4703dbff0d8a6b9e3206571b24e42df4a87b4df41a356955525c7bf4c5c18c4e" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c7d53d2d9c21f7692cc5d143d47228350cfe8c1158c8fa50d75dbe7ef1547360" [label="local://context" shape="ellipse"];
  "sha256:18ecd2ae68310b90baf10397aa3404ffb3176b9ef5de4d12a5aefacb5d5ad953" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:39bdf061c08503e1aab2548353fc6d83d1218f4fb4353c408af0d79abce3fbd3" [label="/bin/sh -c npm install" shape="box"];
  "sha256:87d55300ea89edb43db21277cbc6c559ccd9b43282aee5cd9d715f5a705d3505" [label="sha256:87d55300ea89edb43db21277cbc6c559ccd9b43282aee5cd9d715f5a705d3505" shape="plaintext"];
  "sha256:6dbd5673a18a4543fe226ba004320b04c1a3fe06550b5e99ad5d07b03040aeec" -> "sha256:ea911cdf0663673fb82c1d566b5598bfa187ead396c60ddd698daf69f6f10ea8" [label=""];
  "sha256:ea911cdf0663673fb82c1d566b5598bfa187ead396c60ddd698daf69f6f10ea8" -> "sha256:4703dbff0d8a6b9e3206571b24e42df4a87b4df41a356955525c7bf4c5c18c4e" [label=""];
  "sha256:4703dbff0d8a6b9e3206571b24e42df4a87b4df41a356955525c7bf4c5c18c4e" -> "sha256:18ecd2ae68310b90baf10397aa3404ffb3176b9ef5de4d12a5aefacb5d5ad953" [label=""];
  "sha256:c7d53d2d9c21f7692cc5d143d47228350cfe8c1158c8fa50d75dbe7ef1547360" -> "sha256:18ecd2ae68310b90baf10397aa3404ffb3176b9ef5de4d12a5aefacb5d5ad953" [label=""];
  "sha256:18ecd2ae68310b90baf10397aa3404ffb3176b9ef5de4d12a5aefacb5d5ad953" -> "sha256:39bdf061c08503e1aab2548353fc6d83d1218f4fb4353c408af0d79abce3fbd3" [label=""];
  "sha256:39bdf061c08503e1aab2548353fc6d83d1218f4fb4353c408af0d79abce3fbd3" -> "sha256:87d55300ea89edb43db21277cbc6c559ccd9b43282aee5cd9d715f5a705d3505" [label=""];
}

