[app/sources/335407070.Dockerfile]
digraph {
  "sha256:76fb832085dc8df53f2b5cea2b3e389a332d20152751018672439b50fa7bb485" [label="docker-image://docker.io/resin/raspberrypi3-python:2.7" shape="ellipse"];
  "sha256:6f93a2e3157816925c635d30344d2b30d06047181d3a7c868f18111565c986e9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     unzip     build-essential cmake pkg-config     libjpeg-dev libtiff-dev libjasper-dev libpng-dev     libavcodec-dev libavformat-dev libswscale-dev libv4l-dev     libgtk2.0-dev     libatlas-base-dev gfortran     libtbb2 libtbb-dev     && rm -rf /var/lib/apt/lists/*     && apt-get -y autoremove" shape="box"];
  "sha256:8f21929bbe19bdd3ce207faed6927aa5eaad12493351a5a128c359141d83260f" [label="/bin/sh -c pip install --no-cache-dir     numpy     ipython     && find /usr/local        \\( -type d -a -name test -o -name tests \\)        -o \\( -type f -a -name '*.pyc' -o -name '*.pyo' \\)        -exec rm -rf '{}' +     && cd /     && rm -rf /usr/src/python ~/.cache" shape="box"];
  "sha256:6f9fe530f0a9d51814ba1045dbc4b6298983f3ef492b7775f441c90da6f9adb1" [label="local://context" shape="ellipse"];
  "sha256:eb1f175238d881243d58ca3cb72389a1a0842e2fb30366013d5c7f8e17207c62" [label="copy{src=/download_build_install_opencv.sh, dest=/download_build_install_opencv.sh}" shape="note"];
  "sha256:8ca7a62545d4bbc1e5742ba14cc6b3fb3badf8760c17ba70c060d805825fc24d" [label="/bin/sh -c ./download_build_install_opencv.sh" shape="box"];
  "sha256:d88bf1e1ffb6d93f4499b1fa546191221da47f5c61f7b22f3a6228685900ef86" [label="sha256:d88bf1e1ffb6d93f4499b1fa546191221da47f5c61f7b22f3a6228685900ef86" shape="plaintext"];
  "sha256:76fb832085dc8df53f2b5cea2b3e389a332d20152751018672439b50fa7bb485" -> "sha256:6f93a2e3157816925c635d30344d2b30d06047181d3a7c868f18111565c986e9" [label=""];
  "sha256:6f93a2e3157816925c635d30344d2b30d06047181d3a7c868f18111565c986e9" -> "sha256:8f21929bbe19bdd3ce207faed6927aa5eaad12493351a5a128c359141d83260f" [label=""];
  "sha256:8f21929bbe19bdd3ce207faed6927aa5eaad12493351a5a128c359141d83260f" -> "sha256:eb1f175238d881243d58ca3cb72389a1a0842e2fb30366013d5c7f8e17207c62" [label=""];
  "sha256:6f9fe530f0a9d51814ba1045dbc4b6298983f3ef492b7775f441c90da6f9adb1" -> "sha256:eb1f175238d881243d58ca3cb72389a1a0842e2fb30366013d5c7f8e17207c62" [label=""];
  "sha256:eb1f175238d881243d58ca3cb72389a1a0842e2fb30366013d5c7f8e17207c62" -> "sha256:8ca7a62545d4bbc1e5742ba14cc6b3fb3badf8760c17ba70c060d805825fc24d" [label=""];
  "sha256:8ca7a62545d4bbc1e5742ba14cc6b3fb3badf8760c17ba70c060d805825fc24d" -> "sha256:d88bf1e1ffb6d93f4499b1fa546191221da47f5c61f7b22f3a6228685900ef86" [label=""];
}

