[app/sources/244579261.Dockerfile]
digraph {
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" [label="docker-image://docker.io/library/debian:sid" shape="ellipse"];
  "sha256:99036c1a675745b0ca5f3abd165b7885ce5e020706719a7d574c99d42bf4bae5" [label="/bin/sh -c apt-get update     && apt-get install -y systemd     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:9770de1f19ff91240c0eaaaf3a8d606aeee3fa32be4ca2799cbe2f8b86776ba7" [label="/bin/sh -c rm -f /lib/systemd/system/multi-user.target.wants/*     /etc/systemd/system/*.wants/*     /lib/systemd/system/local-fs.target.wants/*     /lib/systemd/system/sockets.target.wants/*udev*     /lib/systemd/system/sockets.target.wants/*initctl*     /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup*     /lib/systemd/system/systemd-update-utmp*" shape="box"];
  "sha256:fc0a321f8d53fef6682684f41a0beba532b9ff38d4a8959f9bcd7900fd3d3c5c" [label="sha256:fc0a321f8d53fef6682684f41a0beba532b9ff38d4a8959f9bcd7900fd3d3c5c" shape="plaintext"];
  "sha256:0b5154979434d0e1c8ac334a0708b7d6b86d8cf222d5a6081171ad39f0069686" -> "sha256:99036c1a675745b0ca5f3abd165b7885ce5e020706719a7d574c99d42bf4bae5" [label=""];
  "sha256:99036c1a675745b0ca5f3abd165b7885ce5e020706719a7d574c99d42bf4bae5" -> "sha256:9770de1f19ff91240c0eaaaf3a8d606aeee3fa32be4ca2799cbe2f8b86776ba7" [label=""];
  "sha256:9770de1f19ff91240c0eaaaf3a8d606aeee3fa32be4ca2799cbe2f8b86776ba7" -> "sha256:fc0a321f8d53fef6682684f41a0beba532b9ff38d4a8959f9bcd7900fd3d3c5c" [label=""];
}

