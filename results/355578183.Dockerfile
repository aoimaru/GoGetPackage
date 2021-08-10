[app/sources/355578183.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:07c44f8fced52a0889289d37f71f65e0cdfc02d4abfa6815a0c0b7e583d5629e" [label="local://context" shape="ellipse"];
  "sha256:e33b247b306f5e3660cb9d785b2dd8c10427d8f69924c3f24fee861fcfddbc0a" [label="copy{src=/maven/web-console.jar, dest=/web-console.jar}" shape="note"];
  "sha256:8207637b2a1a3f487c14bfb90ca923d1096b61bfff696e2ae2b7e0d0f1903c66" [label="/bin/sh -c set -x     && install_Pkgs=\"         tar         unzip         bc         which         lsof         java-1.8.0-openjdk-headless     \"     && yum install -y $install_Pkgs     && yum clean all -y     && echo" shape="box"];
  "sha256:b38fc920a32b4e1fedd60b5ec44dadb48ddd5bf1c834efee3b5cae34d3fb742d" [label="sha256:b38fc920a32b4e1fedd60b5ec44dadb48ddd5bf1c834efee3b5cae34d3fb742d" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:e33b247b306f5e3660cb9d785b2dd8c10427d8f69924c3f24fee861fcfddbc0a" [label=""];
  "sha256:07c44f8fced52a0889289d37f71f65e0cdfc02d4abfa6815a0c0b7e583d5629e" -> "sha256:e33b247b306f5e3660cb9d785b2dd8c10427d8f69924c3f24fee861fcfddbc0a" [label=""];
  "sha256:e33b247b306f5e3660cb9d785b2dd8c10427d8f69924c3f24fee861fcfddbc0a" -> "sha256:8207637b2a1a3f487c14bfb90ca923d1096b61bfff696e2ae2b7e0d0f1903c66" [label=""];
  "sha256:8207637b2a1a3f487c14bfb90ca923d1096b61bfff696e2ae2b7e0d0f1903c66" -> "sha256:b38fc920a32b4e1fedd60b5ec44dadb48ddd5bf1c834efee3b5cae34d3fb742d" [label=""];
}

