[app/sources/393578482.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:578f831124e124b28154422f7f4234583f287951a5e51c9b7c16de90d80bc25c" [label="local://context" shape="ellipse"];
  "sha256:9ac47e8b1b07859669da33ed1b1ab72bf248d2097a059cc969dbf8d335338259" [label="copy{src=/preinstall.sh, dest=/app/src/github.com/die-net/fotomat/}" shape="note"];
  "sha256:ed4fc03cfc59e7b0126c0913a3484036319a023eb3d395f98f611d13049c8090" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive CFLAGS=\"-O2 -ftree-vectorize -msse2 -ffast-math -fPIC\"     VIPS_OPTIONS=\"--disable-shared --enable-static\"     /app/src/github.com/die-net/fotomat/preinstall.sh" shape="box"];
  "sha256:a5990defdfc8c3a28c27029dae3a3702f2e74e0479a2e39084f2386681dbe6db" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -q --no-install-recommends fakeroot" shape="box"];
  "sha256:5825e774d2db1c8771c386b4bbb89e54826bb12b6961dd0d46c6c209810c184d" [label="copy{src=/, dest=/app/src/github.com/die-net/fotomat/}" shape="note"];
  "sha256:d627d7d669359b08c61c74e28ee7d2c52b0a96ebc4d2e7ac9754df1de1dcc505" [label="/bin/sh -c GOPATH=/app CGO_LDFLAGS_ALLOW=\"-Wl,--export-dynamic\" /usr/local/go/bin/go get -tags vips_static -t github.com/die-net/fotomat/..." shape="box"];
  "sha256:7e99227fa3283237df6fbdef3a17c9ee6504b09891876250aadb42e5cfe93725" [label="/bin/sh -c GOPATH=/app CGO_LDFLAGS_ALLOW=\"-Wl,--export-dynamic\" /usr/local/go/bin/go test -tags vips_static -v github.com/die-net/fotomat/..." shape="box"];
  "sha256:eca54b9512504df2a3f239b863a0231c7e6b3b0258a87d640decc3bc3aefc938" [label="/bin/sh -c /app/src/github.com/die-net/fotomat/dist/build-dpkg /app/bin/fotomat" shape="box"];
  "sha256:9c552842f1dbf02453157fc48d91f34573dc9d182b90916f9b9d273b24468d62" [label="sha256:9c552842f1dbf02453157fc48d91f34573dc9d182b90916f9b9d273b24468d62" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9ac47e8b1b07859669da33ed1b1ab72bf248d2097a059cc969dbf8d335338259" [label=""];
  "sha256:578f831124e124b28154422f7f4234583f287951a5e51c9b7c16de90d80bc25c" -> "sha256:9ac47e8b1b07859669da33ed1b1ab72bf248d2097a059cc969dbf8d335338259" [label=""];
  "sha256:9ac47e8b1b07859669da33ed1b1ab72bf248d2097a059cc969dbf8d335338259" -> "sha256:ed4fc03cfc59e7b0126c0913a3484036319a023eb3d395f98f611d13049c8090" [label=""];
  "sha256:ed4fc03cfc59e7b0126c0913a3484036319a023eb3d395f98f611d13049c8090" -> "sha256:a5990defdfc8c3a28c27029dae3a3702f2e74e0479a2e39084f2386681dbe6db" [label=""];
  "sha256:a5990defdfc8c3a28c27029dae3a3702f2e74e0479a2e39084f2386681dbe6db" -> "sha256:5825e774d2db1c8771c386b4bbb89e54826bb12b6961dd0d46c6c209810c184d" [label=""];
  "sha256:578f831124e124b28154422f7f4234583f287951a5e51c9b7c16de90d80bc25c" -> "sha256:5825e774d2db1c8771c386b4bbb89e54826bb12b6961dd0d46c6c209810c184d" [label=""];
  "sha256:5825e774d2db1c8771c386b4bbb89e54826bb12b6961dd0d46c6c209810c184d" -> "sha256:d627d7d669359b08c61c74e28ee7d2c52b0a96ebc4d2e7ac9754df1de1dcc505" [label=""];
  "sha256:d627d7d669359b08c61c74e28ee7d2c52b0a96ebc4d2e7ac9754df1de1dcc505" -> "sha256:7e99227fa3283237df6fbdef3a17c9ee6504b09891876250aadb42e5cfe93725" [label=""];
  "sha256:7e99227fa3283237df6fbdef3a17c9ee6504b09891876250aadb42e5cfe93725" -> "sha256:eca54b9512504df2a3f239b863a0231c7e6b3b0258a87d640decc3bc3aefc938" [label=""];
  "sha256:eca54b9512504df2a3f239b863a0231c7e6b3b0258a87d640decc3bc3aefc938" -> "sha256:9c552842f1dbf02453157fc48d91f34573dc9d182b90916f9b9d273b24468d62" [label=""];
}

