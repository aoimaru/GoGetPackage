[app/sources/470520866.Dockerfile]
digraph {
  "sha256:955295aee70f8f9ce9679dd2755f2956d2d95a69b426afd4e5900433ccaf7060" [label="docker-image://docker.io/aarch64/debian:jessie@sha256:903b5655da8689b6cdc7465ea118f674d4f1820a52109aeb2623b1c8e6225420" shape="ellipse"];
  "sha256:e8be84468e73e1c6ddb7b8745d61a56942689c524eade6668c6abd5ce5d3a550" [label="/bin/sh -c echo deb http://ftp.debian.org/debian jessie-backports main > /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:6516b8073eff39b3a4cb1847ceb25cf6c9ff4a9b2701032e1c71bc33d07a4b83" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev pkg-config vim-common libsystemd-journal-dev golang-1.6-go libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:40a010b3f1d2792ad65e9860bb6a357edcc5c8b5c66ae9992b553646a359bfcc" [label="/bin/sh -c update-alternatives --install /usr/bin/go go /usr/lib/go-1.6/bin/go 100" shape="box"];
  "sha256:5f9786f9caa49c2256fa03e32f0b1331e802262e1183503437e832665db30b58" [label="/bin/sh -c mkdir /usr/src/go && curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 \t&& cd /usr/src/go/src \t&& GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:6e8383158565f94a32f6c5e16939cb883f278aa806e5430f2e64dee327d01dcb" [label="sha256:6e8383158565f94a32f6c5e16939cb883f278aa806e5430f2e64dee327d01dcb" shape="plaintext"];
  "sha256:955295aee70f8f9ce9679dd2755f2956d2d95a69b426afd4e5900433ccaf7060" -> "sha256:e8be84468e73e1c6ddb7b8745d61a56942689c524eade6668c6abd5ce5d3a550" [label=""];
  "sha256:e8be84468e73e1c6ddb7b8745d61a56942689c524eade6668c6abd5ce5d3a550" -> "sha256:6516b8073eff39b3a4cb1847ceb25cf6c9ff4a9b2701032e1c71bc33d07a4b83" [label=""];
  "sha256:6516b8073eff39b3a4cb1847ceb25cf6c9ff4a9b2701032e1c71bc33d07a4b83" -> "sha256:40a010b3f1d2792ad65e9860bb6a357edcc5c8b5c66ae9992b553646a359bfcc" [label=""];
  "sha256:40a010b3f1d2792ad65e9860bb6a357edcc5c8b5c66ae9992b553646a359bfcc" -> "sha256:5f9786f9caa49c2256fa03e32f0b1331e802262e1183503437e832665db30b58" [label=""];
  "sha256:5f9786f9caa49c2256fa03e32f0b1331e802262e1183503437e832665db30b58" -> "sha256:6e8383158565f94a32f6c5e16939cb883f278aa806e5430f2e64dee327d01dcb" [label=""];
}

