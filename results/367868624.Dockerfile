[app/sources/367868624.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7a1a544fe3ddb840c914853626dad8760adbb9f23a24f13ff63f69092fc16133" [label="/bin/sh -c sed -i.bak -e \"s%http://us.archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g\" /etc/apt/sources.list" shape="box"];
  "sha256:b837f2e13a7acdd78efa03234757b8fdac8e5c61d54acbc134200eab0bedea36" [label="/bin/sh -c apt-get -y update     && apt-get -y install         language-pack-ja-base         language-pack-ja     && apt-get clean" shape="box"];
  "sha256:6e621217c5c72e7603cdd42d76ef591bf7641154142db03c476771745a2e7a08" [label="/bin/sh -c apt-get -y update         && apt-get -y install             texlive             texlive-lang-cjk             xdvik-ja             dvipsk-ja             gv             texlive-fonts-recommended             texlive-fonts-extra         && apt-get clean" shape="box"];
  "sha256:ed552b602fc61dfc16c8f77b26aa0c418e6ceb398ecd2e2bc948a631858b7f20" [label="/bin/sh -c apt-get -y update         && apt-get -y install             make             python-pip         && apt-get clean" shape="box"];
  "sha256:bf13d6b1d9488a4af335b5e932e73f895e3781ccd3e219623843ea9d23a32180" [label="/bin/sh -c pip install Sphinx==1.4.8" shape="box"];
  "sha256:1c10fa779736b672e7caf13f07be8bcb652c0bc6bf71e16613ecfdc9d7dc1180" [label="mkdir{path=/mnt}" shape="note"];
  "sha256:264c92aa7f17553ea88fa2b61a07d36c26facc7edd95e31c6a185ac81a13cc55" [label="sha256:264c92aa7f17553ea88fa2b61a07d36c26facc7edd95e31c6a185ac81a13cc55" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7a1a544fe3ddb840c914853626dad8760adbb9f23a24f13ff63f69092fc16133" [label=""];
  "sha256:7a1a544fe3ddb840c914853626dad8760adbb9f23a24f13ff63f69092fc16133" -> "sha256:b837f2e13a7acdd78efa03234757b8fdac8e5c61d54acbc134200eab0bedea36" [label=""];
  "sha256:b837f2e13a7acdd78efa03234757b8fdac8e5c61d54acbc134200eab0bedea36" -> "sha256:6e621217c5c72e7603cdd42d76ef591bf7641154142db03c476771745a2e7a08" [label=""];
  "sha256:6e621217c5c72e7603cdd42d76ef591bf7641154142db03c476771745a2e7a08" -> "sha256:ed552b602fc61dfc16c8f77b26aa0c418e6ceb398ecd2e2bc948a631858b7f20" [label=""];
  "sha256:ed552b602fc61dfc16c8f77b26aa0c418e6ceb398ecd2e2bc948a631858b7f20" -> "sha256:bf13d6b1d9488a4af335b5e932e73f895e3781ccd3e219623843ea9d23a32180" [label=""];
  "sha256:bf13d6b1d9488a4af335b5e932e73f895e3781ccd3e219623843ea9d23a32180" -> "sha256:1c10fa779736b672e7caf13f07be8bcb652c0bc6bf71e16613ecfdc9d7dc1180" [label=""];
  "sha256:1c10fa779736b672e7caf13f07be8bcb652c0bc6bf71e16613ecfdc9d7dc1180" -> "sha256:264c92aa7f17553ea88fa2b61a07d36c26facc7edd95e31c6a185ac81a13cc55" [label=""];
}

