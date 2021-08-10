[app/sources/264263784.Dockerfile]
digraph {
  "sha256:a147c03cc94ef5af27fc38df817a56ccbc17d1b444620feb2b70b1aa069821ce" [label="docker-image://docker.io/library/golang:1.9-stretch" shape="ellipse"];
  "sha256:feddeb07542a3ce2ae50b3d4c6d3f47b8f33755a9cdd93e9ecbe5dcec6bba05b" [label="local://context" shape="ellipse"];
  "sha256:018f1fd4b8d38d97916334cccf1d978de74f9ae5d45d665d3536d88457261408" [label="copy{src=/package.json, dest=/go/src/github.com/ipfs/go-ipfs/package.json}" shape="note"];
  "sha256:96c6d83cb8bccda18c5f4963d16870800c4a4e504354ec0296e4cafd067695be" [label="/bin/sh -c set -x   && go get github.com/whyrusleeping/gx   && go get github.com/whyrusleeping/gx-go   && ([ -z \"$GX_IPFS\" ] || echo $GX_IPFS > /root/.ipfs/api)   && cd $SRC_DIR   && gx install" shape="box"];
  "sha256:5d38acb72d7af7ecbea855bb345e9bf11d97bf1d6ae9d351e41142681e0ed16e" [label="copy{src=/, dest=/go/src/github.com/ipfs/go-ipfs}" shape="note"];
  "sha256:701563a8a7538daaf69e6ef025b0d1af1f787e3e4b626b21dbef0c581cc432a8" [label="/bin/sh -c set -x   && cd $SRC_DIR   && mkdir .git/objects   && make build   && mv cmd/ipfs/ipfs /usr/local/bin/ipfs   && mv bin/container_daemon /usr/local/bin/start_ipfs" shape="box"];
  "sha256:4eb64252e19cd1672691f59bda166b9e50ef4c882acf9144ef8b7cdde9931cf7" [label="/bin/sh -c set -x   && cd /tmp   && git clone https://github.com/ncopa/su-exec.git   && cd su-exec   && git checkout -q $SUEXEC_VERSION   && make   && cd /tmp   && wget -q -O tini https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini   && chmod +x tini   && mv su-exec/su-exec tini /sbin/ # Install them" shape="box"];
  "sha256:30aabbf64112e104682550f57904ba7fa682f793835fe56a197478159df74253" [label="/bin/sh -c mkdir -p $IPFS_PATH   && useradd -s /usr/sbin/nologin -d $IPFS_PATH -u 1000 -G users ipfs   && chown ipfs:users $IPFS_PATH" shape="box"];
  "sha256:0bd08bfb43991357d1aa00473277b8baa5cd72dd4206ea9269985341dcbbd1ae" [label="sha256:0bd08bfb43991357d1aa00473277b8baa5cd72dd4206ea9269985341dcbbd1ae" shape="plaintext"];
  "sha256:a147c03cc94ef5af27fc38df817a56ccbc17d1b444620feb2b70b1aa069821ce" -> "sha256:018f1fd4b8d38d97916334cccf1d978de74f9ae5d45d665d3536d88457261408" [label=""];
  "sha256:feddeb07542a3ce2ae50b3d4c6d3f47b8f33755a9cdd93e9ecbe5dcec6bba05b" -> "sha256:018f1fd4b8d38d97916334cccf1d978de74f9ae5d45d665d3536d88457261408" [label=""];
  "sha256:018f1fd4b8d38d97916334cccf1d978de74f9ae5d45d665d3536d88457261408" -> "sha256:96c6d83cb8bccda18c5f4963d16870800c4a4e504354ec0296e4cafd067695be" [label=""];
  "sha256:96c6d83cb8bccda18c5f4963d16870800c4a4e504354ec0296e4cafd067695be" -> "sha256:5d38acb72d7af7ecbea855bb345e9bf11d97bf1d6ae9d351e41142681e0ed16e" [label=""];
  "sha256:feddeb07542a3ce2ae50b3d4c6d3f47b8f33755a9cdd93e9ecbe5dcec6bba05b" -> "sha256:5d38acb72d7af7ecbea855bb345e9bf11d97bf1d6ae9d351e41142681e0ed16e" [label=""];
  "sha256:5d38acb72d7af7ecbea855bb345e9bf11d97bf1d6ae9d351e41142681e0ed16e" -> "sha256:701563a8a7538daaf69e6ef025b0d1af1f787e3e4b626b21dbef0c581cc432a8" [label=""];
  "sha256:701563a8a7538daaf69e6ef025b0d1af1f787e3e4b626b21dbef0c581cc432a8" -> "sha256:4eb64252e19cd1672691f59bda166b9e50ef4c882acf9144ef8b7cdde9931cf7" [label=""];
  "sha256:4eb64252e19cd1672691f59bda166b9e50ef4c882acf9144ef8b7cdde9931cf7" -> "sha256:30aabbf64112e104682550f57904ba7fa682f793835fe56a197478159df74253" [label=""];
  "sha256:30aabbf64112e104682550f57904ba7fa682f793835fe56a197478159df74253" -> "sha256:0bd08bfb43991357d1aa00473277b8baa5cd72dd4206ea9269985341dcbbd1ae" [label=""];
}

