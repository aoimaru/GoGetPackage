[app/sources/251741707.Dockerfile]
digraph {
  "sha256:8e17e94ef3207f7690d4039273be50f9a22c117a40df234527b4f4499d16d78d" [label="docker-image://docker.io/nvidia/cuda:9.1-devel" shape="ellipse"];
  "sha256:f1622584841e33842895f19314f8d63e074fea99cd2971d724be5a6616008781" [label="/bin/sh -c apt-get -y update && apt-get install -y wget nano git build-essential yasm pkg-config" shape="box"];
  "sha256:84d433cefc34cc4c23d2931c9d5128eb7d7271ae15d7bf054db848e935f582e5" [label="/bin/sh -c git clone https://github.com/FFmpeg/nv-codec-headers /root/nv-codec-headers &&   cd /root/nv-codec-headers &&  make -j8 &&   make install -j8 &&   cd /root && rm -rf nv-codec-headers" shape="box"];
  "sha256:bb0b74a1198a370aca3c498f6f912728bf9aebba02b70e03cee49131f79fbd7e" [label="/bin/sh -c git clone https://github.com/FFmpeg/FFmpeg /root/ffmpeg &&   cd /root/ffmpeg && ./configure   --enable-nonfree --disable-shared   --enable-nvenc --enable-cuda   --enable-cuvid --enable-libnpp   --extra-cflags=-I/usr/local/cuda/include   --extra-cflags=-I/usr/local/include   --extra-ldflags=-L/usr/local/cuda/lib64 &&   make -j8 &&   make install -j8 &&   cd /root && rm -rf ffmpeg" shape="box"];
  "sha256:2be8cacd0890f2a883d0e8b2d3b9089cdca95f9d3e1598e51c7fea364095735e" [label="mkdir{path=/root}" shape="note"];
  "sha256:1376e2d85bc816a4cdeb487b8c3434b84d1a20d01c5bd3565a56041f4b87ec53" [label="sha256:1376e2d85bc816a4cdeb487b8c3434b84d1a20d01c5bd3565a56041f4b87ec53" shape="plaintext"];
  "sha256:8e17e94ef3207f7690d4039273be50f9a22c117a40df234527b4f4499d16d78d" -> "sha256:f1622584841e33842895f19314f8d63e074fea99cd2971d724be5a6616008781" [label=""];
  "sha256:f1622584841e33842895f19314f8d63e074fea99cd2971d724be5a6616008781" -> "sha256:84d433cefc34cc4c23d2931c9d5128eb7d7271ae15d7bf054db848e935f582e5" [label=""];
  "sha256:84d433cefc34cc4c23d2931c9d5128eb7d7271ae15d7bf054db848e935f582e5" -> "sha256:bb0b74a1198a370aca3c498f6f912728bf9aebba02b70e03cee49131f79fbd7e" [label=""];
  "sha256:bb0b74a1198a370aca3c498f6f912728bf9aebba02b70e03cee49131f79fbd7e" -> "sha256:2be8cacd0890f2a883d0e8b2d3b9089cdca95f9d3e1598e51c7fea364095735e" [label=""];
  "sha256:2be8cacd0890f2a883d0e8b2d3b9089cdca95f9d3e1598e51c7fea364095735e" -> "sha256:1376e2d85bc816a4cdeb487b8c3434b84d1a20d01c5bd3565a56041f4b87ec53" [label=""];
}

