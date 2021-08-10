[app/sources/345371366.Dockerfile]
digraph {
  "sha256:68877d52bbff28c7f31fa2eaf79afbb2631738a12d3eea0c8b4617777d75cc46" [label="docker-image://docker.io/balenalib/ccon-01-fedora:29-build" shape="ellipse"];
  "sha256:c3cfcca5a2388b2bef581203ea64475ef0071c5561a5a4ff4fe7d6ec5716fe88" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:43ca2f17ace2d6315f75541097ac748ca7adbd69d15056046e0fd505ab9f137b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a8fe266f56e1fea72f850be723a4d8b670f218f58095459314683007efbef70a" [label="mkdir{path=/go}" shape="note"];
  "sha256:97794d959e07dff6562aa0152aa04c837803b183a55980d27d5306deadccdaaf" [label="sha256:97794d959e07dff6562aa0152aa04c837803b183a55980d27d5306deadccdaaf" shape="plaintext"];
  "sha256:68877d52bbff28c7f31fa2eaf79afbb2631738a12d3eea0c8b4617777d75cc46" -> "sha256:c3cfcca5a2388b2bef581203ea64475ef0071c5561a5a4ff4fe7d6ec5716fe88" [label=""];
  "sha256:c3cfcca5a2388b2bef581203ea64475ef0071c5561a5a4ff4fe7d6ec5716fe88" -> "sha256:43ca2f17ace2d6315f75541097ac748ca7adbd69d15056046e0fd505ab9f137b" [label=""];
  "sha256:43ca2f17ace2d6315f75541097ac748ca7adbd69d15056046e0fd505ab9f137b" -> "sha256:a8fe266f56e1fea72f850be723a4d8b670f218f58095459314683007efbef70a" [label=""];
  "sha256:a8fe266f56e1fea72f850be723a4d8b670f218f58095459314683007efbef70a" -> "sha256:97794d959e07dff6562aa0152aa04c837803b183a55980d27d5306deadccdaaf" [label=""];
}

