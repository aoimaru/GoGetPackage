[app/sources/241874414.Dockerfile]
digraph {
  "sha256:fb5e4dd4f5163567e34a2b5545ba1a1f618a83ebfd7198b88f4f7dc2f7ad9251" [label="local://context" shape="ellipse"];
  "sha256:a243bf0bf9bf113776274b9efe7336438f77e5130ded81b1ff9ce2d1c11f4082" [label="docker-image://docker.io/armhf/debian:jessie" shape="ellipse"];
  "sha256:bc65ed7a7249c1ad631ee711a24b4bb7c7c52ec56af753a22830eff81220a73e" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:1f1d43273ed7687c342ba37795e48f2c7c39cd86bb68131d57612361279771db" [label="/bin/sh -c apt-get update && apt-get install -y   git   bash   curl   gcc   make" shape="box"];
  "sha256:44ef67bd76b9b5c39abaa69aefbbee4fbcf1b6245ca89ff58067d3ec47c07c37" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\"   | tar -xzC /usr/local" shape="box"];
  "sha256:52689c92d0ff2a4a2413978fb74b4ff83bc4095b991c17ca65314a36be72e175" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:99fe06b75fbc6051c86f8c4517dafcd9811f4cf1764b253a568e85630730f319" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:8f824b093712fe376875afaba062fe191d6ccf4df8c8f57d55c3d189a74e074f" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:8041aef81ee6d0ffe13bd0c3e985ef3e1f9f12a621bce5c943f90452af1b6538" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:2c76936db479b0ac67c3b5d52757caa6d01f0e15535ecd5bf33e765a846d2626" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:e051d0d5de6640ca1983afbbe083617ae5d5fccd663e9a66bdc86afbf78a24a2" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:ea2ac77f31b67b001ea088f980d356fc793c854a94f4bf9a6f710a7e560dd9bc" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:18f1be39b8774cd3975631dd36bff6aeb2ae0dbfb32e6051ebd27cadd9eee385" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:5a633cbb29da3ca0ff9d192a2294e032a57b86ece7a298dc216d32ed6cff82c2" [label="sha256:5a633cbb29da3ca0ff9d192a2294e032a57b86ece7a298dc216d32ed6cff82c2" shape="plaintext"];
  "sha256:a243bf0bf9bf113776274b9efe7336438f77e5130ded81b1ff9ce2d1c11f4082" -> "sha256:bc65ed7a7249c1ad631ee711a24b4bb7c7c52ec56af753a22830eff81220a73e" [label=""];
  "sha256:bc65ed7a7249c1ad631ee711a24b4bb7c7c52ec56af753a22830eff81220a73e" -> "sha256:1f1d43273ed7687c342ba37795e48f2c7c39cd86bb68131d57612361279771db" [label=""];
  "sha256:1f1d43273ed7687c342ba37795e48f2c7c39cd86bb68131d57612361279771db" -> "sha256:44ef67bd76b9b5c39abaa69aefbbee4fbcf1b6245ca89ff58067d3ec47c07c37" [label=""];
  "sha256:44ef67bd76b9b5c39abaa69aefbbee4fbcf1b6245ca89ff58067d3ec47c07c37" -> "sha256:52689c92d0ff2a4a2413978fb74b4ff83bc4095b991c17ca65314a36be72e175" [label=""];
  "sha256:52689c92d0ff2a4a2413978fb74b4ff83bc4095b991c17ca65314a36be72e175" -> "sha256:99fe06b75fbc6051c86f8c4517dafcd9811f4cf1764b253a568e85630730f319" [label=""];
  "sha256:99fe06b75fbc6051c86f8c4517dafcd9811f4cf1764b253a568e85630730f319" -> "sha256:8f824b093712fe376875afaba062fe191d6ccf4df8c8f57d55c3d189a74e074f" [label=""];
  "sha256:fb5e4dd4f5163567e34a2b5545ba1a1f618a83ebfd7198b88f4f7dc2f7ad9251" -> "sha256:8f824b093712fe376875afaba062fe191d6ccf4df8c8f57d55c3d189a74e074f" [label=""];
  "sha256:8f824b093712fe376875afaba062fe191d6ccf4df8c8f57d55c3d189a74e074f" -> "sha256:8041aef81ee6d0ffe13bd0c3e985ef3e1f9f12a621bce5c943f90452af1b6538" [label=""];
  "sha256:fb5e4dd4f5163567e34a2b5545ba1a1f618a83ebfd7198b88f4f7dc2f7ad9251" -> "sha256:8041aef81ee6d0ffe13bd0c3e985ef3e1f9f12a621bce5c943f90452af1b6538" [label=""];
  "sha256:8041aef81ee6d0ffe13bd0c3e985ef3e1f9f12a621bce5c943f90452af1b6538" -> "sha256:2c76936db479b0ac67c3b5d52757caa6d01f0e15535ecd5bf33e765a846d2626" [label=""];
  "sha256:2c76936db479b0ac67c3b5d52757caa6d01f0e15535ecd5bf33e765a846d2626" -> "sha256:e051d0d5de6640ca1983afbbe083617ae5d5fccd663e9a66bdc86afbf78a24a2" [label=""];
  "sha256:e051d0d5de6640ca1983afbbe083617ae5d5fccd663e9a66bdc86afbf78a24a2" -> "sha256:ea2ac77f31b67b001ea088f980d356fc793c854a94f4bf9a6f710a7e560dd9bc" [label=""];
  "sha256:ea2ac77f31b67b001ea088f980d356fc793c854a94f4bf9a6f710a7e560dd9bc" -> "sha256:18f1be39b8774cd3975631dd36bff6aeb2ae0dbfb32e6051ebd27cadd9eee385" [label=""];
  "sha256:18f1be39b8774cd3975631dd36bff6aeb2ae0dbfb32e6051ebd27cadd9eee385" -> "sha256:5a633cbb29da3ca0ff9d192a2294e032a57b86ece7a298dc216d32ed6cff82c2" [label=""];
}

