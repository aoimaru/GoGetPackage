[app/sources/345361602.Dockerfile]
digraph {
  "sha256:5cce7929a96ca6f5f22c06ebac195eab416bffb4002e77de16231a3a76c735a3" [label="docker-image://docker.io/balenalib/via-vab820-quad-alpine:3.8-build" shape="ellipse"];
  "sha256:81d5fff8b852333d0573bae6d3040e2f79f0bdb089a973ce309aba7b68ccf504" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:409961adbb4b6a033b2711fc2494d5cc1383015f464884f2c2bfb1b7f22432d5" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:11545cc72787550408eb2dcde3fb992ebf9343a42cb18ed33cf601f3b6190cea" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:78d3c150716028e32a4c0ff75752b091cd10b0705ffe9daebd5916b4aba91b1b" [label="mkdir{path=/go}" shape="note"];
  "sha256:c6b9deb423c2d7f6dc10e87573e713defe57126054c3ff1940956d9f77ee3e86" [label="sha256:c6b9deb423c2d7f6dc10e87573e713defe57126054c3ff1940956d9f77ee3e86" shape="plaintext"];
  "sha256:5cce7929a96ca6f5f22c06ebac195eab416bffb4002e77de16231a3a76c735a3" -> "sha256:81d5fff8b852333d0573bae6d3040e2f79f0bdb089a973ce309aba7b68ccf504" [label=""];
  "sha256:81d5fff8b852333d0573bae6d3040e2f79f0bdb089a973ce309aba7b68ccf504" -> "sha256:409961adbb4b6a033b2711fc2494d5cc1383015f464884f2c2bfb1b7f22432d5" [label=""];
  "sha256:409961adbb4b6a033b2711fc2494d5cc1383015f464884f2c2bfb1b7f22432d5" -> "sha256:11545cc72787550408eb2dcde3fb992ebf9343a42cb18ed33cf601f3b6190cea" [label=""];
  "sha256:11545cc72787550408eb2dcde3fb992ebf9343a42cb18ed33cf601f3b6190cea" -> "sha256:78d3c150716028e32a4c0ff75752b091cd10b0705ffe9daebd5916b4aba91b1b" [label=""];
  "sha256:78d3c150716028e32a4c0ff75752b091cd10b0705ffe9daebd5916b4aba91b1b" -> "sha256:c6b9deb423c2d7f6dc10e87573e713defe57126054c3ff1940956d9f77ee3e86" [label=""];
}

