[app/sources/249974563.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:329ca8340e925bc88cc0d10c5c179e2abc95582b24d3cd156cdacc21a1792e5d" [label="local://context" shape="ellipse"];
  "sha256:c1eb2b469de80963c96ff5ccf3e414890feef2570ed1547bc0f5c0f11efb18d0" [label="copy{src=/loadgen/loadgen.go, dest=/app/}" shape="note"];
  "sha256:a8a409b75a1f5b2a5f963666367c4911eaf2a4c853f38350a184d6b6b0529ada" [label="mkdir{path=/app}" shape="note"];
  "sha256:cadf68b0d2dd56530648bfab44273af6864336e2e87cb72794629b0b3bee3ff5" [label="/bin/sh -c go get github.com/lib/pq" shape="box"];
  "sha256:53892db821f53e4ecb54425047cfea75d9a9f5cc0a172bcc1b29d407ed29fbb4" [label="/bin/sh -c go build -o loadgen ." shape="box"];
  "sha256:5af280418662a54c0019a0cf79ba2c302a159ecb7da5ed16eb17bb6cbf707642" [label="sha256:5af280418662a54c0019a0cf79ba2c302a159ecb7da5ed16eb17bb6cbf707642" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" [label=""];
  "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" -> "sha256:c1eb2b469de80963c96ff5ccf3e414890feef2570ed1547bc0f5c0f11efb18d0" [label=""];
  "sha256:329ca8340e925bc88cc0d10c5c179e2abc95582b24d3cd156cdacc21a1792e5d" -> "sha256:c1eb2b469de80963c96ff5ccf3e414890feef2570ed1547bc0f5c0f11efb18d0" [label=""];
  "sha256:c1eb2b469de80963c96ff5ccf3e414890feef2570ed1547bc0f5c0f11efb18d0" -> "sha256:a8a409b75a1f5b2a5f963666367c4911eaf2a4c853f38350a184d6b6b0529ada" [label=""];
  "sha256:a8a409b75a1f5b2a5f963666367c4911eaf2a4c853f38350a184d6b6b0529ada" -> "sha256:cadf68b0d2dd56530648bfab44273af6864336e2e87cb72794629b0b3bee3ff5" [label=""];
  "sha256:cadf68b0d2dd56530648bfab44273af6864336e2e87cb72794629b0b3bee3ff5" -> "sha256:53892db821f53e4ecb54425047cfea75d9a9f5cc0a172bcc1b29d407ed29fbb4" [label=""];
  "sha256:53892db821f53e4ecb54425047cfea75d9a9f5cc0a172bcc1b29d407ed29fbb4" -> "sha256:5af280418662a54c0019a0cf79ba2c302a159ecb7da5ed16eb17bb6cbf707642" [label=""];
}

