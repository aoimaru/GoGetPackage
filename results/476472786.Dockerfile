[app/sources/476472786.Dockerfile]
digraph {
  "sha256:96c324dc5177c7b38a533cb91053556c245310104ba400c1a4fadf9011043eb6" [label="docker-image://docker.io/tudorg/xgo-deb6-1.6:latest" shape="ellipse"];
  "sha256:f2f03c1d905e6289cdbaa28834467ba19b4a58eda9f5219ccd8b2e6a86ca6621" [label="/bin/sh -c mkdir -p /libpcap &&     wget http://archive.debian.org/debian/pool/main/libp/libpcap/libpcap0.8-dev_1.1.1-2+squeeze1_i386.deb && \tdpkg -x libpcap0.8-dev_*_i386.deb /libpcap/i386 && \twget http://archive.debian.org/debian/pool/main/libp/libpcap/libpcap0.8-dev_1.1.1-2+squeeze1_amd64.deb && \tdpkg -x libpcap0.8-dev_*_amd64.deb /libpcap/amd64 && \trm libpcap0.8-dev*.deb" shape="box"];
  "sha256:5bb4f9b7f4211b27252814bb5615c6a71981254ba9ddc81d2c24dc3dcd3e1626" [label="/bin/sh -c apt-get -o Acquire::Check-Valid-Until=false update && \tapt-get install -y libpcap0.8-dev" shape="box"];
  "sha256:0ac0f52f71120d92fea4f284b8f1c99280201590d75a02d767b5948fdb638c0d" [label="local://context" shape="ellipse"];
  "sha256:59c7b740593837340e82e2a5153ff4eb8d141c92dc215182dd1860344dbe83c6" [label="copy{src=/gopacket_pcap.patch, dest=/gopacket_pcap.patch}" shape="note"];
  "sha256:66630c65b5cb08429b8b96a43175155726f753d979909e5ead4918df4f9a907f" [label="sha256:66630c65b5cb08429b8b96a43175155726f753d979909e5ead4918df4f9a907f" shape="plaintext"];
  "sha256:96c324dc5177c7b38a533cb91053556c245310104ba400c1a4fadf9011043eb6" -> "sha256:f2f03c1d905e6289cdbaa28834467ba19b4a58eda9f5219ccd8b2e6a86ca6621" [label=""];
  "sha256:f2f03c1d905e6289cdbaa28834467ba19b4a58eda9f5219ccd8b2e6a86ca6621" -> "sha256:5bb4f9b7f4211b27252814bb5615c6a71981254ba9ddc81d2c24dc3dcd3e1626" [label=""];
  "sha256:5bb4f9b7f4211b27252814bb5615c6a71981254ba9ddc81d2c24dc3dcd3e1626" -> "sha256:59c7b740593837340e82e2a5153ff4eb8d141c92dc215182dd1860344dbe83c6" [label=""];
  "sha256:0ac0f52f71120d92fea4f284b8f1c99280201590d75a02d767b5948fdb638c0d" -> "sha256:59c7b740593837340e82e2a5153ff4eb8d141c92dc215182dd1860344dbe83c6" [label=""];
  "sha256:59c7b740593837340e82e2a5153ff4eb8d141c92dc215182dd1860344dbe83c6" -> "sha256:66630c65b5cb08429b8b96a43175155726f753d979909e5ead4918df4f9a907f" [label=""];
}

