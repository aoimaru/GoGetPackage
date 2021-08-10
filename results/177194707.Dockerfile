[app/sources/177194707.Dockerfile]
digraph {
  "sha256:5120ee3bc61b5248921106f9c05938ef2e7559f23b6ecfded71cd0724fe0a017" [label="local://context" shape="ellipse"];
  "sha256:e73054f64b4b587de2d01fdf063a66d1d3f57fc3d4a064c4c99e38f248890282" [label="docker-image://docker.io/library/debian:8.0" shape="ellipse"];
  "sha256:4e46854b43315be6f456ceb202c5cd061241aa4fac47e0334c749d29406836e6" [label="/bin/sh -c apt-get update && apt-get install rsyslog ca-certificates -y" shape="box"];
  "sha256:bc7f24e83eb3319c0bfd721240dea99d605de7b88337bf73f5f4c084f10fee45" [label="copy{src=/objects/hologram-server.deb, dest=/tmp/hologram-server.deb}" shape="note"];
  "sha256:9764cd6c3eb626369e051d04a8ec65b12118287af99ae51157eabd2e9928a398" [label="/bin/sh -c dpkg -i /tmp/hologram-server.deb" shape="box"];
  "sha256:0f4a5a3c90bb265d1321d6344fdab1befeb619af06a20972770f638b8cfb2650" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:c7162b0954d0ca62acf3569987d1ee51a238977d9a1361d406264d2c66273155" [label="sha256:c7162b0954d0ca62acf3569987d1ee51a238977d9a1361d406264d2c66273155" shape="plaintext"];
  "sha256:e73054f64b4b587de2d01fdf063a66d1d3f57fc3d4a064c4c99e38f248890282" -> "sha256:4e46854b43315be6f456ceb202c5cd061241aa4fac47e0334c749d29406836e6" [label=""];
  "sha256:4e46854b43315be6f456ceb202c5cd061241aa4fac47e0334c749d29406836e6" -> "sha256:bc7f24e83eb3319c0bfd721240dea99d605de7b88337bf73f5f4c084f10fee45" [label=""];
  "sha256:5120ee3bc61b5248921106f9c05938ef2e7559f23b6ecfded71cd0724fe0a017" -> "sha256:bc7f24e83eb3319c0bfd721240dea99d605de7b88337bf73f5f4c084f10fee45" [label=""];
  "sha256:bc7f24e83eb3319c0bfd721240dea99d605de7b88337bf73f5f4c084f10fee45" -> "sha256:9764cd6c3eb626369e051d04a8ec65b12118287af99ae51157eabd2e9928a398" [label=""];
  "sha256:9764cd6c3eb626369e051d04a8ec65b12118287af99ae51157eabd2e9928a398" -> "sha256:0f4a5a3c90bb265d1321d6344fdab1befeb619af06a20972770f638b8cfb2650" [label=""];
  "sha256:5120ee3bc61b5248921106f9c05938ef2e7559f23b6ecfded71cd0724fe0a017" -> "sha256:0f4a5a3c90bb265d1321d6344fdab1befeb619af06a20972770f638b8cfb2650" [label=""];
  "sha256:0f4a5a3c90bb265d1321d6344fdab1befeb619af06a20972770f638b8cfb2650" -> "sha256:c7162b0954d0ca62acf3569987d1ee51a238977d9a1361d406264d2c66273155" [label=""];
}

