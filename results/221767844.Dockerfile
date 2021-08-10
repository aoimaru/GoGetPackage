[app/sources/221767844.Dockerfile]
digraph {
  "sha256:b669bf85aa28661d41ff9fe8f20f9b31a90919768cf61f259719f1ddc933a7fe" [label="docker-image://docker.io/keymetrics/pm2:latest" shape="ellipse"];
  "sha256:c4566cc925af798495238fa37c8ee7c4c023c6819265f40dfb731aa6319c7fe1" [label="/bin/sh -c mkdir -p /var/app" shape="box"];
  "sha256:06ece81f3bdb8617d89c5b864effafcb187aff7a7c7bbfb080c26d8305a7481e" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:237926318501f357d2302f2faafc4f7d5adc0b9c19cf00dbad9d65235476a3cc" [label="local://context" shape="ellipse"];
  "sha256:0bf02256c37cfb611954af693ab65620f26668a0936363c97bd55a61fb09c57c" [label="copy{src=/package.json, dest=/var/app}" shape="note"];
  "sha256:de4e25f27defe0d97a6f6e15d219372c508ee1499f3eacecf778987f2e31e551" [label="/bin/sh -c npm install" shape="box"];
  "sha256:7a896e5f09ec3d6bc149549441683889034e01337f93fffde075686ba900d6ef" [label="sha256:7a896e5f09ec3d6bc149549441683889034e01337f93fffde075686ba900d6ef" shape="plaintext"];
  "sha256:b669bf85aa28661d41ff9fe8f20f9b31a90919768cf61f259719f1ddc933a7fe" -> "sha256:c4566cc925af798495238fa37c8ee7c4c023c6819265f40dfb731aa6319c7fe1" [label=""];
  "sha256:c4566cc925af798495238fa37c8ee7c4c023c6819265f40dfb731aa6319c7fe1" -> "sha256:06ece81f3bdb8617d89c5b864effafcb187aff7a7c7bbfb080c26d8305a7481e" [label=""];
  "sha256:06ece81f3bdb8617d89c5b864effafcb187aff7a7c7bbfb080c26d8305a7481e" -> "sha256:0bf02256c37cfb611954af693ab65620f26668a0936363c97bd55a61fb09c57c" [label=""];
  "sha256:237926318501f357d2302f2faafc4f7d5adc0b9c19cf00dbad9d65235476a3cc" -> "sha256:0bf02256c37cfb611954af693ab65620f26668a0936363c97bd55a61fb09c57c" [label=""];
  "sha256:0bf02256c37cfb611954af693ab65620f26668a0936363c97bd55a61fb09c57c" -> "sha256:de4e25f27defe0d97a6f6e15d219372c508ee1499f3eacecf778987f2e31e551" [label=""];
  "sha256:de4e25f27defe0d97a6f6e15d219372c508ee1499f3eacecf778987f2e31e551" -> "sha256:7a896e5f09ec3d6bc149549441683889034e01337f93fffde075686ba900d6ef" [label=""];
}

