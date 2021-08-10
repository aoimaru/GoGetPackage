[app/sources/247474106.Dockerfile]
digraph {
  "sha256:cf3364645c28a6ec3a00ebf46c006b6b332e308ac488c4cf0a650949c617acc0" [label="local://context" shape="ellipse"];
  "sha256:26df66f247292ef77ca45cd4523089bb5ffc2c559707194b812c875416004644" [label="docker-image://docker.io/jpetazzo/dind:latest" shape="ellipse"];
  "sha256:adcbbcbb6b6834dc8e806de3e443f2701ccc94b8cebe100befce0fc30401dba6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d2f1ed99e4813cd1a3e6c649a8e9a64b4116e60cc1c3b03b0a6b0b61f21ba618" [label="/bin/sh -c apt-get install -y --no-install-recommends     build-essential     git     software-properties-common" shape="box"];
  "sha256:b0f12560b28a1d83f14ad967d5d1d973c0c80f53cca66ccc33e9b511fda8f650" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:1e7afe88ffb60253ee41dfd268c9993bde54a4a23892ed64580fa8f78cf6a14f" [label="/bin/sh -c tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:4152c1f228f4d245fd2fc41dfef62b966144637128b37882c95f5ca5a1713a30" [label="/bin/sh -c rm -f go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:f5fcb356e4902fc970dca9fa7be9e7d2f296867379f823aa5ca26e49b1829f55" [label="/bin/sh -c echo 'PATH=/usr/local/go/bin:${PATH}' >> /root/.bashrc" shape="box"];
  "sha256:e75940ca6cbcf189d980724831228c6308dbcfbe3b115617c2c6b48640a78718" [label="copy{src=/start_local_k8s_cluster.sh, dest=/var/k8s/start_local_k8s_cluster.sh}" shape="note"];
  "sha256:55abc3f69c0b55d05be60359a6025381214221da2155d2cb74faee4294926b40" [label="copy{src=/scripts, dest=/var/k8s/dist_test/scripts}" shape="note"];
  "sha256:565ac102581db5d3e0b2c3fc8ff7ea700479479874639e16d539efc272810c6b" [label="copy{src=/python, dest=/var/k8s/dist_test/python}" shape="note"];
  "sha256:bacbb3c7544e5c65fbae8ee01af2f0ba18c892b81f5dfa99fbae4c157bcf6609" [label="sha256:bacbb3c7544e5c65fbae8ee01af2f0ba18c892b81f5dfa99fbae4c157bcf6609" shape="plaintext"];
  "sha256:26df66f247292ef77ca45cd4523089bb5ffc2c559707194b812c875416004644" -> "sha256:adcbbcbb6b6834dc8e806de3e443f2701ccc94b8cebe100befce0fc30401dba6" [label=""];
  "sha256:adcbbcbb6b6834dc8e806de3e443f2701ccc94b8cebe100befce0fc30401dba6" -> "sha256:d2f1ed99e4813cd1a3e6c649a8e9a64b4116e60cc1c3b03b0a6b0b61f21ba618" [label=""];
  "sha256:d2f1ed99e4813cd1a3e6c649a8e9a64b4116e60cc1c3b03b0a6b0b61f21ba618" -> "sha256:b0f12560b28a1d83f14ad967d5d1d973c0c80f53cca66ccc33e9b511fda8f650" [label=""];
  "sha256:b0f12560b28a1d83f14ad967d5d1d973c0c80f53cca66ccc33e9b511fda8f650" -> "sha256:1e7afe88ffb60253ee41dfd268c9993bde54a4a23892ed64580fa8f78cf6a14f" [label=""];
  "sha256:1e7afe88ffb60253ee41dfd268c9993bde54a4a23892ed64580fa8f78cf6a14f" -> "sha256:4152c1f228f4d245fd2fc41dfef62b966144637128b37882c95f5ca5a1713a30" [label=""];
  "sha256:4152c1f228f4d245fd2fc41dfef62b966144637128b37882c95f5ca5a1713a30" -> "sha256:f5fcb356e4902fc970dca9fa7be9e7d2f296867379f823aa5ca26e49b1829f55" [label=""];
  "sha256:f5fcb356e4902fc970dca9fa7be9e7d2f296867379f823aa5ca26e49b1829f55" -> "sha256:e75940ca6cbcf189d980724831228c6308dbcfbe3b115617c2c6b48640a78718" [label=""];
  "sha256:cf3364645c28a6ec3a00ebf46c006b6b332e308ac488c4cf0a650949c617acc0" -> "sha256:e75940ca6cbcf189d980724831228c6308dbcfbe3b115617c2c6b48640a78718" [label=""];
  "sha256:e75940ca6cbcf189d980724831228c6308dbcfbe3b115617c2c6b48640a78718" -> "sha256:55abc3f69c0b55d05be60359a6025381214221da2155d2cb74faee4294926b40" [label=""];
  "sha256:cf3364645c28a6ec3a00ebf46c006b6b332e308ac488c4cf0a650949c617acc0" -> "sha256:55abc3f69c0b55d05be60359a6025381214221da2155d2cb74faee4294926b40" [label=""];
  "sha256:55abc3f69c0b55d05be60359a6025381214221da2155d2cb74faee4294926b40" -> "sha256:565ac102581db5d3e0b2c3fc8ff7ea700479479874639e16d539efc272810c6b" [label=""];
  "sha256:cf3364645c28a6ec3a00ebf46c006b6b332e308ac488c4cf0a650949c617acc0" -> "sha256:565ac102581db5d3e0b2c3fc8ff7ea700479479874639e16d539efc272810c6b" [label=""];
  "sha256:565ac102581db5d3e0b2c3fc8ff7ea700479479874639e16d539efc272810c6b" -> "sha256:bacbb3c7544e5c65fbae8ee01af2f0ba18c892b81f5dfa99fbae4c157bcf6609" [label=""];
}

