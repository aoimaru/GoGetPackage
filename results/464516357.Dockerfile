[app/sources/464516357.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:f78bf163e65880e5d8474964eb757d12023e6daea73c92ad61cc6fbd9c329b3d" [label="/bin/sh -c cd /tmp/ && curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py && pip install awscli && cd -" shape="box"];
  "sha256:28628b3327108c7122b2120f9ab92e117b5b43ab29fd44bde7af73bdfdda921f" [label="local://context" shape="ellipse"];
  "sha256:b2411575582ee9f250cf4e73e964c1509e28d45d4ce90d345f9c8f9889bfe650" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:dd48f375043c539d405dd50d55bf09091803a13f3668ab38939cc0de17cd2fa8" [label="/bin/sh -c chmod +x ./entrypoint.sh" shape="box"];
  "sha256:4e2631434b195cd39741127f4693aa16c8c586069e8217a133830fb8207e4c03" [label="sha256:4e2631434b195cd39741127f4693aa16c8c586069e8217a133830fb8207e4c03" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:f78bf163e65880e5d8474964eb757d12023e6daea73c92ad61cc6fbd9c329b3d" [label=""];
  "sha256:f78bf163e65880e5d8474964eb757d12023e6daea73c92ad61cc6fbd9c329b3d" -> "sha256:b2411575582ee9f250cf4e73e964c1509e28d45d4ce90d345f9c8f9889bfe650" [label=""];
  "sha256:28628b3327108c7122b2120f9ab92e117b5b43ab29fd44bde7af73bdfdda921f" -> "sha256:b2411575582ee9f250cf4e73e964c1509e28d45d4ce90d345f9c8f9889bfe650" [label=""];
  "sha256:b2411575582ee9f250cf4e73e964c1509e28d45d4ce90d345f9c8f9889bfe650" -> "sha256:dd48f375043c539d405dd50d55bf09091803a13f3668ab38939cc0de17cd2fa8" [label=""];
  "sha256:dd48f375043c539d405dd50d55bf09091803a13f3668ab38939cc0de17cd2fa8" -> "sha256:4e2631434b195cd39741127f4693aa16c8c586069e8217a133830fb8207e4c03" [label=""];
}

