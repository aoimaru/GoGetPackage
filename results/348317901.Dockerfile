[app/sources/348317901.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:092a1050b9df6a525d42923eacaed90315c88de40247714b65e0de40b83216d1" [label="/bin/sh -c apk add libvirt-client ncurses5-libs git gettext curl bash make" shape="box"];
  "sha256:9209969d8028d2205e99fb0e2206c0a3ba3d44171adc659615a2a6e568ba4ce0" [label="/bin/sh -c mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2" shape="box"];
  "sha256:8c4593a541df02a3367c7bb26456290acb28c85d43dab53b974244540d5fde8f" [label="/bin/sh -c ln -s /usr/lib/libncurses.so.5 /usr/lib/libtinfo.so.5" shape="box"];
  "sha256:ca6151fa3b5deee5876eadb46c6bf359d0699e188fdf1c84fb4ffe4da1b46cab" [label="/bin/sh -c curl -Lo- \"https://raw.githubusercontent.com/bpkg/bpkg/master/setup.sh\" | bash" shape="box"];
  "sha256:2bfe21f7d50e82ffaf2beb879a953f65221b707f7bf67baa6856e245b72e086d" [label="/bin/sh -c bpkg install cha87de/bashutil -g" shape="box"];
  "sha256:a6eab8c3f7ec7ab6bd01eb51103ed0c103d751bf61bd0da5a5976703801b6376" [label="/bin/sh -c mkdir -p /opt/docker-init" shape="box"];
  "sha256:3a003a8491280f8e7ebefd650811ee1df4393283eceb2a83d01bceaf5ecedef3" [label="local://context" shape="ellipse"];
  "sha256:9ad29e632606a7c3ad37021a26ea1665dae8a994dbf51d2745fbf9f507000e86" [label="copy{src=/init, dest=/opt/docker-init}" shape="note"];
  "sha256:ffcc28f77d7c19f795c83ecc668b4b714958a635ff341b0054c3e833a3957a46" [label="copy{src=/dist/linux_amd64/kvmtop, dest=/bin/kvmtop}" shape="note"];
  "sha256:f17ffb276dfbaefa170daa48b4ed7f7d0b7fde9c98effda1fc594704d929a4fb" [label="copy{src=/dist/linux_amd64/kvmprofiler, dest=/bin/kvmprofiler}" shape="note"];
  "sha256:d904afb3be43527bf36560790edf377540be2860c70bd0c1d0057a553b702a36" [label="mkdir{path=/opt/docker-init}" shape="note"];
  "sha256:675d74dcc646e7eafd8f7c6aad0d4d4685aa185b2878faa2aa369046951c32bd" [label="sha256:675d74dcc646e7eafd8f7c6aad0d4d4685aa185b2878faa2aa369046951c32bd" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:092a1050b9df6a525d42923eacaed90315c88de40247714b65e0de40b83216d1" [label=""];
  "sha256:092a1050b9df6a525d42923eacaed90315c88de40247714b65e0de40b83216d1" -> "sha256:9209969d8028d2205e99fb0e2206c0a3ba3d44171adc659615a2a6e568ba4ce0" [label=""];
  "sha256:9209969d8028d2205e99fb0e2206c0a3ba3d44171adc659615a2a6e568ba4ce0" -> "sha256:8c4593a541df02a3367c7bb26456290acb28c85d43dab53b974244540d5fde8f" [label=""];
  "sha256:8c4593a541df02a3367c7bb26456290acb28c85d43dab53b974244540d5fde8f" -> "sha256:ca6151fa3b5deee5876eadb46c6bf359d0699e188fdf1c84fb4ffe4da1b46cab" [label=""];
  "sha256:ca6151fa3b5deee5876eadb46c6bf359d0699e188fdf1c84fb4ffe4da1b46cab" -> "sha256:2bfe21f7d50e82ffaf2beb879a953f65221b707f7bf67baa6856e245b72e086d" [label=""];
  "sha256:2bfe21f7d50e82ffaf2beb879a953f65221b707f7bf67baa6856e245b72e086d" -> "sha256:a6eab8c3f7ec7ab6bd01eb51103ed0c103d751bf61bd0da5a5976703801b6376" [label=""];
  "sha256:a6eab8c3f7ec7ab6bd01eb51103ed0c103d751bf61bd0da5a5976703801b6376" -> "sha256:9ad29e632606a7c3ad37021a26ea1665dae8a994dbf51d2745fbf9f507000e86" [label=""];
  "sha256:3a003a8491280f8e7ebefd650811ee1df4393283eceb2a83d01bceaf5ecedef3" -> "sha256:9ad29e632606a7c3ad37021a26ea1665dae8a994dbf51d2745fbf9f507000e86" [label=""];
  "sha256:9ad29e632606a7c3ad37021a26ea1665dae8a994dbf51d2745fbf9f507000e86" -> "sha256:ffcc28f77d7c19f795c83ecc668b4b714958a635ff341b0054c3e833a3957a46" [label=""];
  "sha256:3a003a8491280f8e7ebefd650811ee1df4393283eceb2a83d01bceaf5ecedef3" -> "sha256:ffcc28f77d7c19f795c83ecc668b4b714958a635ff341b0054c3e833a3957a46" [label=""];
  "sha256:ffcc28f77d7c19f795c83ecc668b4b714958a635ff341b0054c3e833a3957a46" -> "sha256:f17ffb276dfbaefa170daa48b4ed7f7d0b7fde9c98effda1fc594704d929a4fb" [label=""];
  "sha256:3a003a8491280f8e7ebefd650811ee1df4393283eceb2a83d01bceaf5ecedef3" -> "sha256:f17ffb276dfbaefa170daa48b4ed7f7d0b7fde9c98effda1fc594704d929a4fb" [label=""];
  "sha256:f17ffb276dfbaefa170daa48b4ed7f7d0b7fde9c98effda1fc594704d929a4fb" -> "sha256:d904afb3be43527bf36560790edf377540be2860c70bd0c1d0057a553b702a36" [label=""];
  "sha256:d904afb3be43527bf36560790edf377540be2860c70bd0c1d0057a553b702a36" -> "sha256:675d74dcc646e7eafd8f7c6aad0d4d4685aa185b2878faa2aa369046951c32bd" [label=""];
}

