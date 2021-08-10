[app/sources/200667761.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:faf3446fe75e32b543883c93353aa4d8a3625f6564b68ece769659479e07a1f9" [label="local://context" shape="ellipse"];
  "sha256:496defecfc823606cfc5aff5b472bfff92b96b55a150aea481f4e52abc334c18" [label="copy{src=/rootfs.tar.gz, dest=/}" shape="note"];
  "sha256:31ad7499af34be582520c6ef4c5068b332d0040ce9214e13ec9ca5b7ad0a5300" [label="sha256:31ad7499af34be582520c6ef4c5068b332d0040ce9214e13ec9ca5b7ad0a5300" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:496defecfc823606cfc5aff5b472bfff92b96b55a150aea481f4e52abc334c18" [label=""];
  "sha256:faf3446fe75e32b543883c93353aa4d8a3625f6564b68ece769659479e07a1f9" -> "sha256:496defecfc823606cfc5aff5b472bfff92b96b55a150aea481f4e52abc334c18" [label=""];
  "sha256:496defecfc823606cfc5aff5b472bfff92b96b55a150aea481f4e52abc334c18" -> "sha256:31ad7499af34be582520c6ef4c5068b332d0040ce9214e13ec9ca5b7ad0a5300" [label=""];
}

