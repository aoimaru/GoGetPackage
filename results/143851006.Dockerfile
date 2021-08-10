[app/sources/143851006.Dockerfile]
digraph {
  "sha256:4f0fe349fe4792057bedd434e6ca087952ea414fbf64a7df6c8225861a8b304c" [label="docker-image://docker.io/armhf/alpine:3.4@sha256:d8c10f20b4d38e846f2aa5c104e7d33b0cb29344301ee52bd86db393bc288fe2" shape="ellipse"];
  "sha256:1275093931ccdae2481e3ba242667b00e934d0f66e1bf56846e39a9ee9e4c776" [label="/bin/sh -c apk add -U git go bash curl gcc musl-dev make" shape="box"];
  "sha256:3c461baffbe3569a5830155d8fa996fb8e4d8816d622056bfe779e829f86b1ee" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:0449ad635b36a3d94f80710e84cdc429f9597820a172187454ff8fb2997acb43" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:6fae0cf2ed80c49081669fc3816354974f53bc94dc09f1a3e2e3a9135fb0f4a0" [label="local://context" shape="ellipse"];
  "sha256:bf27b125ec599127657d54392481689d1951d9da5a5799b601d641d7eecb6c92" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:be64a8409adb5b327b3452660ffefc2813519bdd6c6e574f7d1eb45ca9f9ebfa" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:72b0909aa874199d71a81fb0027f0dee8a35ce96765beb4b0e0007e2b024e485" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:e91ace262dbacc8f8df928b502d47a68b21d40a0bcf7bc960adb3b29003fb118" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:d2f3ad6f1a198e05d6f42a614c7341c79ad73c848bdbbd82919f7d56a1c9e94a" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:0f6763cd314f8d9498e3de8aa3a0da56c37fb1e512e3a06b5a51361ab2e50462" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:c311c7db02bdc150f423a3bebbf6ca6ead9f3923bdfda16b94e96d4a8855c5df" [label="sha256:c311c7db02bdc150f423a3bebbf6ca6ead9f3923bdfda16b94e96d4a8855c5df" shape="plaintext"];
  "sha256:4f0fe349fe4792057bedd434e6ca087952ea414fbf64a7df6c8225861a8b304c" -> "sha256:1275093931ccdae2481e3ba242667b00e934d0f66e1bf56846e39a9ee9e4c776" [label=""];
  "sha256:1275093931ccdae2481e3ba242667b00e934d0f66e1bf56846e39a9ee9e4c776" -> "sha256:3c461baffbe3569a5830155d8fa996fb8e4d8816d622056bfe779e829f86b1ee" [label=""];
  "sha256:3c461baffbe3569a5830155d8fa996fb8e4d8816d622056bfe779e829f86b1ee" -> "sha256:0449ad635b36a3d94f80710e84cdc429f9597820a172187454ff8fb2997acb43" [label=""];
  "sha256:0449ad635b36a3d94f80710e84cdc429f9597820a172187454ff8fb2997acb43" -> "sha256:bf27b125ec599127657d54392481689d1951d9da5a5799b601d641d7eecb6c92" [label=""];
  "sha256:6fae0cf2ed80c49081669fc3816354974f53bc94dc09f1a3e2e3a9135fb0f4a0" -> "sha256:bf27b125ec599127657d54392481689d1951d9da5a5799b601d641d7eecb6c92" [label=""];
  "sha256:bf27b125ec599127657d54392481689d1951d9da5a5799b601d641d7eecb6c92" -> "sha256:be64a8409adb5b327b3452660ffefc2813519bdd6c6e574f7d1eb45ca9f9ebfa" [label=""];
  "sha256:6fae0cf2ed80c49081669fc3816354974f53bc94dc09f1a3e2e3a9135fb0f4a0" -> "sha256:be64a8409adb5b327b3452660ffefc2813519bdd6c6e574f7d1eb45ca9f9ebfa" [label=""];
  "sha256:be64a8409adb5b327b3452660ffefc2813519bdd6c6e574f7d1eb45ca9f9ebfa" -> "sha256:72b0909aa874199d71a81fb0027f0dee8a35ce96765beb4b0e0007e2b024e485" [label=""];
  "sha256:72b0909aa874199d71a81fb0027f0dee8a35ce96765beb4b0e0007e2b024e485" -> "sha256:e91ace262dbacc8f8df928b502d47a68b21d40a0bcf7bc960adb3b29003fb118" [label=""];
  "sha256:e91ace262dbacc8f8df928b502d47a68b21d40a0bcf7bc960adb3b29003fb118" -> "sha256:d2f3ad6f1a198e05d6f42a614c7341c79ad73c848bdbbd82919f7d56a1c9e94a" [label=""];
  "sha256:d2f3ad6f1a198e05d6f42a614c7341c79ad73c848bdbbd82919f7d56a1c9e94a" -> "sha256:0f6763cd314f8d9498e3de8aa3a0da56c37fb1e512e3a06b5a51361ab2e50462" [label=""];
  "sha256:0f6763cd314f8d9498e3de8aa3a0da56c37fb1e512e3a06b5a51361ab2e50462" -> "sha256:c311c7db02bdc150f423a3bebbf6ca6ead9f3923bdfda16b94e96d4a8855c5df" [label=""];
}

