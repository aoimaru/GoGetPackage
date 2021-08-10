[app/sources/129952229.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e35701363c3daeafdfb001cdf62957f8e7a19e5020765cf03406ca454297d6ad" [label="/bin/sh -c apt-get update &&     apt-get install git -y &&     apt-get install python -y &&     apt-get install python3 -y &&     apt-get install python-pip -y &&     apt-get install python3-pip -y &&     apt-get install python-dev -y &&     apt-get install python3-dev -y &&     apt-get install build-essential -y &&     apt-get install libssl-dev -y &&     apt-get install libffi-dev -y &&     apt-get install libxml2-dev -y &&     apt-get install libxslt1-dev -y &&     apt-get install zlib1g-dev -y" shape="box"];
  "sha256:623e383f9db65d7960fe0013d64b0bb73cc8d084754fd789ac76bf2ebe16f2d7" [label="/bin/sh -c git clone https://github.com/mvelazc0/PurpleSpray.git /tmp/purplespray" shape="box"];
  "sha256:b8a2d45c69335d2aa01606295f6a3a9ab57d59b8e51817026994b76fe36a04df" [label="mkdir{path=/tmp/purplespray}" shape="note"];
  "sha256:c6200891f0e847801dc921b1ae9580fdbe10eab80b2ba4c0e7633946bf0aafff" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:7e9722fa734c01745d7f171ccdd56f6a75cbdea8d20d2f0a53788fd35b27b553" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:aa9cd7a8d731f91437473d5cae1e5c94fca4a163d4f5aa4c5080f9cae94f1db2" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:e8cc5f6df197d3c5770c50f2e978f8caef491e71d8120eba8981494638c926e9" [label="/bin/sh -c pip install impacket" shape="box"];
  "sha256:9c82b00789b255f4d8f721b5cd96a8a966325eaf30944284b072baf5f73ee38c" [label="/bin/sh -c rm -r /root/.cache" shape="box"];
  "sha256:5927ac9dd20fcb8c3bd24f098f8b1d885bf4ab1b0281ca6b547c053a7e2ab7a8" [label="sha256:5927ac9dd20fcb8c3bd24f098f8b1d885bf4ab1b0281ca6b547c053a7e2ab7a8" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e35701363c3daeafdfb001cdf62957f8e7a19e5020765cf03406ca454297d6ad" [label=""];
  "sha256:e35701363c3daeafdfb001cdf62957f8e7a19e5020765cf03406ca454297d6ad" -> "sha256:623e383f9db65d7960fe0013d64b0bb73cc8d084754fd789ac76bf2ebe16f2d7" [label=""];
  "sha256:623e383f9db65d7960fe0013d64b0bb73cc8d084754fd789ac76bf2ebe16f2d7" -> "sha256:b8a2d45c69335d2aa01606295f6a3a9ab57d59b8e51817026994b76fe36a04df" [label=""];
  "sha256:b8a2d45c69335d2aa01606295f6a3a9ab57d59b8e51817026994b76fe36a04df" -> "sha256:c6200891f0e847801dc921b1ae9580fdbe10eab80b2ba4c0e7633946bf0aafff" [label=""];
  "sha256:c6200891f0e847801dc921b1ae9580fdbe10eab80b2ba4c0e7633946bf0aafff" -> "sha256:7e9722fa734c01745d7f171ccdd56f6a75cbdea8d20d2f0a53788fd35b27b553" [label=""];
  "sha256:7e9722fa734c01745d7f171ccdd56f6a75cbdea8d20d2f0a53788fd35b27b553" -> "sha256:aa9cd7a8d731f91437473d5cae1e5c94fca4a163d4f5aa4c5080f9cae94f1db2" [label=""];
  "sha256:aa9cd7a8d731f91437473d5cae1e5c94fca4a163d4f5aa4c5080f9cae94f1db2" -> "sha256:e8cc5f6df197d3c5770c50f2e978f8caef491e71d8120eba8981494638c926e9" [label=""];
  "sha256:e8cc5f6df197d3c5770c50f2e978f8caef491e71d8120eba8981494638c926e9" -> "sha256:9c82b00789b255f4d8f721b5cd96a8a966325eaf30944284b072baf5f73ee38c" [label=""];
  "sha256:9c82b00789b255f4d8f721b5cd96a8a966325eaf30944284b072baf5f73ee38c" -> "sha256:5927ac9dd20fcb8c3bd24f098f8b1d885bf4ab1b0281ca6b547c053a7e2ab7a8" [label=""];
}

