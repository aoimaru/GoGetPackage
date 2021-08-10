[app/sources/249575711.Dockerfile]
digraph {
  "sha256:5c31c8924f1401592831a25692e8cfa9338956cdf8f5949fb5e7b81c7fa1698d" [label="local://context" shape="ellipse"];
  "sha256:a940a83ac56d42caf5383589b7e7ed601aeaee01b76f1bf834ed22db7b1f468b" [label="docker-image://docker.io/phusion/baseimage:0.10.2" shape="ellipse"];
  "sha256:ac75d38977518f1c0a115d5fcfcd01e8c7ac3c1ebda9e9e583477bc926668760" [label="copy{src=/sources-aliyun.com.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:4625993d2a536cab64998dfbf83cdad47496eeed7c3621a78f798d1e9cac7cfd" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:315c81f4673d66feadc7e81425eaa2b9eb2dbd8db23b5d2e3760bd9e841a5786" [label="/bin/sh -c apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3" shape="box"];
  "sha256:70ceafab3c60b2683c313581a9ce556b3ea7b6787078528009dfbd0d215b908d" [label="/bin/sh -c apt-get install -y libboost-all-dev libzmq3-dev curl wget net-tools" shape="box"];
  "sha256:8928f8e059b90808349d444b5992920d69822de3681d50b5ca1e99b227f529c9" [label="/bin/sh -c mkdir ~/source" shape="box"];
  "sha256:85059f5bd703742a232f08176f83546e4e4ed81efefb92269490bb690fba5f63" [label="/bin/sh -c cd ~/source && wget https://github.com/litecoin-project/litecoin/archive/v0.16.3.tar.gz" shape="box"];
  "sha256:2f26e58bade6cecf80b002effc8779c58c5057540c421efeee6855f00f6912e2" [label="/bin/sh -c cd ~/source   && tar zxf v0.16.3.tar.gz && cd litecoin-0.16.3   && ./autogen.sh   && ./configure --disable-wallet --disable-tests   && make -j4 && make install" shape="box"];
  "sha256:7b1ec18a418097fe5a41427aea226ce50cbb9bce9f1a1e510aba3a4f4b610802" [label="/bin/sh -c mkdir -p /root/.litecoin" shape="box"];
  "sha256:5e578d32d9cfe3be50197ffcd3bbe1a3b41564c9125324b89e5edb848459eff3" [label="/bin/sh -c mkdir -p /root/scripts" shape="box"];
  "sha256:08a05d0455cccc06b03098a5b967ed5ebc1565a3cd80ec2980fc13ded225efa7" [label="copy{src=/logrotate-litecoind, dest=/etc/logrotate.d/litecoind}" shape="note"];
  "sha256:269fa35a721fc81a966f5c95c18d35ffbb69ae04d71b1201aaf6722e05fd9486" [label="/bin/sh -c mkdir    /etc/service/litecoind" shape="box"];
  "sha256:2d9abc28215c0d6fb8a7a76d0f2293684407d1901a6a6926927e785adc476e45" [label="copy{src=/run, dest=/etc/service/litecoind/run}" shape="note"];
  "sha256:0f07896aa4486269db59ab6b4e303fa300926ae1e69afa613c2cd39c9712ab8d" [label="/bin/sh -c chmod +x /etc/service/litecoind/run" shape="box"];
  "sha256:3ad2c0a1c29d0283b206c1db39a77d73387b153bff9e43ba207425ddcfe87705" [label="sha256:3ad2c0a1c29d0283b206c1db39a77d73387b153bff9e43ba207425ddcfe87705" shape="plaintext"];
  "sha256:a940a83ac56d42caf5383589b7e7ed601aeaee01b76f1bf834ed22db7b1f468b" -> "sha256:ac75d38977518f1c0a115d5fcfcd01e8c7ac3c1ebda9e9e583477bc926668760" [label=""];
  "sha256:5c31c8924f1401592831a25692e8cfa9338956cdf8f5949fb5e7b81c7fa1698d" -> "sha256:ac75d38977518f1c0a115d5fcfcd01e8c7ac3c1ebda9e9e583477bc926668760" [label=""];
  "sha256:ac75d38977518f1c0a115d5fcfcd01e8c7ac3c1ebda9e9e583477bc926668760" -> "sha256:4625993d2a536cab64998dfbf83cdad47496eeed7c3621a78f798d1e9cac7cfd" [label=""];
  "sha256:4625993d2a536cab64998dfbf83cdad47496eeed7c3621a78f798d1e9cac7cfd" -> "sha256:315c81f4673d66feadc7e81425eaa2b9eb2dbd8db23b5d2e3760bd9e841a5786" [label=""];
  "sha256:315c81f4673d66feadc7e81425eaa2b9eb2dbd8db23b5d2e3760bd9e841a5786" -> "sha256:70ceafab3c60b2683c313581a9ce556b3ea7b6787078528009dfbd0d215b908d" [label=""];
  "sha256:70ceafab3c60b2683c313581a9ce556b3ea7b6787078528009dfbd0d215b908d" -> "sha256:8928f8e059b90808349d444b5992920d69822de3681d50b5ca1e99b227f529c9" [label=""];
  "sha256:8928f8e059b90808349d444b5992920d69822de3681d50b5ca1e99b227f529c9" -> "sha256:85059f5bd703742a232f08176f83546e4e4ed81efefb92269490bb690fba5f63" [label=""];
  "sha256:85059f5bd703742a232f08176f83546e4e4ed81efefb92269490bb690fba5f63" -> "sha256:2f26e58bade6cecf80b002effc8779c58c5057540c421efeee6855f00f6912e2" [label=""];
  "sha256:2f26e58bade6cecf80b002effc8779c58c5057540c421efeee6855f00f6912e2" -> "sha256:7b1ec18a418097fe5a41427aea226ce50cbb9bce9f1a1e510aba3a4f4b610802" [label=""];
  "sha256:7b1ec18a418097fe5a41427aea226ce50cbb9bce9f1a1e510aba3a4f4b610802" -> "sha256:5e578d32d9cfe3be50197ffcd3bbe1a3b41564c9125324b89e5edb848459eff3" [label=""];
  "sha256:5e578d32d9cfe3be50197ffcd3bbe1a3b41564c9125324b89e5edb848459eff3" -> "sha256:08a05d0455cccc06b03098a5b967ed5ebc1565a3cd80ec2980fc13ded225efa7" [label=""];
  "sha256:5c31c8924f1401592831a25692e8cfa9338956cdf8f5949fb5e7b81c7fa1698d" -> "sha256:08a05d0455cccc06b03098a5b967ed5ebc1565a3cd80ec2980fc13ded225efa7" [label=""];
  "sha256:08a05d0455cccc06b03098a5b967ed5ebc1565a3cd80ec2980fc13ded225efa7" -> "sha256:269fa35a721fc81a966f5c95c18d35ffbb69ae04d71b1201aaf6722e05fd9486" [label=""];
  "sha256:269fa35a721fc81a966f5c95c18d35ffbb69ae04d71b1201aaf6722e05fd9486" -> "sha256:2d9abc28215c0d6fb8a7a76d0f2293684407d1901a6a6926927e785adc476e45" [label=""];
  "sha256:5c31c8924f1401592831a25692e8cfa9338956cdf8f5949fb5e7b81c7fa1698d" -> "sha256:2d9abc28215c0d6fb8a7a76d0f2293684407d1901a6a6926927e785adc476e45" [label=""];
  "sha256:2d9abc28215c0d6fb8a7a76d0f2293684407d1901a6a6926927e785adc476e45" -> "sha256:0f07896aa4486269db59ab6b4e303fa300926ae1e69afa613c2cd39c9712ab8d" [label=""];
  "sha256:0f07896aa4486269db59ab6b4e303fa300926ae1e69afa613c2cd39c9712ab8d" -> "sha256:3ad2c0a1c29d0283b206c1db39a77d73387b153bff9e43ba207425ddcfe87705" [label=""];
}

