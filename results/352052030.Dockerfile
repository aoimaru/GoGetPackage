[app/sources/352052030.Dockerfile]
digraph {
  "sha256:bc33330dcd12cc7811485b3a7eb065f640992a4506c5673729282e16cce28470" [label="docker-image://docker.io/liftoff/gateone:latest" shape="ellipse"];
  "sha256:cecfebad3c6a7b321b9949b6855629c873654036ba0732f57ed19ab7e926c85b" [label="local://context" shape="ellipse"];
  "sha256:623a49125fd18f2ca8f5a6a792d51e2d6e6e26adc830c93abf46d63602792b22" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:ae87e5128fc49c3f4cb358d155187254b3895bd57ff8c630e8e878071bd586fb" [label="copy{src=/script, dest=/script}" shape="note"];
  "sha256:097d99dac0e4605beebcf40411b258356f055474192fea4b3fa9e23908d14822" [label="/bin/sh -c chmod -R 500 /script &&     chmod -R 400 /config; sync &&     /script/init_image.sh" shape="box"];
  "sha256:39a564b337e2bbd4157eebf03bdc820004a3abe237bd73e19d4f22231faf3c38" [label="sha256:39a564b337e2bbd4157eebf03bdc820004a3abe237bd73e19d4f22231faf3c38" shape="plaintext"];
  "sha256:bc33330dcd12cc7811485b3a7eb065f640992a4506c5673729282e16cce28470" -> "sha256:623a49125fd18f2ca8f5a6a792d51e2d6e6e26adc830c93abf46d63602792b22" [label=""];
  "sha256:cecfebad3c6a7b321b9949b6855629c873654036ba0732f57ed19ab7e926c85b" -> "sha256:623a49125fd18f2ca8f5a6a792d51e2d6e6e26adc830c93abf46d63602792b22" [label=""];
  "sha256:623a49125fd18f2ca8f5a6a792d51e2d6e6e26adc830c93abf46d63602792b22" -> "sha256:ae87e5128fc49c3f4cb358d155187254b3895bd57ff8c630e8e878071bd586fb" [label=""];
  "sha256:cecfebad3c6a7b321b9949b6855629c873654036ba0732f57ed19ab7e926c85b" -> "sha256:ae87e5128fc49c3f4cb358d155187254b3895bd57ff8c630e8e878071bd586fb" [label=""];
  "sha256:ae87e5128fc49c3f4cb358d155187254b3895bd57ff8c630e8e878071bd586fb" -> "sha256:097d99dac0e4605beebcf40411b258356f055474192fea4b3fa9e23908d14822" [label=""];
  "sha256:097d99dac0e4605beebcf40411b258356f055474192fea4b3fa9e23908d14822" -> "sha256:39a564b337e2bbd4157eebf03bdc820004a3abe237bd73e19d4f22231faf3c38" [label=""];
}

