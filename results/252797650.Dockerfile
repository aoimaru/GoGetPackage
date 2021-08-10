[app/sources/252797650.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:12bda8f2a3c6ef6e6d26f7cb69cdee7123c0ceb1087b6065412d2775a17c2c29" [label="local://context" shape="ellipse"];
  "sha256:21b3279cbd25de4e97e9c5ecf56d0bd0020c5a748bb7d5435ab4a021371ef991" [label="copy{src=/, dest=/coco-traffic-analyser/}" shape="note"];
  "sha256:a5e6275670222fbb6cd05099a42fae00ca0f5a74860a7539730944db21677ed1" [label="/bin/sh -c apk --update add git bzr go g++ libpcap-dev && export GOPATH=/gopath && REPO_PATH=\"github.com/Financial-Times/coco-traffic-analyser\" && mkdir -p $GOPATH/src/${REPO_PATH} && mv /coco-traffic-analyser/* $GOPATH/src/${REPO_PATH} && cd $GOPATH/src/${REPO_PATH} && go get -t ./... && go build && mv coco-traffic-analyser /coco-traffic-analyser-app && rm -rf /coco-traffic-analyser && mv /coco-traffic-analyser-app /coco-traffic-analyser && apk del go git bzr && rm -rf $GOPATH /var/cache/apk/*" shape="box"];
  "sha256:02009c3418a7e066a3170dd4baca15534543139fa73b8742331dce79501216c2" [label="sha256:02009c3418a7e066a3170dd4baca15534543139fa73b8742331dce79501216c2" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:21b3279cbd25de4e97e9c5ecf56d0bd0020c5a748bb7d5435ab4a021371ef991" [label=""];
  "sha256:12bda8f2a3c6ef6e6d26f7cb69cdee7123c0ceb1087b6065412d2775a17c2c29" -> "sha256:21b3279cbd25de4e97e9c5ecf56d0bd0020c5a748bb7d5435ab4a021371ef991" [label=""];
  "sha256:21b3279cbd25de4e97e9c5ecf56d0bd0020c5a748bb7d5435ab4a021371ef991" -> "sha256:a5e6275670222fbb6cd05099a42fae00ca0f5a74860a7539730944db21677ed1" [label=""];
  "sha256:a5e6275670222fbb6cd05099a42fae00ca0f5a74860a7539730944db21677ed1" -> "sha256:02009c3418a7e066a3170dd4baca15534543139fa73b8742331dce79501216c2" [label=""];
}

