[app/sources/319909807.Dockerfile]
digraph {
  "sha256:40ad2c7accc3899c74c7eba224ed06d7588f9125a184d95026129b9987d09296" [label="docker-image://docker.io/yahuiwong/centos:7.5.1804Linux4.19.2-1.el7.elrepo.x86_64" shape="ellipse"];
  "sha256:dc44f2eabfc60379ec856d93bd2c4da527397bdad7bf1a5e46ef57faa07351ac" [label="local://context" shape="ellipse"];
  "sha256:f051fa3b2e51f661782a031257d67d7ba4bc92134b93a1abfe7b712c7b3dc31c" [label="copy{src=/install-ss-tproxy.sh, dest=/install-ss-tproxy.sh}" shape="note"];
  "sha256:ad29153d3d7f4cf0988d2c490ffe2ede9488f274a3e6a6c97bf880b41a356a24" [label="/bin/sh -c sh /install-ss-tproxy.sh" shape="box"];
  "sha256:0a5b43127428b4556bcfb7f742035ab827932fcb29d03a040f28b9675aeccd3d" [label="sha256:0a5b43127428b4556bcfb7f742035ab827932fcb29d03a040f28b9675aeccd3d" shape="plaintext"];
  "sha256:40ad2c7accc3899c74c7eba224ed06d7588f9125a184d95026129b9987d09296" -> "sha256:f051fa3b2e51f661782a031257d67d7ba4bc92134b93a1abfe7b712c7b3dc31c" [label=""];
  "sha256:dc44f2eabfc60379ec856d93bd2c4da527397bdad7bf1a5e46ef57faa07351ac" -> "sha256:f051fa3b2e51f661782a031257d67d7ba4bc92134b93a1abfe7b712c7b3dc31c" [label=""];
  "sha256:f051fa3b2e51f661782a031257d67d7ba4bc92134b93a1abfe7b712c7b3dc31c" -> "sha256:ad29153d3d7f4cf0988d2c490ffe2ede9488f274a3e6a6c97bf880b41a356a24" [label=""];
  "sha256:ad29153d3d7f4cf0988d2c490ffe2ede9488f274a3e6a6c97bf880b41a356a24" -> "sha256:0a5b43127428b4556bcfb7f742035ab827932fcb29d03a040f28b9675aeccd3d" [label=""];
}

