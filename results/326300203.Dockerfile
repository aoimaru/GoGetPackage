[app/sources/326300203.Dockerfile]
digraph {
  "sha256:478b9e2987a947e1c0bc6fbaeb39e6476e0343bfbcf238683752a9586d6a149b" [label="local://context" shape="ellipse"];
  "sha256:6ab4dfea887909205ba3db1c567c83ed78282b9e2f6a368de8505712b6488be5" [label="docker-image://docker.io/offscale/golang-builder-alpine3.8:latest" shape="ellipse"];
  "sha256:af654e3b2e6496bc69a9cffc0823b5481c3f7d5cc10ca299a627e32221ee2df5" [label="/bin/sh -c export GOPATH=$(go env GOPATH) &&     mkdir -p \"$GOPATH/src/github.com/Fantom-foundation/go-lachesis\" /cp_bin /bin &&     git clone 'https://github.com/SamuelMarks/lachesis' \"$GOPATH/src/github.com/Fantom-foundation/go-lachesis\" &&     cd \"$GOPATH/src/github.com/Fantom-foundation/go-lachesis\" &&     glide install &&     cd \"$GOPATH/src/github.com/Fantom-foundation/go-lachesis/cmd/lachesis\" &&     go build -ldflags \"-linkmode external -extldflags -static -s -w\" -a main.go &&     mv \"$GOPATH/src/github.com/Fantom-foundation/go-lachesis/cmd/lachesis/main\" /cp_bin/lachesis" shape="box"];
  "sha256:106be1d3c9e55a43652b2426abf3b3facfa229dea750eddcf310d493f2f9b2c6" [label="/bin/sh -c apk --no-cache add libc-dev cmake &&     git clone https://github.com/SamuelMarks/docker-static-bin /build/docker-static-bin &&     mkdir /build/docker-static-bin/cmake-build-release &&     cd    /build/docker-static-bin/cmake-build-release &&     TEST_ENABLED=0 cmake -DCMAKE_BUILD_TYPE=Release .. &&     cd /build/docker-static-bin/cmd &&     gcc copy.c      -o \"/cp_bin/copy\"      -Os -static -Wno-implicit-function-declaration &&     gcc env.c       -o \"/cp_bin/env\"       -Os -static -Wno-implicit-function-declaration &&     gcc list.c      -o \"/cp_bin/list\"      -Os -static &&     gcc crappy_sh.c -o \"/cp_bin/crappy_sh\" -Os -static -Wno-implicit-function-declaration -Wno-int-conversion -I./../cmake-build-release &&     strip -s /cp_bin/crappy_sh /cp_bin/copy /cp_bin/env /cp_bin/list /cp_bin/lachesis" shape="box"];
  "sha256:b98f8e072340f92353a80d0fae300d2b795518176a026b6fa7195249f377429f" [label="copy{src=/, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:9cf0c69826ba6580a3e6d675d1fc5d752f00b34eb72653933150a704caa6377f" [label="copy{src=/cp_bin, dest=/bin}" shape="note"];
  "sha256:6dcb73407d6485a1fddcb6b189f99af296fe3a4ed221783412cc0b2e3b97fb5a" [label="copy{src=/peers.json, dest=/lachesis_data_dir/}" shape="note"];
  "sha256:730fd2fc2093f35f40dac19031f8440403cb58e5f2c73e2755384778378b6b41" [label="copy{src=/nodes, dest=/nodes}" shape="note"];
  "sha256:9c0d897f8331346cbae7c3eceec89139e9649bfa729d806c8e0cc65f564a32f9" [label="sha256:9c0d897f8331346cbae7c3eceec89139e9649bfa729d806c8e0cc65f564a32f9" shape="plaintext"];
  "sha256:6ab4dfea887909205ba3db1c567c83ed78282b9e2f6a368de8505712b6488be5" -> "sha256:af654e3b2e6496bc69a9cffc0823b5481c3f7d5cc10ca299a627e32221ee2df5" [label=""];
  "sha256:af654e3b2e6496bc69a9cffc0823b5481c3f7d5cc10ca299a627e32221ee2df5" -> "sha256:106be1d3c9e55a43652b2426abf3b3facfa229dea750eddcf310d493f2f9b2c6" [label=""];
  "sha256:478b9e2987a947e1c0bc6fbaeb39e6476e0343bfbcf238683752a9586d6a149b" -> "sha256:b98f8e072340f92353a80d0fae300d2b795518176a026b6fa7195249f377429f" [label=""];
  "sha256:b98f8e072340f92353a80d0fae300d2b795518176a026b6fa7195249f377429f" -> "sha256:9cf0c69826ba6580a3e6d675d1fc5d752f00b34eb72653933150a704caa6377f" [label=""];
  "sha256:106be1d3c9e55a43652b2426abf3b3facfa229dea750eddcf310d493f2f9b2c6" -> "sha256:9cf0c69826ba6580a3e6d675d1fc5d752f00b34eb72653933150a704caa6377f" [label=""];
  "sha256:9cf0c69826ba6580a3e6d675d1fc5d752f00b34eb72653933150a704caa6377f" -> "sha256:6dcb73407d6485a1fddcb6b189f99af296fe3a4ed221783412cc0b2e3b97fb5a" [label=""];
  "sha256:478b9e2987a947e1c0bc6fbaeb39e6476e0343bfbcf238683752a9586d6a149b" -> "sha256:6dcb73407d6485a1fddcb6b189f99af296fe3a4ed221783412cc0b2e3b97fb5a" [label=""];
  "sha256:6dcb73407d6485a1fddcb6b189f99af296fe3a4ed221783412cc0b2e3b97fb5a" -> "sha256:730fd2fc2093f35f40dac19031f8440403cb58e5f2c73e2755384778378b6b41" [label=""];
  "sha256:478b9e2987a947e1c0bc6fbaeb39e6476e0343bfbcf238683752a9586d6a149b" -> "sha256:730fd2fc2093f35f40dac19031f8440403cb58e5f2c73e2755384778378b6b41" [label=""];
  "sha256:730fd2fc2093f35f40dac19031f8440403cb58e5f2c73e2755384778378b6b41" -> "sha256:9c0d897f8331346cbae7c3eceec89139e9649bfa729d806c8e0cc65f564a32f9" [label=""];
}

