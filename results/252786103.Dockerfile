[app/sources/252786103.Dockerfile]
digraph {
  "sha256:a242e9d337057667f69b0191508196e3f2d3def3a929035b2ca3835cf983d829" [label="docker-image://docker.io/rocoto/couchdb:latest" shape="ellipse"];
  "sha256:333b1d9a0017b2fcc4294b0f619f4ee0b5e944d616f6799f5df94e8f61bc498c" [label="local://context" shape="ellipse"];
  "sha256:4860c10a3f5a274c1cc3e0b9c6dd467f2abd909af5687b359e00e8142a14d8a5" [label="copy{src=/info/README.txt, dest=/README.txt}" shape="note"];
  "sha256:9210bbdad2ef02790e502f31d7840a34e61cc1465a6c137c59f72a90e19acf97" [label="copy{src=/entrypoint-embryo.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:e936ed047c4ac9314e5f61c8aab704f9160aa5dc1c1f3ce513e503a30d03d44e" [label="sha256:e936ed047c4ac9314e5f61c8aab704f9160aa5dc1c1f3ce513e503a30d03d44e" shape="plaintext"];
  "sha256:a242e9d337057667f69b0191508196e3f2d3def3a929035b2ca3835cf983d829" -> "sha256:4860c10a3f5a274c1cc3e0b9c6dd467f2abd909af5687b359e00e8142a14d8a5" [label=""];
  "sha256:333b1d9a0017b2fcc4294b0f619f4ee0b5e944d616f6799f5df94e8f61bc498c" -> "sha256:4860c10a3f5a274c1cc3e0b9c6dd467f2abd909af5687b359e00e8142a14d8a5" [label=""];
  "sha256:4860c10a3f5a274c1cc3e0b9c6dd467f2abd909af5687b359e00e8142a14d8a5" -> "sha256:9210bbdad2ef02790e502f31d7840a34e61cc1465a6c137c59f72a90e19acf97" [label=""];
  "sha256:333b1d9a0017b2fcc4294b0f619f4ee0b5e944d616f6799f5df94e8f61bc498c" -> "sha256:9210bbdad2ef02790e502f31d7840a34e61cc1465a6c137c59f72a90e19acf97" [label=""];
  "sha256:9210bbdad2ef02790e502f31d7840a34e61cc1465a6c137c59f72a90e19acf97" -> "sha256:e936ed047c4ac9314e5f61c8aab704f9160aa5dc1c1f3ce513e503a30d03d44e" [label=""];
}

