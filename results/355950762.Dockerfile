[app/sources/355950762.Dockerfile]
digraph {
  "sha256:21635d0b9552d797491c032a3736fc19a48392c8c0f3f25ba14e417f9e32f6f8" [label="docker-image://docker.io/library/windowsservercore:latest" shape="ellipse"];
  "sha256:45c22c2e00d2ef343e1081a1769cc74153296562e396bf1c61c4a78712ae2d70" [label="local://context" shape="ellipse"];
  "sha256:83b7cf84e4e98cac07c286b5aeed9bb4a263fd329f0256eddc6d41f21f1623a8" [label="copy{src=/globalinstall.ps1, dest=/Windows/Temp/globalinstall.ps1}" shape="note"];
  "sha256:b4b0ccca48eae4f485c49819f21846142aabf23d1610f2b2cd27a3d21ceb78e8" [label="/bin/sh -c powershell -executionpolicy unrestricted C:\\Windows\\Temp\\globalinstall.ps1" shape="box"];
  "sha256:f30affbcd514fc5456e43c850b3875d74744e138e3c93ab8a3bb394c22df1856" [label="/bin/sh -c DNVM install 1.0.0-rc1-update1 -global -persistent" shape="box"];
  "sha256:f2143edf4b5706ded862bf7d5385ef63353e42e4e019ae87222b3b89e89fae73" [label="sha256:f2143edf4b5706ded862bf7d5385ef63353e42e4e019ae87222b3b89e89fae73" shape="plaintext"];
  "sha256:21635d0b9552d797491c032a3736fc19a48392c8c0f3f25ba14e417f9e32f6f8" -> "sha256:83b7cf84e4e98cac07c286b5aeed9bb4a263fd329f0256eddc6d41f21f1623a8" [label=""];
  "sha256:45c22c2e00d2ef343e1081a1769cc74153296562e396bf1c61c4a78712ae2d70" -> "sha256:83b7cf84e4e98cac07c286b5aeed9bb4a263fd329f0256eddc6d41f21f1623a8" [label=""];
  "sha256:83b7cf84e4e98cac07c286b5aeed9bb4a263fd329f0256eddc6d41f21f1623a8" -> "sha256:b4b0ccca48eae4f485c49819f21846142aabf23d1610f2b2cd27a3d21ceb78e8" [label=""];
  "sha256:b4b0ccca48eae4f485c49819f21846142aabf23d1610f2b2cd27a3d21ceb78e8" -> "sha256:f30affbcd514fc5456e43c850b3875d74744e138e3c93ab8a3bb394c22df1856" [label=""];
  "sha256:f30affbcd514fc5456e43c850b3875d74744e138e3c93ab8a3bb394c22df1856" -> "sha256:f2143edf4b5706ded862bf7d5385ef63353e42e4e019ae87222b3b89e89fae73" [label=""];
}

