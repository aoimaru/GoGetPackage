[app/sources/252772860.Dockerfile]
digraph {
  "sha256:cb0df94a3f83246284cc574690872d122a6dd66981e936ca9aae3981f8f24c3f" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:bcc10c8e93095fc3a750c0f7476d0cfa8617603445f7aa4f30dd49beb7a6c61e" [label="/bin/sh -c apt-get update -y && apt-get upgrade -y && apt-get install -y build-essential" shape="box"];
  "sha256:6456a613cad1a4e438cca67e7835c8058e84998e17d9a2a62273e1312ddb7280" [label="/bin/sh -c npm install -g n" shape="box"];
  "sha256:ebc7488362eb112ef5764e8fa59c5c4502f90f9faf9425bb295e82b339cd1f61" [label="/bin/sh -c n 6.0.0" shape="box"];
  "sha256:7ebe2eb82ff56da42a5ed8f8e30d9358896ca34b428d7dd0c373e16bdd18ef0b" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:a655d45a2efbbbb2359fe380e5254db7ad2d7e8eb1daf3b2823fc21712cc394e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:87d05d6b897fb01ed88c88a5eb94ff7c1503af52f50a46c2a46dcb1dcb18b631" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:1ab41043a4e533d356ad31caa804bf8138dfc58b50c8ac271a24a9526eeec2a8" [label="sha256:1ab41043a4e533d356ad31caa804bf8138dfc58b50c8ac271a24a9526eeec2a8" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" [label=""];
  "sha256:99558ee6d6be8fda765b8f2eba564ded61c5e7960e47f3c410920020926f8e9d" -> "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" [label=""];
  "sha256:0ad1554671f6df81f96ae78d1e325e6a3b7176788e3b130eff10bb690903c5ec" -> "sha256:bcc10c8e93095fc3a750c0f7476d0cfa8617603445f7aa4f30dd49beb7a6c61e" [label=""];
  "sha256:bcc10c8e93095fc3a750c0f7476d0cfa8617603445f7aa4f30dd49beb7a6c61e" -> "sha256:6456a613cad1a4e438cca67e7835c8058e84998e17d9a2a62273e1312ddb7280" [label=""];
  "sha256:6456a613cad1a4e438cca67e7835c8058e84998e17d9a2a62273e1312ddb7280" -> "sha256:ebc7488362eb112ef5764e8fa59c5c4502f90f9faf9425bb295e82b339cd1f61" [label=""];
  "sha256:ebc7488362eb112ef5764e8fa59c5c4502f90f9faf9425bb295e82b339cd1f61" -> "sha256:7ebe2eb82ff56da42a5ed8f8e30d9358896ca34b428d7dd0c373e16bdd18ef0b" [label=""];
  "sha256:cb0df94a3f83246284cc574690872d122a6dd66981e936ca9aae3981f8f24c3f" -> "sha256:7ebe2eb82ff56da42a5ed8f8e30d9358896ca34b428d7dd0c373e16bdd18ef0b" [label=""];
  "sha256:7ebe2eb82ff56da42a5ed8f8e30d9358896ca34b428d7dd0c373e16bdd18ef0b" -> "sha256:a655d45a2efbbbb2359fe380e5254db7ad2d7e8eb1daf3b2823fc21712cc394e" [label=""];
  "sha256:a655d45a2efbbbb2359fe380e5254db7ad2d7e8eb1daf3b2823fc21712cc394e" -> "sha256:87d05d6b897fb01ed88c88a5eb94ff7c1503af52f50a46c2a46dcb1dcb18b631" [label=""];
  "sha256:cb0df94a3f83246284cc574690872d122a6dd66981e936ca9aae3981f8f24c3f" -> "sha256:87d05d6b897fb01ed88c88a5eb94ff7c1503af52f50a46c2a46dcb1dcb18b631" [label=""];
  "sha256:87d05d6b897fb01ed88c88a5eb94ff7c1503af52f50a46c2a46dcb1dcb18b631" -> "sha256:1ab41043a4e533d356ad31caa804bf8138dfc58b50c8ac271a24a9526eeec2a8" [label=""];
}

