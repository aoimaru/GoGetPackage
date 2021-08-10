[app/sources/258178535.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:67f502cbbdf7dcd42bf6aec2dc35d0c9a9ba6e986d851178c71212916c7b8ab5" [label="/bin/sh -c mkdir -p /opt/qmsk-dmx /opt/qmsk-dmx/bin" shape="box"];
  "sha256:11adc08997206fd57a0a7c317f3aa3d4b1af7062ddc103a4a826976194ac73f6" [label="docker-image://docker.io/library/golang:1.9.4" shape="ellipse"];
  "sha256:ec03ddec2952d6c1927c2616be6bfedf3b6aec4f0aa043205d15b0d067756cac" [label="/bin/sh -c curl -L -o /tmp/dep-linux-amd64 https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 && install -m 0755 /tmp/dep-linux-amd64 /usr/local/bin/dep" shape="box"];
  "sha256:4ba7d27dcab0a64ec2a977e65fe390b6070e978958db16c30592c741b5489581" [label="mkdir{path=/go/src/github.com/qmsk/dmx}" shape="note"];
  "sha256:fc7618eb09dd3df171df41df8c713968412140109a3aa9cc0f784a8e6296806b" [label="local://context" shape="ellipse"];
  "sha256:2c7d7f1d37bb9b819d6f88c217588dd1470b135cf5e18da8910b3286162e500c" [label="copy{src=/Gopkg.*, dest=/go/src/github.com/qmsk/dmx/}" shape="note"];
  "sha256:c59e36472855c64e133fc6f127c344e1e54d55e98f2c9822bf037b42b9628564" [label="/bin/sh -c dep ensure -vendor-only" shape="box"];
  "sha256:7894d770db4c8b9c5a9c6e3c217322dc1e1b8b7375bd3e33b4812e7073547acc" [label="copy{src=/, dest=/go/src/github.com/qmsk/dmx/}" shape="note"];
  "sha256:2d111a0a8c196cffb7e4f241bf1abf2db781c6d18e01f58a2e66c0dde1d7f02b" [label="/bin/sh -c go install -v ./cmd/..." shape="box"];
  "sha256:6348f54885a093977e3a5e7201603956c3802fcfe268df9d5662eca21fea89d5" [label="copy{src=/go/bin/qmsk-dmx, dest=/opt/qmsk-dmx/bin/}" shape="note"];
  "sha256:16de4623443bcb21afe490c5c671dc5a5f030b57a76b48279bf40077a4ea03e2" [label="docker-image://docker.io/library/node:9.8.0" shape="ellipse"];
  "sha256:84d526d447f625e860196dddfabf2f36e0486aef2f4cd667de52453897523d91" [label="mkdir{path=/go/src/github.com/qmsk/dmx/web}" shape="note"];
  "sha256:79c14bb3d0c04b39348ce8e40eb2036faebc1bcf2b24c8faa0cd1dbf60ae5410" [label="copy{src=/web/package.json, dest=/go/src/github.com/qmsk/dmx/web/}" shape="note"];
  "sha256:a8bf9b076c09a70988ae1dec58920b8ac607e2c002f5f95d9f34a1a56abd7be0" [label="/bin/sh -c npm install" shape="box"];
  "sha256:fcea2c47b6339e94da8725053e8561fd16c45ebfad310c1b8796e52a2a4c2e17" [label="copy{src=/web, dest=/go/src/github.com/qmsk/dmx/web/}" shape="note"];
  "sha256:ee0b0989e84e2b2409366006e2695f0264e7bb789a5e0b15f43d60b4090be1ba" [label="/bin/sh -c ./node_modules/typescript/bin/tsc" shape="box"];
  "sha256:eca1fd2ae1a62b3d200040b172a0b9a9bd375878ec15bdbfa7a71efa765d80b9" [label="copy{src=/go/src/github.com/qmsk/dmx/web, dest=/opt/qmsk-dmx/web}" shape="note"];
  "sha256:cf5cf30b36515e1888a96fcae73fbc4d84c834253ffcaadbc295f013ebb92ad2" [label="copy{src=/library, dest=/opt/qmsk-dmx/library}" shape="note"];
  "sha256:b10e49d3044d75dafcd3f3c677aeb0d2fac80b6b4f342cd039acbe16289f6ab0" [label="mkdir{path=/opt/qmsk-dmx}" shape="note"];
  "sha256:48fdc63df4a255d810c2f8e28be6b3b81162a7670743b6d38034976101c1548c" [label="sha256:48fdc63df4a255d810c2f8e28be6b3b81162a7670743b6d38034976101c1548c" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:67f502cbbdf7dcd42bf6aec2dc35d0c9a9ba6e986d851178c71212916c7b8ab5" [label=""];
  "sha256:11adc08997206fd57a0a7c317f3aa3d4b1af7062ddc103a4a826976194ac73f6" -> "sha256:ec03ddec2952d6c1927c2616be6bfedf3b6aec4f0aa043205d15b0d067756cac" [label=""];
  "sha256:ec03ddec2952d6c1927c2616be6bfedf3b6aec4f0aa043205d15b0d067756cac" -> "sha256:4ba7d27dcab0a64ec2a977e65fe390b6070e978958db16c30592c741b5489581" [label=""];
  "sha256:4ba7d27dcab0a64ec2a977e65fe390b6070e978958db16c30592c741b5489581" -> "sha256:2c7d7f1d37bb9b819d6f88c217588dd1470b135cf5e18da8910b3286162e500c" [label=""];
  "sha256:fc7618eb09dd3df171df41df8c713968412140109a3aa9cc0f784a8e6296806b" -> "sha256:2c7d7f1d37bb9b819d6f88c217588dd1470b135cf5e18da8910b3286162e500c" [label=""];
  "sha256:2c7d7f1d37bb9b819d6f88c217588dd1470b135cf5e18da8910b3286162e500c" -> "sha256:c59e36472855c64e133fc6f127c344e1e54d55e98f2c9822bf037b42b9628564" [label=""];
  "sha256:c59e36472855c64e133fc6f127c344e1e54d55e98f2c9822bf037b42b9628564" -> "sha256:7894d770db4c8b9c5a9c6e3c217322dc1e1b8b7375bd3e33b4812e7073547acc" [label=""];
  "sha256:fc7618eb09dd3df171df41df8c713968412140109a3aa9cc0f784a8e6296806b" -> "sha256:7894d770db4c8b9c5a9c6e3c217322dc1e1b8b7375bd3e33b4812e7073547acc" [label=""];
  "sha256:7894d770db4c8b9c5a9c6e3c217322dc1e1b8b7375bd3e33b4812e7073547acc" -> "sha256:2d111a0a8c196cffb7e4f241bf1abf2db781c6d18e01f58a2e66c0dde1d7f02b" [label=""];
  "sha256:67f502cbbdf7dcd42bf6aec2dc35d0c9a9ba6e986d851178c71212916c7b8ab5" -> "sha256:6348f54885a093977e3a5e7201603956c3802fcfe268df9d5662eca21fea89d5" [label=""];
  "sha256:2d111a0a8c196cffb7e4f241bf1abf2db781c6d18e01f58a2e66c0dde1d7f02b" -> "sha256:6348f54885a093977e3a5e7201603956c3802fcfe268df9d5662eca21fea89d5" [label=""];
  "sha256:16de4623443bcb21afe490c5c671dc5a5f030b57a76b48279bf40077a4ea03e2" -> "sha256:84d526d447f625e860196dddfabf2f36e0486aef2f4cd667de52453897523d91" [label=""];
  "sha256:84d526d447f625e860196dddfabf2f36e0486aef2f4cd667de52453897523d91" -> "sha256:79c14bb3d0c04b39348ce8e40eb2036faebc1bcf2b24c8faa0cd1dbf60ae5410" [label=""];
  "sha256:fc7618eb09dd3df171df41df8c713968412140109a3aa9cc0f784a8e6296806b" -> "sha256:79c14bb3d0c04b39348ce8e40eb2036faebc1bcf2b24c8faa0cd1dbf60ae5410" [label=""];
  "sha256:79c14bb3d0c04b39348ce8e40eb2036faebc1bcf2b24c8faa0cd1dbf60ae5410" -> "sha256:a8bf9b076c09a70988ae1dec58920b8ac607e2c002f5f95d9f34a1a56abd7be0" [label=""];
  "sha256:a8bf9b076c09a70988ae1dec58920b8ac607e2c002f5f95d9f34a1a56abd7be0" -> "sha256:fcea2c47b6339e94da8725053e8561fd16c45ebfad310c1b8796e52a2a4c2e17" [label=""];
  "sha256:fc7618eb09dd3df171df41df8c713968412140109a3aa9cc0f784a8e6296806b" -> "sha256:fcea2c47b6339e94da8725053e8561fd16c45ebfad310c1b8796e52a2a4c2e17" [label=""];
  "sha256:fcea2c47b6339e94da8725053e8561fd16c45ebfad310c1b8796e52a2a4c2e17" -> "sha256:ee0b0989e84e2b2409366006e2695f0264e7bb789a5e0b15f43d60b4090be1ba" [label=""];
  "sha256:6348f54885a093977e3a5e7201603956c3802fcfe268df9d5662eca21fea89d5" -> "sha256:eca1fd2ae1a62b3d200040b172a0b9a9bd375878ec15bdbfa7a71efa765d80b9" [label=""];
  "sha256:ee0b0989e84e2b2409366006e2695f0264e7bb789a5e0b15f43d60b4090be1ba" -> "sha256:eca1fd2ae1a62b3d200040b172a0b9a9bd375878ec15bdbfa7a71efa765d80b9" [label=""];
  "sha256:eca1fd2ae1a62b3d200040b172a0b9a9bd375878ec15bdbfa7a71efa765d80b9" -> "sha256:cf5cf30b36515e1888a96fcae73fbc4d84c834253ffcaadbc295f013ebb92ad2" [label=""];
  "sha256:fc7618eb09dd3df171df41df8c713968412140109a3aa9cc0f784a8e6296806b" -> "sha256:cf5cf30b36515e1888a96fcae73fbc4d84c834253ffcaadbc295f013ebb92ad2" [label=""];
  "sha256:cf5cf30b36515e1888a96fcae73fbc4d84c834253ffcaadbc295f013ebb92ad2" -> "sha256:b10e49d3044d75dafcd3f3c677aeb0d2fac80b6b4f342cd039acbe16289f6ab0" [label=""];
  "sha256:b10e49d3044d75dafcd3f3c677aeb0d2fac80b6b4f342cd039acbe16289f6ab0" -> "sha256:48fdc63df4a255d810c2f8e28be6b3b81162a7670743b6d38034976101c1548c" [label=""];
}

