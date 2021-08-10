[app/sources/252771389.Dockerfile]
digraph {
  "sha256:5a7e589f6f0d879e0e914febeadf968e79975fc87a802f9a5446559a6df9d3bf" [label="local://context" shape="ellipse"];
  "sha256:29c56e83caba56a4db5d0bf97fcf6e7eace1ca19f5dd6359d3eedcb873082c2c" [label="docker-image://docker.io/library/ruby:alpine" shape="ellipse"];
  "sha256:08e97137e8232d3d82681f541b2cbf2cf7f478fe105d424265cfed3c5a3d09f3" [label="/bin/sh -c apk add --no-cache --update --virtual .build-deps build-base && apk add --no-cache --update libstdc++ && echo 'gem: --no-rdoc --no-ri ' >> ~/.gemrc" shape="box"];
  "sha256:1a90b5811f178706595ef6cbc4eb0c65022ddd15ed6de3e23b08ac50e8aa3f74" [label="copy{src=/Gemfile, dest=/app/}" shape="note"];
  "sha256:f67d0d08ae600a1df906ec54df7bb28648bb702bed675d6426fc4d151d7d55b2" [label="copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:6932ee139e9ff26f6d98b113ffa12c6bcd4c87106814a201cd83a1746b8a4724" [label="/bin/sh -c gem install bundler && cd /app; bundle install --clean --jobs=4 && gem clean && apk del .build-deps" shape="box"];
  "sha256:34d98a7a121572f9bc8dc6250426a5c05a4fd141c8f214f91cf906a646b6e858" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:013420ef608331c2a3019153e68480db77e77a5ac99ad817b65120991615696d" [label="sha256:013420ef608331c2a3019153e68480db77e77a5ac99ad817b65120991615696d" shape="plaintext"];
  "sha256:29c56e83caba56a4db5d0bf97fcf6e7eace1ca19f5dd6359d3eedcb873082c2c" -> "sha256:08e97137e8232d3d82681f541b2cbf2cf7f478fe105d424265cfed3c5a3d09f3" [label=""];
  "sha256:08e97137e8232d3d82681f541b2cbf2cf7f478fe105d424265cfed3c5a3d09f3" -> "sha256:1a90b5811f178706595ef6cbc4eb0c65022ddd15ed6de3e23b08ac50e8aa3f74" [label=""];
  "sha256:5a7e589f6f0d879e0e914febeadf968e79975fc87a802f9a5446559a6df9d3bf" -> "sha256:1a90b5811f178706595ef6cbc4eb0c65022ddd15ed6de3e23b08ac50e8aa3f74" [label=""];
  "sha256:1a90b5811f178706595ef6cbc4eb0c65022ddd15ed6de3e23b08ac50e8aa3f74" -> "sha256:f67d0d08ae600a1df906ec54df7bb28648bb702bed675d6426fc4d151d7d55b2" [label=""];
  "sha256:5a7e589f6f0d879e0e914febeadf968e79975fc87a802f9a5446559a6df9d3bf" -> "sha256:f67d0d08ae600a1df906ec54df7bb28648bb702bed675d6426fc4d151d7d55b2" [label=""];
  "sha256:f67d0d08ae600a1df906ec54df7bb28648bb702bed675d6426fc4d151d7d55b2" -> "sha256:6932ee139e9ff26f6d98b113ffa12c6bcd4c87106814a201cd83a1746b8a4724" [label=""];
  "sha256:6932ee139e9ff26f6d98b113ffa12c6bcd4c87106814a201cd83a1746b8a4724" -> "sha256:34d98a7a121572f9bc8dc6250426a5c05a4fd141c8f214f91cf906a646b6e858" [label=""];
  "sha256:5a7e589f6f0d879e0e914febeadf968e79975fc87a802f9a5446559a6df9d3bf" -> "sha256:34d98a7a121572f9bc8dc6250426a5c05a4fd141c8f214f91cf906a646b6e858" [label=""];
  "sha256:34d98a7a121572f9bc8dc6250426a5c05a4fd141c8f214f91cf906a646b6e858" -> "sha256:013420ef608331c2a3019153e68480db77e77a5ac99ad817b65120991615696d" [label=""];
}

