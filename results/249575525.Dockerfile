[app/sources/249575525.Dockerfile]
digraph {
  "sha256:1aa1d1d5f1faa63c936cba144597fbf511fa41b32a41dfb21452b2bc27b11e47" [label="docker-image://docker.io/phusion/baseimage:0.9.22" shape="ellipse"];
  "sha256:8f6ebf5b60816af40a21cb5ec20c71f99418f986985cba85c84899fbe35cd261" [label="local://context" shape="ellipse"];
  "sha256:9446176abfa16975ae91f7c75842922f0c714c3de2bcb3d29ca3f07a8a80e1a7" [label="copy{src=/sources-aliyun.com.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:01992303ea532aad05bc1c875a0b7718dede48867cf7e3cb5da5f3144336deab" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c31630e2fca292ef5c483e05b74ab38b5add1170c39c7851ef56bcb59ae7ce6c" [label="/bin/sh -c apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils yasm" shape="box"];
  "sha256:8512ce73bef209d1649a907b2abb5548695d9c30f9c7a459b3a991ed658375fe" [label="/bin/sh -c apt-get install -y libboost-all-dev libzmq3-dev curl wget unzip" shape="box"];
  "sha256:56c386f98282c465bd62218fd7da3f36b65348dae52939da48322af67c1dd2bc" [label="/bin/sh -c mkdir ~/source" shape="box"];
  "sha256:70c9265d54c753d25f374364c108506cdd297d385d124ca74db90371b248c687" [label="/bin/sh -c cd ~/source && wget -O v0.18.2-reject-large-reorg.tar.gz https://github.com/btccom/bitcoin-abc-1/archive/v0.18.2-reject-large-reorg.tar.gz" shape="box"];
  "sha256:4e108104f90ee7359efda92de407bd33366c707858d74d4ac80c7a5edc3ecde0" [label="/bin/sh -c cd ~/source   && tar zxf v0.18.2-reject-large-reorg.tar.gz && cd bitcoin-abc-1-0.18.2-reject-large-reorg   && ./autogen.sh   && ./configure --disable-wallet --disable-tests   && make -j$(nproc) && make install" shape="box"];
  "sha256:8632c59cefc9afb4a1368d0af4a868c0b7e5ac8bb67ba535f84cc128607f6895" [label="/bin/sh -c mkdir -p /root/.bitcoin" shape="box"];
  "sha256:9034c54af8334314bbc2c9e323c57c86ffa684290f94872823b146419e8e9718" [label="copy{src=/logrotate-bitcoind, dest=/etc/logrotate.d/bitcoind}" shape="note"];
  "sha256:7823a5d8b52087634ee9d3f404f0adec258da906eb5ff4bf4aaffe11c53f9d2a" [label="/bin/sh -c mkdir    /etc/service/bitcoind" shape="box"];
  "sha256:d8366a9a2686dedb2bdaa60a0eb0e95bfaa1275f4f4ec03ecea0431a928db92d" [label="copy{src=/run, dest=/etc/service/bitcoind/run}" shape="note"];
  "sha256:4f64f1ecb512220a50f8c0e692f43dbeec5625ab44f59a58623dcf96f204b232" [label="/bin/sh -c chmod +x /etc/service/bitcoind/run" shape="box"];
  "sha256:fbd1d4c842473b59bdf19aa06932d0c60e3cb51dadb76fb9430523a96c8f4024" [label="sha256:fbd1d4c842473b59bdf19aa06932d0c60e3cb51dadb76fb9430523a96c8f4024" shape="plaintext"];
  "sha256:1aa1d1d5f1faa63c936cba144597fbf511fa41b32a41dfb21452b2bc27b11e47" -> "sha256:9446176abfa16975ae91f7c75842922f0c714c3de2bcb3d29ca3f07a8a80e1a7" [label=""];
  "sha256:8f6ebf5b60816af40a21cb5ec20c71f99418f986985cba85c84899fbe35cd261" -> "sha256:9446176abfa16975ae91f7c75842922f0c714c3de2bcb3d29ca3f07a8a80e1a7" [label=""];
  "sha256:9446176abfa16975ae91f7c75842922f0c714c3de2bcb3d29ca3f07a8a80e1a7" -> "sha256:01992303ea532aad05bc1c875a0b7718dede48867cf7e3cb5da5f3144336deab" [label=""];
  "sha256:01992303ea532aad05bc1c875a0b7718dede48867cf7e3cb5da5f3144336deab" -> "sha256:c31630e2fca292ef5c483e05b74ab38b5add1170c39c7851ef56bcb59ae7ce6c" [label=""];
  "sha256:c31630e2fca292ef5c483e05b74ab38b5add1170c39c7851ef56bcb59ae7ce6c" -> "sha256:8512ce73bef209d1649a907b2abb5548695d9c30f9c7a459b3a991ed658375fe" [label=""];
  "sha256:8512ce73bef209d1649a907b2abb5548695d9c30f9c7a459b3a991ed658375fe" -> "sha256:56c386f98282c465bd62218fd7da3f36b65348dae52939da48322af67c1dd2bc" [label=""];
  "sha256:56c386f98282c465bd62218fd7da3f36b65348dae52939da48322af67c1dd2bc" -> "sha256:70c9265d54c753d25f374364c108506cdd297d385d124ca74db90371b248c687" [label=""];
  "sha256:70c9265d54c753d25f374364c108506cdd297d385d124ca74db90371b248c687" -> "sha256:4e108104f90ee7359efda92de407bd33366c707858d74d4ac80c7a5edc3ecde0" [label=""];
  "sha256:4e108104f90ee7359efda92de407bd33366c707858d74d4ac80c7a5edc3ecde0" -> "sha256:8632c59cefc9afb4a1368d0af4a868c0b7e5ac8bb67ba535f84cc128607f6895" [label=""];
  "sha256:8632c59cefc9afb4a1368d0af4a868c0b7e5ac8bb67ba535f84cc128607f6895" -> "sha256:9034c54af8334314bbc2c9e323c57c86ffa684290f94872823b146419e8e9718" [label=""];
  "sha256:8f6ebf5b60816af40a21cb5ec20c71f99418f986985cba85c84899fbe35cd261" -> "sha256:9034c54af8334314bbc2c9e323c57c86ffa684290f94872823b146419e8e9718" [label=""];
  "sha256:9034c54af8334314bbc2c9e323c57c86ffa684290f94872823b146419e8e9718" -> "sha256:7823a5d8b52087634ee9d3f404f0adec258da906eb5ff4bf4aaffe11c53f9d2a" [label=""];
  "sha256:7823a5d8b52087634ee9d3f404f0adec258da906eb5ff4bf4aaffe11c53f9d2a" -> "sha256:d8366a9a2686dedb2bdaa60a0eb0e95bfaa1275f4f4ec03ecea0431a928db92d" [label=""];
  "sha256:8f6ebf5b60816af40a21cb5ec20c71f99418f986985cba85c84899fbe35cd261" -> "sha256:d8366a9a2686dedb2bdaa60a0eb0e95bfaa1275f4f4ec03ecea0431a928db92d" [label=""];
  "sha256:d8366a9a2686dedb2bdaa60a0eb0e95bfaa1275f4f4ec03ecea0431a928db92d" -> "sha256:4f64f1ecb512220a50f8c0e692f43dbeec5625ab44f59a58623dcf96f204b232" [label=""];
  "sha256:4f64f1ecb512220a50f8c0e692f43dbeec5625ab44f59a58623dcf96f204b232" -> "sha256:fbd1d4c842473b59bdf19aa06932d0c60e3cb51dadb76fb9430523a96c8f4024" [label=""];
}

