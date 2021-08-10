[app/sources/344256084.Dockerfile]
digraph {
  "sha256:076c6987b5e03aeda7385c141b3e2a4be317a0c7ec3c81d14a2331c40995ef94" [label="local://context" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:85de3a651b91d24f37defdb3897d4a41f3db9e3abb29d031bf0a23fdd40c5b14" [label="/bin/sh -c npm install -g npm@6 && rm -rf ~app/.npm /tmp/*" shape="box"];
  "sha256:af7683cfdf8bec66ae4a8d22b7833a5773f6e407d664ccc2a5d0e6f935b0854d" [label="/bin/sh -c apk add --no-cache make git gcc g++ python" shape="box"];
  "sha256:a7ee4f3fcb3809228495dc5e379fb567ed2253f76a61a7fe4d242b5ddfa5dab9" [label="/bin/sh -c addgroup -g 10001 app &&     adduser -D -G app -h /app -u 10001 app" shape="box"];
  "sha256:c9ae0f0f352e479ecd0d809511ef69ec83d6c858b4f3b793f92e5bb7bc9df667" [label="mkdir{path=/app}" shape="note"];
  "sha256:117d546efbc70a62fcc1bb27f4de60887185e6c976baf7aabbb5be501cf632e2" [label="copy{src=/npm-shrinkwrap.json, dest=/app/npm-shrinkwrap.json}" shape="note"];
  "sha256:488fe8677ed8c17fbc220ea17e06f3b05d87135dcd15a3a470f8378f90a748fc" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:21394489d76d5fcbc0defac1d062c9877ff2bd3e362b50b561a8c46d01cc6abc" [label="/bin/sh -c npm ci --production && rm -rf ~app/.npm /tmp/*" shape="box"];
  "sha256:7d06e475c9ca2be3054dfff8a6ad874951f76ed2b0e81a8af8bda8e43dcd5a6f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:69a98c76583ff1a47d24736dfbb0d95f444281a8cb3a164149fea2797e2f3af3" [label="sha256:69a98c76583ff1a47d24736dfbb0d95f444281a8cb3a164149fea2797e2f3af3" shape="plaintext"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:85de3a651b91d24f37defdb3897d4a41f3db9e3abb29d031bf0a23fdd40c5b14" [label=""];
  "sha256:85de3a651b91d24f37defdb3897d4a41f3db9e3abb29d031bf0a23fdd40c5b14" -> "sha256:af7683cfdf8bec66ae4a8d22b7833a5773f6e407d664ccc2a5d0e6f935b0854d" [label=""];
  "sha256:af7683cfdf8bec66ae4a8d22b7833a5773f6e407d664ccc2a5d0e6f935b0854d" -> "sha256:a7ee4f3fcb3809228495dc5e379fb567ed2253f76a61a7fe4d242b5ddfa5dab9" [label=""];
  "sha256:a7ee4f3fcb3809228495dc5e379fb567ed2253f76a61a7fe4d242b5ddfa5dab9" -> "sha256:c9ae0f0f352e479ecd0d809511ef69ec83d6c858b4f3b793f92e5bb7bc9df667" [label=""];
  "sha256:c9ae0f0f352e479ecd0d809511ef69ec83d6c858b4f3b793f92e5bb7bc9df667" -> "sha256:117d546efbc70a62fcc1bb27f4de60887185e6c976baf7aabbb5be501cf632e2" [label=""];
  "sha256:076c6987b5e03aeda7385c141b3e2a4be317a0c7ec3c81d14a2331c40995ef94" -> "sha256:117d546efbc70a62fcc1bb27f4de60887185e6c976baf7aabbb5be501cf632e2" [label=""];
  "sha256:117d546efbc70a62fcc1bb27f4de60887185e6c976baf7aabbb5be501cf632e2" -> "sha256:488fe8677ed8c17fbc220ea17e06f3b05d87135dcd15a3a470f8378f90a748fc" [label=""];
  "sha256:076c6987b5e03aeda7385c141b3e2a4be317a0c7ec3c81d14a2331c40995ef94" -> "sha256:488fe8677ed8c17fbc220ea17e06f3b05d87135dcd15a3a470f8378f90a748fc" [label=""];
  "sha256:488fe8677ed8c17fbc220ea17e06f3b05d87135dcd15a3a470f8378f90a748fc" -> "sha256:21394489d76d5fcbc0defac1d062c9877ff2bd3e362b50b561a8c46d01cc6abc" [label=""];
  "sha256:21394489d76d5fcbc0defac1d062c9877ff2bd3e362b50b561a8c46d01cc6abc" -> "sha256:7d06e475c9ca2be3054dfff8a6ad874951f76ed2b0e81a8af8bda8e43dcd5a6f" [label=""];
  "sha256:076c6987b5e03aeda7385c141b3e2a4be317a0c7ec3c81d14a2331c40995ef94" -> "sha256:7d06e475c9ca2be3054dfff8a6ad874951f76ed2b0e81a8af8bda8e43dcd5a6f" [label=""];
  "sha256:7d06e475c9ca2be3054dfff8a6ad874951f76ed2b0e81a8af8bda8e43dcd5a6f" -> "sha256:69a98c76583ff1a47d24736dfbb0d95f444281a8cb3a164149fea2797e2f3af3" [label=""];
}

