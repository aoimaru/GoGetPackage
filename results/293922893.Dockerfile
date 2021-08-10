[app/sources/293922893.Dockerfile]
digraph {
  "sha256:410db45c6bc9d81c470b2e8c3e2857090edb85a54b40176623772fd7505d415d" [label="docker-image://docker.io/brimstone/ubuntu:14.04@sha256:f58e9b93e0cbbcb22ca4f995a14447732cce2aa6ff4d66d6112374272790f4e1" shape="ellipse"];
  "sha256:07ddda3a151d8cdf8874480654cb1b531e7306816d213b8d5ccaad3460fc2944" [label="/bin/sh -c apt-get update \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.clean     && apt-get install -y --no-install-recommends git golang ca-certificates     && apt-get clean     && rm -rf /var/lib/apt/lists \t&& go get -v github.com/brimstone/consuldock     && mv $GOPATH/bin/consuldock /usr/local/bin/consuldock \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.dirty \t&& apt-get remove --purge -y $(diff /tmp/dpkg.clean /tmp/dpkg.dirty | awk '/^>/ {print $2}') \t&& rm /tmp/dpkg.* \t&& rm -rf $GOPATH" shape="box"];
  "sha256:c031786fd80f065cb6a65db6d8b5acf9ba3ac1fbadb13f2eda2ea492a6342624" [label="sha256:c031786fd80f065cb6a65db6d8b5acf9ba3ac1fbadb13f2eda2ea492a6342624" shape="plaintext"];
  "sha256:410db45c6bc9d81c470b2e8c3e2857090edb85a54b40176623772fd7505d415d" -> "sha256:07ddda3a151d8cdf8874480654cb1b531e7306816d213b8d5ccaad3460fc2944" [label=""];
  "sha256:07ddda3a151d8cdf8874480654cb1b531e7306816d213b8d5ccaad3460fc2944" -> "sha256:c031786fd80f065cb6a65db6d8b5acf9ba3ac1fbadb13f2eda2ea492a6342624" [label=""];
}

