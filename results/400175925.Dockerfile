[app/sources/400175925.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:42569cf90627e86d80a80c17f036b770a332a5f92627b9f129e3ef00f34b7cd8" [label="/bin/sh -c echo \"Getting version: ${ETHERPAD_VERSION}\" && \tcurl \t\t--location \t\t--fail \t\t--silent \t\t--show-error \t\t--output /opt/etherpad-lite.tar.gz \t\thttps://github.com/ether/etherpad-lite/archive/\"${ETHERPAD_VERSION}\".tar.gz && \tmkdir /opt/etherpad-lite && \ttar xf /opt/etherpad-lite.tar.gz \t\t--directory /opt/etherpad-lite \t\t--strip-components=1 && \trm /opt/etherpad-lite.tar.gz" shape="box"];
  "sha256:0ab34da3912213d44d5e6eff49d9d45358a6cd5a808e58ac3ed73d77cb683ef3" [label="/bin/sh -c /opt/etherpad-lite/bin/installDeps.sh" shape="box"];
  "sha256:772b87301639a3428c3f646648e652912236ef45e4eac0057c76ecd6a4aaf4cb" [label="local://context" shape="ellipse"];
  "sha256:7ed5fc56e9d5a24b4058f5db212a5c37b5469761c413a27c769954dffea9b765" [label="copy{src=/nop, dest=/opt/etherpad-lite/},copy{src=/setting[s].json, dest=/opt/etherpad-lite/}" shape="note"];
  "sha256:d3092ffab5a499b18474a91a00d3c191ba991b89d0ee86565fe99694a1188ce2" [label="mkdir{path=/opt/etherpad-lite}" shape="note"];
  "sha256:ab5b834fded6d6096e88115575319491efd2b21e4d15c5a15e3fa33dbb4a65af" [label="sha256:ab5b834fded6d6096e88115575319491efd2b21e4d15c5a15e3fa33dbb4a65af" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:42569cf90627e86d80a80c17f036b770a332a5f92627b9f129e3ef00f34b7cd8" [label=""];
  "sha256:42569cf90627e86d80a80c17f036b770a332a5f92627b9f129e3ef00f34b7cd8" -> "sha256:0ab34da3912213d44d5e6eff49d9d45358a6cd5a808e58ac3ed73d77cb683ef3" [label=""];
  "sha256:0ab34da3912213d44d5e6eff49d9d45358a6cd5a808e58ac3ed73d77cb683ef3" -> "sha256:7ed5fc56e9d5a24b4058f5db212a5c37b5469761c413a27c769954dffea9b765" [label=""];
  "sha256:772b87301639a3428c3f646648e652912236ef45e4eac0057c76ecd6a4aaf4cb" -> "sha256:7ed5fc56e9d5a24b4058f5db212a5c37b5469761c413a27c769954dffea9b765" [label=""];
  "sha256:7ed5fc56e9d5a24b4058f5db212a5c37b5469761c413a27c769954dffea9b765" -> "sha256:d3092ffab5a499b18474a91a00d3c191ba991b89d0ee86565fe99694a1188ce2" [label=""];
  "sha256:d3092ffab5a499b18474a91a00d3c191ba991b89d0ee86565fe99694a1188ce2" -> "sha256:ab5b834fded6d6096e88115575319491efd2b21e4d15c5a15e3fa33dbb4a65af" [label=""];
}

