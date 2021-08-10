[app/sources/265650855.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:dd9a2cb6a45fc0c220d4aa7140ec698d556206fdf3f551c4e5de1fff7f502888" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends ca-certificates curl bzip2     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f31fbdcc527bb0b186bdd9890442e4cbe82e23c8055096bbdd2d080616d1f4e3" [label="/bin/sh -c umask 0     && mkdir -p /tmp/deps     && cd /tmp/deps     && curl -L https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o Miniconda3-latest-Linux-x86_64.sh     && bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3     && rm -rf Miniconda3-latest-Linux-x86_64.sh     && PATH=/opt/miniconda3/bin:$PATH     && conda install python=2.7     && conda update -y --all     && conda install pip wheel opencv     && conda clean -y --all     && cd /     && rm -rf /tmp/*" shape="box"];
  "sha256:e81ae6684bf3412c3a5d46f7106339b7f86f85e2d345f8fe47f4bfc443ef42f5" [label="/bin/sh -c pip install onnx nnabla" shape="box"];
  "sha256:df96ce4cdd7937c348821b3d2ba2d09a712f93c59b8a42709e1607395b936042" [label="sha256:df96ce4cdd7937c348821b3d2ba2d09a712f93c59b8a42709e1607395b936042" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:dd9a2cb6a45fc0c220d4aa7140ec698d556206fdf3f551c4e5de1fff7f502888" [label=""];
  "sha256:dd9a2cb6a45fc0c220d4aa7140ec698d556206fdf3f551c4e5de1fff7f502888" -> "sha256:f31fbdcc527bb0b186bdd9890442e4cbe82e23c8055096bbdd2d080616d1f4e3" [label=""];
  "sha256:f31fbdcc527bb0b186bdd9890442e4cbe82e23c8055096bbdd2d080616d1f4e3" -> "sha256:e81ae6684bf3412c3a5d46f7106339b7f86f85e2d345f8fe47f4bfc443ef42f5" [label=""];
  "sha256:e81ae6684bf3412c3a5d46f7106339b7f86f85e2d345f8fe47f4bfc443ef42f5" -> "sha256:df96ce4cdd7937c348821b3d2ba2d09a712f93c59b8a42709e1607395b936042" [label=""];
}

