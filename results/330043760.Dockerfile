[app/sources/330043760.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:eb389d2bac7d17c06d3d36a8e39a29ecc88125bb7fffe271992de3b2b6e722ec" [label="/bin/sh -c apt -o Acquire::https::No-Cache=True -o Acquire::http::No-Cache=True update &&    apt-get install -y git pkg-config openssl libssl-dev libtag1-dev libtagc0-dev curl yasm build-essential wget libbz2-dev zlib1g-dev &&    curl -sL https://deb.nodesource.com/setup_8.x | bash - &&    apt-get install -y nodejs" shape="box"];
  "sha256:d5ea576f5f7bebf7746fd28f713a86cfe53a36d489304861a52353bc19343166" [label="local://context" shape="ellipse"];
  "sha256:85cbe92c945c0689844bba2aa2cb818e09bd59864e05b13e387fe6493a6f40b9" [label="copy{src=/, dest=/audioserve_src}" shape="note"];
  "sha256:fd0ce0fed4b95ca5dea7a982d8bda563011ef9bb4535577314675f2d3fbb2a45" [label="/bin/sh -c curl https://sh.rustup.rs -sSf | sh -s -- -y" shape="box"];
  "sha256:b5c2ed0c061dfe4bd57aebd1e6a8ed3d07d32acbe2443337c8efe01f78c5c072" [label="/bin/sh -c mkdir ffmpeg-static &&    curl -sL https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz | tar xJv -C ffmpeg-static --strip-components=1 --wildcards \"*/ffmpeg\" &&    cp /ffmpeg-static/ffmpeg /usr/bin" shape="box"];
  "sha256:46f19d12bd4bf76048e28249c88d040a4547f13f42cc4b6c2c2ccd8e9763bdeb" [label="/bin/sh -c export PATH=${HOME}/.cargo/bin:$PATH &&    cd audioserve_src &&    cargo build --release ${FEATURES} &&    cargo test --release ${FEATURES}" shape="box"];
  "sha256:2e78adf615c30e0d7e4cfaf3d058ee95b2abfc41407a2e52209cb323bb9903bb" [label="/bin/sh -c cd audioserve_src/client &&    npm install &&    npm run build" shape="box"];
  "sha256:62eece20dd8a2fad9f42c3291525eab2da8d065b370d2df081e5ed92511a37fd" [label="/bin/sh -c mkdir /ssl &&    cd /ssl &&    openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out certificate.pem         -subj \"/C=CZ/ST=Prague/L=Prague/O=Ivan/CN=audioserve\" &&    openssl pkcs12 -inkey key.pem -in certificate.pem -export  -passout pass:mypass -out audioserve.p12" shape="box"];
  "sha256:73286bf0f313d8e24b0a3d10ccf62513a4fcc7604d3c1555fad0d5bf95b4cccf" [label="copy{src=/audioserve_src/target/release/audioserve, dest=/audioserve/audioserve}" shape="note"];
  "sha256:087192bee4b4fa37534c4a8f512525c4847fff3e227ae4d5852b60f7c0c8d67d" [label="copy{src=/audioserve_src/client/dist, dest=/audioserve/client/dist}" shape="note"];
  "sha256:78f5e282c6694a3494676ee7c38f059ee09f5f03f1bd85b987f1bc1a1a6331ec" [label="copy{src=/ssl/audioserve.p12, dest=/audioserve/ssl/audioserve.p12}" shape="note"];
  "sha256:4e76afbaf8222ee3cfb64eeaef27b6fa62d1e782cd95c3cd514776785062f177" [label="copy{src=/ffmpeg-static/ffmpeg, dest=/usr/bin}" shape="note"];
  "sha256:d50d372258f78f38419ccf558a4610ba2442f9b39d729cf2bd0d8d185b5ea6de" [label="/bin/sh -c adduser audioserve &&    chown -R audioserve:audioserve /audioserve &&    apt -o Acquire::https::No-Cache=True -o Acquire::http::No-Cache=True update &&    apt-get install -y libssl1.1 libtag1v5 libtagc0 libbz2-1.0" shape="box"];
  "sha256:d72b0eeb34d7dcd9c237a82a1d89faa6de48c407120e8a9b1721f10453e0d977" [label="mkdir{path=/audioserve}" shape="note"];
  "sha256:acb3986a2a50e5425d8610e6b674137e86491df738d2c98b074ad74bd942e2ef" [label="sha256:acb3986a2a50e5425d8610e6b674137e86491df738d2c98b074ad74bd942e2ef" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:eb389d2bac7d17c06d3d36a8e39a29ecc88125bb7fffe271992de3b2b6e722ec" [label=""];
  "sha256:eb389d2bac7d17c06d3d36a8e39a29ecc88125bb7fffe271992de3b2b6e722ec" -> "sha256:85cbe92c945c0689844bba2aa2cb818e09bd59864e05b13e387fe6493a6f40b9" [label=""];
  "sha256:d5ea576f5f7bebf7746fd28f713a86cfe53a36d489304861a52353bc19343166" -> "sha256:85cbe92c945c0689844bba2aa2cb818e09bd59864e05b13e387fe6493a6f40b9" [label=""];
  "sha256:85cbe92c945c0689844bba2aa2cb818e09bd59864e05b13e387fe6493a6f40b9" -> "sha256:fd0ce0fed4b95ca5dea7a982d8bda563011ef9bb4535577314675f2d3fbb2a45" [label=""];
  "sha256:fd0ce0fed4b95ca5dea7a982d8bda563011ef9bb4535577314675f2d3fbb2a45" -> "sha256:b5c2ed0c061dfe4bd57aebd1e6a8ed3d07d32acbe2443337c8efe01f78c5c072" [label=""];
  "sha256:b5c2ed0c061dfe4bd57aebd1e6a8ed3d07d32acbe2443337c8efe01f78c5c072" -> "sha256:46f19d12bd4bf76048e28249c88d040a4547f13f42cc4b6c2c2ccd8e9763bdeb" [label=""];
  "sha256:46f19d12bd4bf76048e28249c88d040a4547f13f42cc4b6c2c2ccd8e9763bdeb" -> "sha256:2e78adf615c30e0d7e4cfaf3d058ee95b2abfc41407a2e52209cb323bb9903bb" [label=""];
  "sha256:2e78adf615c30e0d7e4cfaf3d058ee95b2abfc41407a2e52209cb323bb9903bb" -> "sha256:62eece20dd8a2fad9f42c3291525eab2da8d065b370d2df081e5ed92511a37fd" [label=""];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:73286bf0f313d8e24b0a3d10ccf62513a4fcc7604d3c1555fad0d5bf95b4cccf" [label=""];
  "sha256:62eece20dd8a2fad9f42c3291525eab2da8d065b370d2df081e5ed92511a37fd" -> "sha256:73286bf0f313d8e24b0a3d10ccf62513a4fcc7604d3c1555fad0d5bf95b4cccf" [label=""];
  "sha256:73286bf0f313d8e24b0a3d10ccf62513a4fcc7604d3c1555fad0d5bf95b4cccf" -> "sha256:087192bee4b4fa37534c4a8f512525c4847fff3e227ae4d5852b60f7c0c8d67d" [label=""];
  "sha256:62eece20dd8a2fad9f42c3291525eab2da8d065b370d2df081e5ed92511a37fd" -> "sha256:087192bee4b4fa37534c4a8f512525c4847fff3e227ae4d5852b60f7c0c8d67d" [label=""];
  "sha256:087192bee4b4fa37534c4a8f512525c4847fff3e227ae4d5852b60f7c0c8d67d" -> "sha256:78f5e282c6694a3494676ee7c38f059ee09f5f03f1bd85b987f1bc1a1a6331ec" [label=""];
  "sha256:62eece20dd8a2fad9f42c3291525eab2da8d065b370d2df081e5ed92511a37fd" -> "sha256:78f5e282c6694a3494676ee7c38f059ee09f5f03f1bd85b987f1bc1a1a6331ec" [label=""];
  "sha256:78f5e282c6694a3494676ee7c38f059ee09f5f03f1bd85b987f1bc1a1a6331ec" -> "sha256:4e76afbaf8222ee3cfb64eeaef27b6fa62d1e782cd95c3cd514776785062f177" [label=""];
  "sha256:62eece20dd8a2fad9f42c3291525eab2da8d065b370d2df081e5ed92511a37fd" -> "sha256:4e76afbaf8222ee3cfb64eeaef27b6fa62d1e782cd95c3cd514776785062f177" [label=""];
  "sha256:4e76afbaf8222ee3cfb64eeaef27b6fa62d1e782cd95c3cd514776785062f177" -> "sha256:d50d372258f78f38419ccf558a4610ba2442f9b39d729cf2bd0d8d185b5ea6de" [label=""];
  "sha256:d50d372258f78f38419ccf558a4610ba2442f9b39d729cf2bd0d8d185b5ea6de" -> "sha256:d72b0eeb34d7dcd9c237a82a1d89faa6de48c407120e8a9b1721f10453e0d977" [label=""];
  "sha256:d72b0eeb34d7dcd9c237a82a1d89faa6de48c407120e8a9b1721f10453e0d977" -> "sha256:acb3986a2a50e5425d8610e6b674137e86491df738d2c98b074ad74bd942e2ef" [label=""];
}

