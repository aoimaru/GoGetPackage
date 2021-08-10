[app/sources/233596945.Dockerfile]
digraph {
  "sha256:fffaa084f5150535ef482461ed5e4bd8a68ff387cf5b4258ba327ffd0dacb301" [label="docker-image://docker.io/library/ruby:2.4.0" shape="ellipse"];
  "sha256:814242dd82f74af3f06bfefc6370427b1d0eb060b8f769227898b1ba3bde8584" [label="/bin/sh -c apt-get update -yqq" shape="box"];
  "sha256:b3e1b2e9f738a37c14dbef8d470a07e7785111566d5a52c2d29c4b956b0fcdc2" [label="/bin/sh -c apt-get install -yqq --no-install-recommends nodejs" shape="box"];
  "sha256:5448278b9b93a95026e2370b4bea40ec5bcff454245c30eef4e3b0f338a081b8" [label="local://context" shape="ellipse"];
  "sha256:a0e7eccbf9380bf4b23cc4da7ebbeb461e02cf9b7d4a0848d8ced6b4f22d130c" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:c71fa01bbfa6a53e7a4d483aa1d1bbfc551f26bdf04c03dd4302ba9328c64f55" [label="copy{src=/Gemfile*, dest=/usr/src/app/}" shape="note"];
  "sha256:58a3bbcdfbbbe15a9b0c1141d7e27cae8dc45f2e6f148ea58d228f2cbff6b873" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:68208a3b46798e0877ea80fe31d8e63ee75c7ada27f008e364848c6d92bd69df" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:a049d2d473d9eba7f77f334c1f073ebeeb8a4f47560dd3b70b446d5cf4ca7b10" [label="sha256:a049d2d473d9eba7f77f334c1f073ebeeb8a4f47560dd3b70b446d5cf4ca7b10" shape="plaintext"];
  "sha256:fffaa084f5150535ef482461ed5e4bd8a68ff387cf5b4258ba327ffd0dacb301" -> "sha256:814242dd82f74af3f06bfefc6370427b1d0eb060b8f769227898b1ba3bde8584" [label=""];
  "sha256:814242dd82f74af3f06bfefc6370427b1d0eb060b8f769227898b1ba3bde8584" -> "sha256:b3e1b2e9f738a37c14dbef8d470a07e7785111566d5a52c2d29c4b956b0fcdc2" [label=""];
  "sha256:b3e1b2e9f738a37c14dbef8d470a07e7785111566d5a52c2d29c4b956b0fcdc2" -> "sha256:a0e7eccbf9380bf4b23cc4da7ebbeb461e02cf9b7d4a0848d8ced6b4f22d130c" [label=""];
  "sha256:5448278b9b93a95026e2370b4bea40ec5bcff454245c30eef4e3b0f338a081b8" -> "sha256:a0e7eccbf9380bf4b23cc4da7ebbeb461e02cf9b7d4a0848d8ced6b4f22d130c" [label=""];
  "sha256:a0e7eccbf9380bf4b23cc4da7ebbeb461e02cf9b7d4a0848d8ced6b4f22d130c" -> "sha256:c71fa01bbfa6a53e7a4d483aa1d1bbfc551f26bdf04c03dd4302ba9328c64f55" [label=""];
  "sha256:5448278b9b93a95026e2370b4bea40ec5bcff454245c30eef4e3b0f338a081b8" -> "sha256:c71fa01bbfa6a53e7a4d483aa1d1bbfc551f26bdf04c03dd4302ba9328c64f55" [label=""];
  "sha256:c71fa01bbfa6a53e7a4d483aa1d1bbfc551f26bdf04c03dd4302ba9328c64f55" -> "sha256:58a3bbcdfbbbe15a9b0c1141d7e27cae8dc45f2e6f148ea58d228f2cbff6b873" [label=""];
  "sha256:58a3bbcdfbbbe15a9b0c1141d7e27cae8dc45f2e6f148ea58d228f2cbff6b873" -> "sha256:68208a3b46798e0877ea80fe31d8e63ee75c7ada27f008e364848c6d92bd69df" [label=""];
  "sha256:68208a3b46798e0877ea80fe31d8e63ee75c7ada27f008e364848c6d92bd69df" -> "sha256:a049d2d473d9eba7f77f334c1f073ebeeb8a4f47560dd3b70b446d5cf4ca7b10" [label=""];
}

