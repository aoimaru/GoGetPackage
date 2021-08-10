[app/sources/275050389.Dockerfile]
digraph {
  "sha256:4feff1c49f04f1fdea1bc75c8547556215ff284b7d762c667f8620ecbee70ef4" [label="docker-image://docker.io/mxnet/python:0.11.0" shape="ellipse"];
  "sha256:d798cb4f4d64961ddd93d97641306635b745633c9c004b16938faeb4d4637b82" [label="mkdir{path=/opt}" shape="note"];
  "sha256:3f43da72ca35bec1dc172e2da0062736ad481b5788373c84140f5c1799bc39ff" [label="/bin/sh -c git clone https://github.com/baidu-research/warp-ctc.git" shape="box"];
  "sha256:dbf51275d0c371b59c2b5323cd580f096eb5589de0e64145eeb67cd9e6152025" [label="/bin/sh -c apt-get install -y cmake" shape="box"];
  "sha256:e7958b418b5d678e621f11aca866d80aa4740850439ba232ac5f425becb8c88c" [label="/bin/sh -c cd warp-ctc && mkdir build && cd build && cmake .. && make -j4" shape="box"];
  "sha256:0736b2d4fb22129bf58a978a2f2b7b23d225826413794a564af7509af6008616" [label="mkdir{path=/mxnet}" shape="note"];
  "sha256:b17762f56f37e8f37e7c0b0b82a99b2c8387f9742d18193aff03c38ce3ee9457" [label="local://context" shape="ellipse"];
  "sha256:7fd3617505349d60bbfc4c8c6352bf9e4b4ac7293428ccf97d177978090e50ed" [label="copy{src=/config.mk, dest=/mxnet/config.mk}" shape="note"];
  "sha256:a04f97818daf6dd197fac01fd91be0497c6097223e00830cb2604add30ad4249" [label="/bin/sh -c make -j7" shape="box"];
  "sha256:c7d6033c16e22a6fbbb954c3d99964180a3689e82d9d55d6575418b2f57529da" [label="/bin/sh -c wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda3-4.2.0-Linux-x86_64.sh" shape="box"];
  "sha256:889e108855b6ab0e598e8a69d7f6bc423da09769f535f357bdf133f6ce5b4fdf" [label="/bin/sh -c bash Anaconda3-4.2.0-Linux-x86_64.sh -b -p /anaconda3" shape="box"];
  "sha256:bb813855df62b6d13f0dd9df3b80ebb93f3cec6b9d18573c21de31e920968b9a" [label="/bin/sh -c rm -f Anaconda3-4.2.0-Linux-x86_64.sh" shape="box"];
  "sha256:3d4d9613ca3aaedd279cb652a9d4cecd7fb548ac4236ef41a3eabb6866f1f2a5" [label="/bin/sh -c ln -sf /opt/warp-ctc/build/libwarpctc.so /anaconda3/lib/" shape="box"];
  "sha256:50585f0ac409a1f232ccc102c9dd52d6fe29643abc44b53f8d66ebe0e7c50462" [label="/bin/sh -c cd /mxnet/python && pip install --upgrade pip && pip install -e ." shape="box"];
  "sha256:51b18b8af9a6ed6a47f9650fad884f8eb23bf5b34677f97e849aa244ea963a2e" [label="sha256:51b18b8af9a6ed6a47f9650fad884f8eb23bf5b34677f97e849aa244ea963a2e" shape="plaintext"];
  "sha256:4feff1c49f04f1fdea1bc75c8547556215ff284b7d762c667f8620ecbee70ef4" -> "sha256:d798cb4f4d64961ddd93d97641306635b745633c9c004b16938faeb4d4637b82" [label=""];
  "sha256:d798cb4f4d64961ddd93d97641306635b745633c9c004b16938faeb4d4637b82" -> "sha256:3f43da72ca35bec1dc172e2da0062736ad481b5788373c84140f5c1799bc39ff" [label=""];
  "sha256:3f43da72ca35bec1dc172e2da0062736ad481b5788373c84140f5c1799bc39ff" -> "sha256:dbf51275d0c371b59c2b5323cd580f096eb5589de0e64145eeb67cd9e6152025" [label=""];
  "sha256:dbf51275d0c371b59c2b5323cd580f096eb5589de0e64145eeb67cd9e6152025" -> "sha256:e7958b418b5d678e621f11aca866d80aa4740850439ba232ac5f425becb8c88c" [label=""];
  "sha256:e7958b418b5d678e621f11aca866d80aa4740850439ba232ac5f425becb8c88c" -> "sha256:0736b2d4fb22129bf58a978a2f2b7b23d225826413794a564af7509af6008616" [label=""];
  "sha256:0736b2d4fb22129bf58a978a2f2b7b23d225826413794a564af7509af6008616" -> "sha256:7fd3617505349d60bbfc4c8c6352bf9e4b4ac7293428ccf97d177978090e50ed" [label=""];
  "sha256:b17762f56f37e8f37e7c0b0b82a99b2c8387f9742d18193aff03c38ce3ee9457" -> "sha256:7fd3617505349d60bbfc4c8c6352bf9e4b4ac7293428ccf97d177978090e50ed" [label=""];
  "sha256:7fd3617505349d60bbfc4c8c6352bf9e4b4ac7293428ccf97d177978090e50ed" -> "sha256:a04f97818daf6dd197fac01fd91be0497c6097223e00830cb2604add30ad4249" [label=""];
  "sha256:a04f97818daf6dd197fac01fd91be0497c6097223e00830cb2604add30ad4249" -> "sha256:c7d6033c16e22a6fbbb954c3d99964180a3689e82d9d55d6575418b2f57529da" [label=""];
  "sha256:c7d6033c16e22a6fbbb954c3d99964180a3689e82d9d55d6575418b2f57529da" -> "sha256:889e108855b6ab0e598e8a69d7f6bc423da09769f535f357bdf133f6ce5b4fdf" [label=""];
  "sha256:889e108855b6ab0e598e8a69d7f6bc423da09769f535f357bdf133f6ce5b4fdf" -> "sha256:bb813855df62b6d13f0dd9df3b80ebb93f3cec6b9d18573c21de31e920968b9a" [label=""];
  "sha256:bb813855df62b6d13f0dd9df3b80ebb93f3cec6b9d18573c21de31e920968b9a" -> "sha256:3d4d9613ca3aaedd279cb652a9d4cecd7fb548ac4236ef41a3eabb6866f1f2a5" [label=""];
  "sha256:3d4d9613ca3aaedd279cb652a9d4cecd7fb548ac4236ef41a3eabb6866f1f2a5" -> "sha256:50585f0ac409a1f232ccc102c9dd52d6fe29643abc44b53f8d66ebe0e7c50462" [label=""];
  "sha256:50585f0ac409a1f232ccc102c9dd52d6fe29643abc44b53f8d66ebe0e7c50462" -> "sha256:51b18b8af9a6ed6a47f9650fad884f8eb23bf5b34677f97e849aa244ea963a2e" [label=""];
}

