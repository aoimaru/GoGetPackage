[app/sources/310132586.Dockerfile]
digraph {
  "sha256:83ac9998f514f44ff49e1011ccd6d146173822b353e41965e427eae91b013ab2" [label="docker-image://docker.io/library/python:3.7.0" shape="ellipse"];
  "sha256:d96306bfdaf10a9e655700f22e293c5db3b79420dee131ce590c61feb709e6e6" [label="/bin/sh -c apt-get update -yqq && apt-get install -yqq --no-install-recommends netcat && apt-get -q clean" shape="box"];
  "sha256:30414cdfe7fe1ae416dc5d1c657eaa9d7b1601cf6bbe3dd91a59b62b09a04667" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:5b24bf064348b146fa7c1a88337928969602171667a0365103f724da7b4c2fba" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:efcaaacd7b2014ca64743fb0f75cbe9990d42f9bd4557c93692f3b47aa64ebf3" [label="/bin/sh -c pip install --no-cache-dir pipenv" shape="box"];
  "sha256:346f12f0e01b21367be0cafa21be6b32971ab886a37982617858264ba5de7332" [label="local://context" shape="ellipse"];
  "sha256:032eefc6f180d7199a30d1f0af86d29b1d3969f0713ef591a87c115e669836fc" [label="copy{src=/Pipfile, dest=/usr/src/app/},copy{src=/Pipfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:5dd0b8ec57dc723b2b4bc21dcf990f6f6e6744258fcda02c6ee57bead98ae357" [label="/bin/sh -c pipenv install --deploy --dev --ignore-pipfile --system" shape="box"];
  "sha256:f6ec7ba2fd7c7f66238523f2c8fdcb6b2e8d9e5ac1f60dab0693c1c4f5672588" [label="copy{src=/entrypoint.sh, dest=/usr/src/app/entrypoint.sh}" shape="note"];
  "sha256:22372b701d1142ec7341070b0c64ce42392cb179937ce6983de6433a22f5ee2e" [label="copy{src=/newrelic.ini, dest=/usr/src/app/newrelic.ini}" shape="note"];
  "sha256:37a54b9565b18baf58f742ad137b99a7f18dbfd26fa5dd7aab7e113860c10fe2" [label="sha256:37a54b9565b18baf58f742ad137b99a7f18dbfd26fa5dd7aab7e113860c10fe2" shape="plaintext"];
  "sha256:83ac9998f514f44ff49e1011ccd6d146173822b353e41965e427eae91b013ab2" -> "sha256:d96306bfdaf10a9e655700f22e293c5db3b79420dee131ce590c61feb709e6e6" [label=""];
  "sha256:d96306bfdaf10a9e655700f22e293c5db3b79420dee131ce590c61feb709e6e6" -> "sha256:30414cdfe7fe1ae416dc5d1c657eaa9d7b1601cf6bbe3dd91a59b62b09a04667" [label=""];
  "sha256:30414cdfe7fe1ae416dc5d1c657eaa9d7b1601cf6bbe3dd91a59b62b09a04667" -> "sha256:5b24bf064348b146fa7c1a88337928969602171667a0365103f724da7b4c2fba" [label=""];
  "sha256:5b24bf064348b146fa7c1a88337928969602171667a0365103f724da7b4c2fba" -> "sha256:efcaaacd7b2014ca64743fb0f75cbe9990d42f9bd4557c93692f3b47aa64ebf3" [label=""];
  "sha256:efcaaacd7b2014ca64743fb0f75cbe9990d42f9bd4557c93692f3b47aa64ebf3" -> "sha256:032eefc6f180d7199a30d1f0af86d29b1d3969f0713ef591a87c115e669836fc" [label=""];
  "sha256:346f12f0e01b21367be0cafa21be6b32971ab886a37982617858264ba5de7332" -> "sha256:032eefc6f180d7199a30d1f0af86d29b1d3969f0713ef591a87c115e669836fc" [label=""];
  "sha256:032eefc6f180d7199a30d1f0af86d29b1d3969f0713ef591a87c115e669836fc" -> "sha256:5dd0b8ec57dc723b2b4bc21dcf990f6f6e6744258fcda02c6ee57bead98ae357" [label=""];
  "sha256:5dd0b8ec57dc723b2b4bc21dcf990f6f6e6744258fcda02c6ee57bead98ae357" -> "sha256:f6ec7ba2fd7c7f66238523f2c8fdcb6b2e8d9e5ac1f60dab0693c1c4f5672588" [label=""];
  "sha256:346f12f0e01b21367be0cafa21be6b32971ab886a37982617858264ba5de7332" -> "sha256:f6ec7ba2fd7c7f66238523f2c8fdcb6b2e8d9e5ac1f60dab0693c1c4f5672588" [label=""];
  "sha256:f6ec7ba2fd7c7f66238523f2c8fdcb6b2e8d9e5ac1f60dab0693c1c4f5672588" -> "sha256:22372b701d1142ec7341070b0c64ce42392cb179937ce6983de6433a22f5ee2e" [label=""];
  "sha256:346f12f0e01b21367be0cafa21be6b32971ab886a37982617858264ba5de7332" -> "sha256:22372b701d1142ec7341070b0c64ce42392cb179937ce6983de6433a22f5ee2e" [label=""];
  "sha256:22372b701d1142ec7341070b0c64ce42392cb179937ce6983de6433a22f5ee2e" -> "sha256:37a54b9565b18baf58f742ad137b99a7f18dbfd26fa5dd7aab7e113860c10fe2" [label=""];
}

