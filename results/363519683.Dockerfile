[app/sources/363519683.Dockerfile]
digraph {
  "sha256:9c72481af526be597acf49285a5fa714c7674fa8dcb866a564f3c5d8a97cd716" [label="docker-image://docker.io/webdevops/base:latest@sha256:11c3cdcceb69d1cfb9d6509530d4195d2cae80be8ec3450abaccf092d3116124" shape="ellipse"];
  "sha256:92a888f42ba0aea6387de1afca24b623e9a3524d9858196511b7b68cf85cbf0b" [label="local://context" shape="ellipse"];
  "sha256:1bd4023191cdd089b78a1885ec0b892dd1e01b66a27ed3c6a22fe0c923f5ca10" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:5a879622536581c11feb0c71cf0eda8b9b6ddbb66a7e620ae8626b6766eed6f3" [label="/bin/sh -c set -x     && apt-install         vsftpd     && ln -sf /opt/docker/etc/vsftpd/vsftpd.conf /etc/vsftpd.conf     && mkdir -p             /var/run/vsftpd/empty             /var/log/supervisor     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:f2f3df74e86ee3f0f3f656d1b2da1b997969a34521c0f1745e99720def61b63c" [label="sha256:f2f3df74e86ee3f0f3f656d1b2da1b997969a34521c0f1745e99720def61b63c" shape="plaintext"];
  "sha256:9c72481af526be597acf49285a5fa714c7674fa8dcb866a564f3c5d8a97cd716" -> "sha256:1bd4023191cdd089b78a1885ec0b892dd1e01b66a27ed3c6a22fe0c923f5ca10" [label=""];
  "sha256:92a888f42ba0aea6387de1afca24b623e9a3524d9858196511b7b68cf85cbf0b" -> "sha256:1bd4023191cdd089b78a1885ec0b892dd1e01b66a27ed3c6a22fe0c923f5ca10" [label=""];
  "sha256:1bd4023191cdd089b78a1885ec0b892dd1e01b66a27ed3c6a22fe0c923f5ca10" -> "sha256:5a879622536581c11feb0c71cf0eda8b9b6ddbb66a7e620ae8626b6766eed6f3" [label=""];
  "sha256:5a879622536581c11feb0c71cf0eda8b9b6ddbb66a7e620ae8626b6766eed6f3" -> "sha256:f2f3df74e86ee3f0f3f656d1b2da1b997969a34521c0f1745e99720def61b63c" [label=""];
}

