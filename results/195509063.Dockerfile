[app/sources/195509063.Dockerfile]
digraph {
  "sha256:4a46789e0169512f0b6c600c50ac58b00c58474b539667b967a8f67d2ade62c6" [label="docker-image://docker.io/library/golang:1.7.5-alpine" shape="ellipse"];
  "sha256:44f139a8d3cbee7818368eba0690499a2e3e1b9f4a5e76a7644960385b534350" [label="/bin/sh -c apk add -U git bash curl gcc musl-dev make" shape="box"];
  "sha256:2a1de65c15d5cf7fad14b4470e0695dfd37a5c637edf58cb7fcdbd39209c9650" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:aa2112a8a74f4235ec0e547f0eeed4de2438943a5485e3cebbaf6532fbb7690a" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:23ee57e1f213f5014072710ea2c73a9d4f3b902f2210724ece56d78952b3dc04" [label="local://context" shape="ellipse"];
  "sha256:1efe7d38cf283f5d26699673a183a254d629b6eb7f68cef800a42468c2dd2ecf" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:4fab866c529ae4ed694f08654916579fbf193c13ef25e599029c5c2de1af7f59" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:cc7e5d6cd1ac54b674bf7451cdc9971f57f29639276270b3691b9c7bc6fe4e7a" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:cd3cad53b3902a167aca37f0e9e90d7234a8c033f0c81a8f85c538003a3bb055" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:fa8b44ec5c031784154abd0c763d5f89a04936b516d74c2c6652254a38d99d0c" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:66cc8b187c738b280ddb284ec9c97952386628c6e1a911e5852630f2c0940686" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:9dc0cafdbf30523e5afefb12c797e0e54e00c2e0c3cc3cef1894d5ef6e5dd6dd" [label="sha256:9dc0cafdbf30523e5afefb12c797e0e54e00c2e0c3cc3cef1894d5ef6e5dd6dd" shape="plaintext"];
  "sha256:4a46789e0169512f0b6c600c50ac58b00c58474b539667b967a8f67d2ade62c6" -> "sha256:44f139a8d3cbee7818368eba0690499a2e3e1b9f4a5e76a7644960385b534350" [label=""];
  "sha256:44f139a8d3cbee7818368eba0690499a2e3e1b9f4a5e76a7644960385b534350" -> "sha256:2a1de65c15d5cf7fad14b4470e0695dfd37a5c637edf58cb7fcdbd39209c9650" [label=""];
  "sha256:2a1de65c15d5cf7fad14b4470e0695dfd37a5c637edf58cb7fcdbd39209c9650" -> "sha256:aa2112a8a74f4235ec0e547f0eeed4de2438943a5485e3cebbaf6532fbb7690a" [label=""];
  "sha256:aa2112a8a74f4235ec0e547f0eeed4de2438943a5485e3cebbaf6532fbb7690a" -> "sha256:1efe7d38cf283f5d26699673a183a254d629b6eb7f68cef800a42468c2dd2ecf" [label=""];
  "sha256:23ee57e1f213f5014072710ea2c73a9d4f3b902f2210724ece56d78952b3dc04" -> "sha256:1efe7d38cf283f5d26699673a183a254d629b6eb7f68cef800a42468c2dd2ecf" [label=""];
  "sha256:1efe7d38cf283f5d26699673a183a254d629b6eb7f68cef800a42468c2dd2ecf" -> "sha256:4fab866c529ae4ed694f08654916579fbf193c13ef25e599029c5c2de1af7f59" [label=""];
  "sha256:23ee57e1f213f5014072710ea2c73a9d4f3b902f2210724ece56d78952b3dc04" -> "sha256:4fab866c529ae4ed694f08654916579fbf193c13ef25e599029c5c2de1af7f59" [label=""];
  "sha256:4fab866c529ae4ed694f08654916579fbf193c13ef25e599029c5c2de1af7f59" -> "sha256:cc7e5d6cd1ac54b674bf7451cdc9971f57f29639276270b3691b9c7bc6fe4e7a" [label=""];
  "sha256:cc7e5d6cd1ac54b674bf7451cdc9971f57f29639276270b3691b9c7bc6fe4e7a" -> "sha256:cd3cad53b3902a167aca37f0e9e90d7234a8c033f0c81a8f85c538003a3bb055" [label=""];
  "sha256:cd3cad53b3902a167aca37f0e9e90d7234a8c033f0c81a8f85c538003a3bb055" -> "sha256:fa8b44ec5c031784154abd0c763d5f89a04936b516d74c2c6652254a38d99d0c" [label=""];
  "sha256:fa8b44ec5c031784154abd0c763d5f89a04936b516d74c2c6652254a38d99d0c" -> "sha256:66cc8b187c738b280ddb284ec9c97952386628c6e1a911e5852630f2c0940686" [label=""];
  "sha256:66cc8b187c738b280ddb284ec9c97952386628c6e1a911e5852630f2c0940686" -> "sha256:9dc0cafdbf30523e5afefb12c797e0e54e00c2e0c3cc3cef1894d5ef6e5dd6dd" [label=""];
}

