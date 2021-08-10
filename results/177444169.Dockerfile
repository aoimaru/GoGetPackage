[app/sources/177444169.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:f0b30a0848b5591a96893d1c5714951e4f80a99752b24f2ed03e9f70bc34fdd0" [label="/bin/sh -c mkdir -p /run/docker/plugins /etc/openvswitch /var/run/contiv/log  && echo 'http://dl-cdn.alpinelinux.org/alpine/v3.4/main' >> /etc/apk/repositories  && apk --no-cache add       openvswitch=2.5.0-r0 iptables ca-certificates openssl curl bash" shape="box"];
  "sha256:fc6f7be621834552cbffec08e4a2591aa40474efcfeed1ee4c2ab9b269f39c31" [label="local://context" shape="ellipse"];
  "sha256:a762b5f1fb8005a59200990949cfb8bfd943d22460a799b58aac8c7737fe8e07" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:c96a990db48e6164ea0ce2afe6667a6e0d026b9506188904727bc6fbc702c0c7" [label="copy{src=/startcontiv.sh, dest=/}" shape="note"];
  "sha256:b27d1a9ca701ec91cfd8f76a8b4810e6472afab81f73159d34e1ca84d8c418eb" [label="sha256:b27d1a9ca701ec91cfd8f76a8b4810e6472afab81f73159d34e1ca84d8c418eb" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:f0b30a0848b5591a96893d1c5714951e4f80a99752b24f2ed03e9f70bc34fdd0" [label=""];
  "sha256:f0b30a0848b5591a96893d1c5714951e4f80a99752b24f2ed03e9f70bc34fdd0" -> "sha256:a762b5f1fb8005a59200990949cfb8bfd943d22460a799b58aac8c7737fe8e07" [label=""];
  "sha256:fc6f7be621834552cbffec08e4a2591aa40474efcfeed1ee4c2ab9b269f39c31" -> "sha256:a762b5f1fb8005a59200990949cfb8bfd943d22460a799b58aac8c7737fe8e07" [label=""];
  "sha256:a762b5f1fb8005a59200990949cfb8bfd943d22460a799b58aac8c7737fe8e07" -> "sha256:c96a990db48e6164ea0ce2afe6667a6e0d026b9506188904727bc6fbc702c0c7" [label=""];
  "sha256:fc6f7be621834552cbffec08e4a2591aa40474efcfeed1ee4c2ab9b269f39c31" -> "sha256:c96a990db48e6164ea0ce2afe6667a6e0d026b9506188904727bc6fbc702c0c7" [label=""];
  "sha256:c96a990db48e6164ea0ce2afe6667a6e0d026b9506188904727bc6fbc702c0c7" -> "sha256:b27d1a9ca701ec91cfd8f76a8b4810e6472afab81f73159d34e1ca84d8c418eb" [label=""];
}

