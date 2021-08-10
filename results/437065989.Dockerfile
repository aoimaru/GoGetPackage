[app/sources/437065989.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:5cbb609c368cb493aa9f51064b6d683fdc2c0bb38040935d7269eec9410d1943" [label="/bin/sh -c mkdir -p $PROJECT_DIR" shape="box"];
  "sha256:31e1a2470fa4f74c4e516bca4ac05b172b2a9b1e6fe6738087ed97ea0fcf7b3e" [label="mkdir{path=/home/vertex}" shape="note"];
  "sha256:b054fa0e4ea2e191bdd46303a4a338222bcf445be255b6b895bbd4bdb97e10cc" [label="local://context" shape="ellipse"];
  "sha256:dac6d63d39b6afbf36d54de991c9fe3be88251194772a9fed83f7a7a1be4e4c7" [label="copy{src=/, dest=/home/vertex/}" shape="note"];
  "sha256:a9b5941136ace59754c302f84bd5284b468f93f053f9865f2ead1dce2b01948f" [label="/bin/sh -c npm install" shape="box"];
  "sha256:74df61b51515e98e3f6986433b1ea1466576e891a79ee62e01d849e77d7f043e" [label="sha256:74df61b51515e98e3f6986433b1ea1466576e891a79ee62e01d849e77d7f043e" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:5cbb609c368cb493aa9f51064b6d683fdc2c0bb38040935d7269eec9410d1943" [label=""];
  "sha256:5cbb609c368cb493aa9f51064b6d683fdc2c0bb38040935d7269eec9410d1943" -> "sha256:31e1a2470fa4f74c4e516bca4ac05b172b2a9b1e6fe6738087ed97ea0fcf7b3e" [label=""];
  "sha256:31e1a2470fa4f74c4e516bca4ac05b172b2a9b1e6fe6738087ed97ea0fcf7b3e" -> "sha256:dac6d63d39b6afbf36d54de991c9fe3be88251194772a9fed83f7a7a1be4e4c7" [label=""];
  "sha256:b054fa0e4ea2e191bdd46303a4a338222bcf445be255b6b895bbd4bdb97e10cc" -> "sha256:dac6d63d39b6afbf36d54de991c9fe3be88251194772a9fed83f7a7a1be4e4c7" [label=""];
  "sha256:dac6d63d39b6afbf36d54de991c9fe3be88251194772a9fed83f7a7a1be4e4c7" -> "sha256:a9b5941136ace59754c302f84bd5284b468f93f053f9865f2ead1dce2b01948f" [label=""];
  "sha256:a9b5941136ace59754c302f84bd5284b468f93f053f9865f2ead1dce2b01948f" -> "sha256:74df61b51515e98e3f6986433b1ea1466576e891a79ee62e01d849e77d7f043e" [label=""];
}

