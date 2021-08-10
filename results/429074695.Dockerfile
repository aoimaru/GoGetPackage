[app/sources/429074695.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:64700fde67f8a17b7cde4d5c949ca7396826f83d14b9dc40e0d8c48b9053f933" [label="/bin/sh -c apk add --no-cache chromium     && rm -rf /var/cache/*" shape="box"];
  "sha256:2b910e8027d0d0bf5177d5b76c30522594075803d04eb012cc63ff99ff0f269b" [label="/bin/sh -c mkdir -p /app     && adduser -D chrome     && chown -R chrome:chrome /app" shape="box"];
  "sha256:34bcab86011758574d939227298d32627ae783b33b77b688a430c676d6060513" [label="mkdir{path=/app}" shape="note"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:4ff5050d119df8cd6540e6eceeed362504a583446ad27f1a9e342258671258f3" [label="mkdir{path=/src}" shape="note"];
  "sha256:3ea99017d0315de2f5f2bac9d85c533950c991f943e4df34cdd050721300e4da" [label="local://context" shape="ellipse"];
  "sha256:bf3d29808552b7ea6732623f28d1892a5a1b78ae8d028370f70727f30c4f6a82" [label="copy{src=/go.mod, dest=/src/}" shape="note"];
  "sha256:76f1522e4e618b9924eb5d6bb8babc3109f25f88ef8eb36df3a3a10677f120f6" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:939400ebebc2d12f4ca549406442087e7e31542cb56aa8ee7769503520abc2cc" [label="copy{src=/main.go, dest=/src/}" shape="note"];
  "sha256:2b9d4140b552e8baaf41b393d4828ab122aa5e29992ee181f92114e1d8ff8924" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -o gochro -ldflags=\"-s -w\" -gcflags=\"all=-trimpath=/src\" -asmflags=\"all=-trimpath=/src\"" shape="box"];
  "sha256:52284d296b918f2b2187162620c682ec5964f8e213680c4e43fcbc79c9cc5b94" [label="copy{src=/src/gochro, dest=/app/}" shape="note"];
  "sha256:02ae126a183f209c748e1c6bfdef4f9715b570e166a937877924a489a414be06" [label="sha256:02ae126a183f209c748e1c6bfdef4f9715b570e166a937877924a489a414be06" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:64700fde67f8a17b7cde4d5c949ca7396826f83d14b9dc40e0d8c48b9053f933" [label=""];
  "sha256:64700fde67f8a17b7cde4d5c949ca7396826f83d14b9dc40e0d8c48b9053f933" -> "sha256:2b910e8027d0d0bf5177d5b76c30522594075803d04eb012cc63ff99ff0f269b" [label=""];
  "sha256:2b910e8027d0d0bf5177d5b76c30522594075803d04eb012cc63ff99ff0f269b" -> "sha256:34bcab86011758574d939227298d32627ae783b33b77b688a430c676d6060513" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:4ff5050d119df8cd6540e6eceeed362504a583446ad27f1a9e342258671258f3" [label=""];
  "sha256:4ff5050d119df8cd6540e6eceeed362504a583446ad27f1a9e342258671258f3" -> "sha256:bf3d29808552b7ea6732623f28d1892a5a1b78ae8d028370f70727f30c4f6a82" [label=""];
  "sha256:3ea99017d0315de2f5f2bac9d85c533950c991f943e4df34cdd050721300e4da" -> "sha256:bf3d29808552b7ea6732623f28d1892a5a1b78ae8d028370f70727f30c4f6a82" [label=""];
  "sha256:bf3d29808552b7ea6732623f28d1892a5a1b78ae8d028370f70727f30c4f6a82" -> "sha256:76f1522e4e618b9924eb5d6bb8babc3109f25f88ef8eb36df3a3a10677f120f6" [label=""];
  "sha256:76f1522e4e618b9924eb5d6bb8babc3109f25f88ef8eb36df3a3a10677f120f6" -> "sha256:939400ebebc2d12f4ca549406442087e7e31542cb56aa8ee7769503520abc2cc" [label=""];
  "sha256:3ea99017d0315de2f5f2bac9d85c533950c991f943e4df34cdd050721300e4da" -> "sha256:939400ebebc2d12f4ca549406442087e7e31542cb56aa8ee7769503520abc2cc" [label=""];
  "sha256:939400ebebc2d12f4ca549406442087e7e31542cb56aa8ee7769503520abc2cc" -> "sha256:2b9d4140b552e8baaf41b393d4828ab122aa5e29992ee181f92114e1d8ff8924" [label=""];
  "sha256:34bcab86011758574d939227298d32627ae783b33b77b688a430c676d6060513" -> "sha256:52284d296b918f2b2187162620c682ec5964f8e213680c4e43fcbc79c9cc5b94" [label=""];
  "sha256:2b9d4140b552e8baaf41b393d4828ab122aa5e29992ee181f92114e1d8ff8924" -> "sha256:52284d296b918f2b2187162620c682ec5964f8e213680c4e43fcbc79c9cc5b94" [label=""];
  "sha256:52284d296b918f2b2187162620c682ec5964f8e213680c4e43fcbc79c9cc5b94" -> "sha256:02ae126a183f209c748e1c6bfdef4f9715b570e166a937877924a489a414be06" [label=""];
}

