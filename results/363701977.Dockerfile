[app/sources/363701977.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:bbd22434054f5f36fc9821ba13951181e72d0dd7f1bf39b2cf713b821f94ca1c" [label="/bin/sh -c apt-get update && apt-get -y install apt-transport-https" shape="box"];
  "sha256:4cb7609bbaed9623d6556b131805f6e1de898ab20b3c24e72222132c69ed402e" [label="/bin/sh -c curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -" shape="box"];
  "sha256:696adb5fad7c59b6d8309a7ecc46fb12838114b7cec629c8537061010d3335d8" [label="/bin/sh -c echo 'deb https://deb.nodesource.com/node_4.x jessie main' > /etc/apt/sources.list.d/nodesource.list" shape="box"];
  "sha256:bf64d81ab66eb86b263368f1b582e5bf3fddfdf39564abc8fbf4174eeed65eb2" [label="/bin/sh -c apt-get update && apt-get -y install nodejs" shape="box"];
  "sha256:bde278b7bdb1ff99a8b64714b795a4252ef9592df0a27dd4d2ae10c969aa78b5" [label="/bin/sh -c mkdir -p /go/src/gitlab.com/tamasd && cd /go/src/gitlab.com/tamasd && git clone --branch 1.0-alpha.0 https://gitlab.com/tamasd/ab.git" shape="box"];
  "sha256:fa5010a283c74efe2c33042bec4af97d91e501acf4084f9ef8a556f6732f5308" [label="/bin/sh -c cd /go/src/gitlab.com/tamasd/ab && go get ./... ; exit 0" shape="box"];
  "sha256:97a99834041908d53aa234dfb524da04ced1aead6e0f5b3e08c1fc23c7aa6b79" [label="/bin/sh -c go get github.com/Pronovix/walkhub-service" shape="box"];
  "sha256:32444f52872108dc16f07268835210a9ce25223c8693ba875485468687e81d00" [label="mkdir{path=/go/src/github.com/Pronovix/walkhub-service}" shape="note"];
  "sha256:98741dbd0f34b403ed539b4cdf6e56d33866ce5c51089832289d6887e511471a" [label="/bin/sh -c echo '{}' > config.json" shape="box"];
  "sha256:31d4d4867727adc78b9a37ad5419b42998671e4df7acbcdf3fd4b1196a44d093" [label="/bin/sh -c npm install" shape="box"];
  "sha256:d9df7bd591f8c637a39da555c4b718ad3bd310d705aba948691ffaca33e7af63" [label="/bin/sh -c go install github.com/Pronovix/walkhub-service/cmd/walkhub" shape="box"];
  "sha256:eb9740cb68e4d1c4786569819dda59993c6a35f48c975f3b689be1f58907dc84" [label="sha256:eb9740cb68e4d1c4786569819dda59993c6a35f48c975f3b689be1f58907dc84" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:bbd22434054f5f36fc9821ba13951181e72d0dd7f1bf39b2cf713b821f94ca1c" [label=""];
  "sha256:bbd22434054f5f36fc9821ba13951181e72d0dd7f1bf39b2cf713b821f94ca1c" -> "sha256:4cb7609bbaed9623d6556b131805f6e1de898ab20b3c24e72222132c69ed402e" [label=""];
  "sha256:4cb7609bbaed9623d6556b131805f6e1de898ab20b3c24e72222132c69ed402e" -> "sha256:696adb5fad7c59b6d8309a7ecc46fb12838114b7cec629c8537061010d3335d8" [label=""];
  "sha256:696adb5fad7c59b6d8309a7ecc46fb12838114b7cec629c8537061010d3335d8" -> "sha256:bf64d81ab66eb86b263368f1b582e5bf3fddfdf39564abc8fbf4174eeed65eb2" [label=""];
  "sha256:bf64d81ab66eb86b263368f1b582e5bf3fddfdf39564abc8fbf4174eeed65eb2" -> "sha256:bde278b7bdb1ff99a8b64714b795a4252ef9592df0a27dd4d2ae10c969aa78b5" [label=""];
  "sha256:bde278b7bdb1ff99a8b64714b795a4252ef9592df0a27dd4d2ae10c969aa78b5" -> "sha256:fa5010a283c74efe2c33042bec4af97d91e501acf4084f9ef8a556f6732f5308" [label=""];
  "sha256:fa5010a283c74efe2c33042bec4af97d91e501acf4084f9ef8a556f6732f5308" -> "sha256:97a99834041908d53aa234dfb524da04ced1aead6e0f5b3e08c1fc23c7aa6b79" [label=""];
  "sha256:97a99834041908d53aa234dfb524da04ced1aead6e0f5b3e08c1fc23c7aa6b79" -> "sha256:32444f52872108dc16f07268835210a9ce25223c8693ba875485468687e81d00" [label=""];
  "sha256:32444f52872108dc16f07268835210a9ce25223c8693ba875485468687e81d00" -> "sha256:98741dbd0f34b403ed539b4cdf6e56d33866ce5c51089832289d6887e511471a" [label=""];
  "sha256:98741dbd0f34b403ed539b4cdf6e56d33866ce5c51089832289d6887e511471a" -> "sha256:31d4d4867727adc78b9a37ad5419b42998671e4df7acbcdf3fd4b1196a44d093" [label=""];
  "sha256:31d4d4867727adc78b9a37ad5419b42998671e4df7acbcdf3fd4b1196a44d093" -> "sha256:d9df7bd591f8c637a39da555c4b718ad3bd310d705aba948691ffaca33e7af63" [label=""];
  "sha256:d9df7bd591f8c637a39da555c4b718ad3bd310d705aba948691ffaca33e7af63" -> "sha256:eb9740cb68e4d1c4786569819dda59993c6a35f48c975f3b689be1f58907dc84" [label=""];
}

