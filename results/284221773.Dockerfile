[app/sources/284221773.Dockerfile]
digraph {
  "sha256:26df66f247292ef77ca45cd4523089bb5ffc2c559707194b812c875416004644" [label="docker-image://docker.io/jpetazzo/dind:latest" shape="ellipse"];
  "sha256:adcbbcbb6b6834dc8e806de3e443f2701ccc94b8cebe100befce0fc30401dba6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d2f1ed99e4813cd1a3e6c649a8e9a64b4116e60cc1c3b03b0a6b0b61f21ba618" [label="/bin/sh -c apt-get install -y --no-install-recommends     build-essential     git     software-properties-common" shape="box"];
  "sha256:b0f12560b28a1d83f14ad967d5d1d973c0c80f53cca66ccc33e9b511fda8f650" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:1e7afe88ffb60253ee41dfd268c9993bde54a4a23892ed64580fa8f78cf6a14f" [label="/bin/sh -c tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:4152c1f228f4d245fd2fc41dfef62b966144637128b37882c95f5ca5a1713a30" [label="/bin/sh -c rm -f go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:f5fcb356e4902fc970dca9fa7be9e7d2f296867379f823aa5ca26e49b1829f55" [label="/bin/sh -c echo 'PATH=/usr/local/go/bin:${PATH}' >> /root/.bashrc" shape="box"];
  "sha256:44df881b72dcb98e93872c459294e4d1c4cb68a55e67570ece4e9a0548dcad63" [label="local://context" shape="ellipse"];
  "sha256:d79b4a1b6b5b6db43561bc7340562ec95345b45d8c2f9a85da3985c938f69d28" [label="copy{src=/start_local_k8s_cluster.sh, dest=/var/k8s/start_local_k8s_cluster.sh}" shape="note"];
  "sha256:21d319879453911030300ff43974a63c9ae8ecdceb3a7f8e1c765047cea8294a" [label="copy{src=/scripts, dest=/var/k8s/dist_test/scripts}" shape="note"];
  "sha256:e666541ef5fa5270d5bc41c307d939a9023696be99a3fcc00bf5ddc24117f6e7" [label="copy{src=/python, dest=/var/k8s/dist_test/python}" shape="note"];
  "sha256:41e16dbb408071c39fcace67ad19dc70768d1e348443ef5054d154159f50a351" [label="sha256:41e16dbb408071c39fcace67ad19dc70768d1e348443ef5054d154159f50a351" shape="plaintext"];
  "sha256:26df66f247292ef77ca45cd4523089bb5ffc2c559707194b812c875416004644" -> "sha256:adcbbcbb6b6834dc8e806de3e443f2701ccc94b8cebe100befce0fc30401dba6" [label=""];
  "sha256:adcbbcbb6b6834dc8e806de3e443f2701ccc94b8cebe100befce0fc30401dba6" -> "sha256:d2f1ed99e4813cd1a3e6c649a8e9a64b4116e60cc1c3b03b0a6b0b61f21ba618" [label=""];
  "sha256:d2f1ed99e4813cd1a3e6c649a8e9a64b4116e60cc1c3b03b0a6b0b61f21ba618" -> "sha256:b0f12560b28a1d83f14ad967d5d1d973c0c80f53cca66ccc33e9b511fda8f650" [label=""];
  "sha256:b0f12560b28a1d83f14ad967d5d1d973c0c80f53cca66ccc33e9b511fda8f650" -> "sha256:1e7afe88ffb60253ee41dfd268c9993bde54a4a23892ed64580fa8f78cf6a14f" [label=""];
  "sha256:1e7afe88ffb60253ee41dfd268c9993bde54a4a23892ed64580fa8f78cf6a14f" -> "sha256:4152c1f228f4d245fd2fc41dfef62b966144637128b37882c95f5ca5a1713a30" [label=""];
  "sha256:4152c1f228f4d245fd2fc41dfef62b966144637128b37882c95f5ca5a1713a30" -> "sha256:f5fcb356e4902fc970dca9fa7be9e7d2f296867379f823aa5ca26e49b1829f55" [label=""];
  "sha256:f5fcb356e4902fc970dca9fa7be9e7d2f296867379f823aa5ca26e49b1829f55" -> "sha256:d79b4a1b6b5b6db43561bc7340562ec95345b45d8c2f9a85da3985c938f69d28" [label=""];
  "sha256:44df881b72dcb98e93872c459294e4d1c4cb68a55e67570ece4e9a0548dcad63" -> "sha256:d79b4a1b6b5b6db43561bc7340562ec95345b45d8c2f9a85da3985c938f69d28" [label=""];
  "sha256:d79b4a1b6b5b6db43561bc7340562ec95345b45d8c2f9a85da3985c938f69d28" -> "sha256:21d319879453911030300ff43974a63c9ae8ecdceb3a7f8e1c765047cea8294a" [label=""];
  "sha256:44df881b72dcb98e93872c459294e4d1c4cb68a55e67570ece4e9a0548dcad63" -> "sha256:21d319879453911030300ff43974a63c9ae8ecdceb3a7f8e1c765047cea8294a" [label=""];
  "sha256:21d319879453911030300ff43974a63c9ae8ecdceb3a7f8e1c765047cea8294a" -> "sha256:e666541ef5fa5270d5bc41c307d939a9023696be99a3fcc00bf5ddc24117f6e7" [label=""];
  "sha256:44df881b72dcb98e93872c459294e4d1c4cb68a55e67570ece4e9a0548dcad63" -> "sha256:e666541ef5fa5270d5bc41c307d939a9023696be99a3fcc00bf5ddc24117f6e7" [label=""];
  "sha256:e666541ef5fa5270d5bc41c307d939a9023696be99a3fcc00bf5ddc24117f6e7" -> "sha256:41e16dbb408071c39fcace67ad19dc70768d1e348443ef5054d154159f50a351" [label=""];
}

