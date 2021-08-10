[app/sources/302816058.Dockerfile]
digraph {
  "sha256:4220a8a9108024fb9ff4264afd5b741516e939ba548fdaa03ccddb8fe5ffaaa9" [label="docker-image://docker.io/fnproject/base:latest" shape="ellipse"];
  "sha256:ccf6ba7be97c74d3b01b7bd7dbfe0da9397d34f67348395c8b962c3038280263" [label="/bin/sh -c apk update && apk upgrade   && apk add libstdc++   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c0d5a986f97c1e839ad342cd47926ff7a496e73a6b29bd0525c74868025ef414" [label="sha256:c0d5a986f97c1e839ad342cd47926ff7a496e73a6b29bd0525c74868025ef414" shape="plaintext"];
  "sha256:4220a8a9108024fb9ff4264afd5b741516e939ba548fdaa03ccddb8fe5ffaaa9" -> "sha256:ccf6ba7be97c74d3b01b7bd7dbfe0da9397d34f67348395c8b962c3038280263" [label=""];
  "sha256:ccf6ba7be97c74d3b01b7bd7dbfe0da9397d34f67348395c8b962c3038280263" -> "sha256:c0d5a986f97c1e839ad342cd47926ff7a496e73a6b29bd0525c74868025ef414" [label=""];
}

