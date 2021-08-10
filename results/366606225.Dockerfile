[app/sources/366606225.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:da4c10d73a72023aeb03ba4119d2eaa0d761aedd46f2f40b3fa970628cc3a085" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     python-setuptools     python-pip     git     patch     openjdk-8-jre     curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3ba62158acec41838edc66db7e40a5d247d0dd85511e9b3af6252a5032eb6fef" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_4.x | bash -" shape="box"];
  "sha256:1d87e352fc0fa7a7ff1721204c9c94b7d4da3b2e8268ac3d5291bfe112e19133" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:b16b56fa30f0903aba3e088f9bf551aa54a5979c62cbbca5c94518d615a506a8" [label="local://context" shape="ellipse"];
  "sha256:9e2d0e507997d6bd001bc4ce54b5adce80ba48b5ca4ea4bd451320ec1ebc71b2" [label="copy{src=/clients, dest=/gisquick/clients/}" shape="note"];
  "sha256:440e75fd344a41a0c342632d6590cfa260c170c83e977f6c6265b61767c3180d" [label="mkdir{path=/gisquick/clients}" shape="note"];
  "sha256:faa796d17efe4be1b679b917a4ca1d4c5d643f77c8dc921816722a7d8a80092d" [label="/bin/sh -c npm install &&     npm install web &&     npm install -g gulp" shape="box"];
  "sha256:8a2029a1ef6be7cf17e5d1b36be924c16d741eed23aafb155e6b285b8122b957" [label="/bin/sh -c gulp icons-web &&     gulp build-ol3-debug" shape="box"];
  "sha256:9fea76c5694464607275979d8ad388b185404b76b313ad373d4507cf6f932db1" [label="sha256:9fea76c5694464607275979d8ad388b185404b76b313ad373d4507cf6f932db1" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:da4c10d73a72023aeb03ba4119d2eaa0d761aedd46f2f40b3fa970628cc3a085" [label=""];
  "sha256:da4c10d73a72023aeb03ba4119d2eaa0d761aedd46f2f40b3fa970628cc3a085" -> "sha256:3ba62158acec41838edc66db7e40a5d247d0dd85511e9b3af6252a5032eb6fef" [label=""];
  "sha256:3ba62158acec41838edc66db7e40a5d247d0dd85511e9b3af6252a5032eb6fef" -> "sha256:1d87e352fc0fa7a7ff1721204c9c94b7d4da3b2e8268ac3d5291bfe112e19133" [label=""];
  "sha256:1d87e352fc0fa7a7ff1721204c9c94b7d4da3b2e8268ac3d5291bfe112e19133" -> "sha256:9e2d0e507997d6bd001bc4ce54b5adce80ba48b5ca4ea4bd451320ec1ebc71b2" [label=""];
  "sha256:b16b56fa30f0903aba3e088f9bf551aa54a5979c62cbbca5c94518d615a506a8" -> "sha256:9e2d0e507997d6bd001bc4ce54b5adce80ba48b5ca4ea4bd451320ec1ebc71b2" [label=""];
  "sha256:9e2d0e507997d6bd001bc4ce54b5adce80ba48b5ca4ea4bd451320ec1ebc71b2" -> "sha256:440e75fd344a41a0c342632d6590cfa260c170c83e977f6c6265b61767c3180d" [label=""];
  "sha256:440e75fd344a41a0c342632d6590cfa260c170c83e977f6c6265b61767c3180d" -> "sha256:faa796d17efe4be1b679b917a4ca1d4c5d643f77c8dc921816722a7d8a80092d" [label=""];
  "sha256:faa796d17efe4be1b679b917a4ca1d4c5d643f77c8dc921816722a7d8a80092d" -> "sha256:8a2029a1ef6be7cf17e5d1b36be924c16d741eed23aafb155e6b285b8122b957" [label=""];
  "sha256:8a2029a1ef6be7cf17e5d1b36be924c16d741eed23aafb155e6b285b8122b957" -> "sha256:9fea76c5694464607275979d8ad388b185404b76b313ad373d4507cf6f932db1" [label=""];
}

