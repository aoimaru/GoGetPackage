[app/sources/293924430.Dockerfile]
digraph {
  "sha256:41b506fe549b68aaca64f84aca70b09d5a9de58aacdef4862608fa716c09121e" [label="docker-image://docker.io/armhf/debian:jessie@sha256:ae705bf6614c467bad86891b8e441c9e0c987389b6e4d34c7b1371c0f841249f" shape="ellipse"];
  "sha256:27565426de0d896609fe1fdda7796b21633f1aa65b4453c69260a50a58034f4e" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:31d59ab1fea56db5bb4ac49d391b5ec9dad14cb3ddaf88db1adbe2079f98f37c" [label="/bin/sh -c apt-get update && apt-get install -y   git   bash   curl   gcc   make" shape="box"];
  "sha256:ca5161ec998cda320fde794dede0e906dbd042a0b7108823f7fd2898f24edf77" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\"   | tar -xzC /usr/local" shape="box"];
  "sha256:3cc65ee5e9407b671f3f3cdd48bdf65478615817572819041635a6986d027f6b" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:852a22952c0711ffcb1e791d33a861fb66a4004e0def98018bf7e76b24919fdb" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:f5d4cfd176b9cada3cf2759a7f33dfde73bb2a80995681a938e75d46b5376e08" [label="local://context" shape="ellipse"];
  "sha256:900efe2118cf5fcf86dcbe8c050ecd7ba6e2ec2d80a4aee9aa30489fdc70ee25" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:c5c60ff6abff7a4c74b84c8ca498533d4f1ef39eafd31cec937ab151d630827e" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:2c639ea20ec34d4d96882388285f3eb73b5ec6d99ac0027be16f869d292b7b70" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:17e3c6fc063912ee295a3da9fc5106e577ab24e13709ebde6b173a9e7708f056" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:9cedd1202827165a1e5e23684b7f0b0d881e05e9e410d47a20b0bcfe0f9ac697" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:2d2e6be7fbbd5a5bfca03d5a6ee2220c87161223b38abe08dec91a495ddf51b4" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:3d7da18ece98d5ee2e3981028582d0909d46263e1b8bce8aab7abff17a01f450" [label="sha256:3d7da18ece98d5ee2e3981028582d0909d46263e1b8bce8aab7abff17a01f450" shape="plaintext"];
  "sha256:41b506fe549b68aaca64f84aca70b09d5a9de58aacdef4862608fa716c09121e" -> "sha256:27565426de0d896609fe1fdda7796b21633f1aa65b4453c69260a50a58034f4e" [label=""];
  "sha256:27565426de0d896609fe1fdda7796b21633f1aa65b4453c69260a50a58034f4e" -> "sha256:31d59ab1fea56db5bb4ac49d391b5ec9dad14cb3ddaf88db1adbe2079f98f37c" [label=""];
  "sha256:31d59ab1fea56db5bb4ac49d391b5ec9dad14cb3ddaf88db1adbe2079f98f37c" -> "sha256:ca5161ec998cda320fde794dede0e906dbd042a0b7108823f7fd2898f24edf77" [label=""];
  "sha256:ca5161ec998cda320fde794dede0e906dbd042a0b7108823f7fd2898f24edf77" -> "sha256:3cc65ee5e9407b671f3f3cdd48bdf65478615817572819041635a6986d027f6b" [label=""];
  "sha256:3cc65ee5e9407b671f3f3cdd48bdf65478615817572819041635a6986d027f6b" -> "sha256:852a22952c0711ffcb1e791d33a861fb66a4004e0def98018bf7e76b24919fdb" [label=""];
  "sha256:852a22952c0711ffcb1e791d33a861fb66a4004e0def98018bf7e76b24919fdb" -> "sha256:900efe2118cf5fcf86dcbe8c050ecd7ba6e2ec2d80a4aee9aa30489fdc70ee25" [label=""];
  "sha256:f5d4cfd176b9cada3cf2759a7f33dfde73bb2a80995681a938e75d46b5376e08" -> "sha256:900efe2118cf5fcf86dcbe8c050ecd7ba6e2ec2d80a4aee9aa30489fdc70ee25" [label=""];
  "sha256:900efe2118cf5fcf86dcbe8c050ecd7ba6e2ec2d80a4aee9aa30489fdc70ee25" -> "sha256:c5c60ff6abff7a4c74b84c8ca498533d4f1ef39eafd31cec937ab151d630827e" [label=""];
  "sha256:f5d4cfd176b9cada3cf2759a7f33dfde73bb2a80995681a938e75d46b5376e08" -> "sha256:c5c60ff6abff7a4c74b84c8ca498533d4f1ef39eafd31cec937ab151d630827e" [label=""];
  "sha256:c5c60ff6abff7a4c74b84c8ca498533d4f1ef39eafd31cec937ab151d630827e" -> "sha256:2c639ea20ec34d4d96882388285f3eb73b5ec6d99ac0027be16f869d292b7b70" [label=""];
  "sha256:2c639ea20ec34d4d96882388285f3eb73b5ec6d99ac0027be16f869d292b7b70" -> "sha256:17e3c6fc063912ee295a3da9fc5106e577ab24e13709ebde6b173a9e7708f056" [label=""];
  "sha256:17e3c6fc063912ee295a3da9fc5106e577ab24e13709ebde6b173a9e7708f056" -> "sha256:9cedd1202827165a1e5e23684b7f0b0d881e05e9e410d47a20b0bcfe0f9ac697" [label=""];
  "sha256:9cedd1202827165a1e5e23684b7f0b0d881e05e9e410d47a20b0bcfe0f9ac697" -> "sha256:2d2e6be7fbbd5a5bfca03d5a6ee2220c87161223b38abe08dec91a495ddf51b4" [label=""];
  "sha256:2d2e6be7fbbd5a5bfca03d5a6ee2220c87161223b38abe08dec91a495ddf51b4" -> "sha256:3d7da18ece98d5ee2e3981028582d0909d46263e1b8bce8aab7abff17a01f450" [label=""];
}

