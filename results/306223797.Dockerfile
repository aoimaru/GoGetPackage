[app/sources/306223797.Dockerfile]
digraph {
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" [label="docker-image://docker.io/library/ruby:2.5.3" shape="ellipse"];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label="mkdir{path=/opt/puppet}" shape="note"];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label="/bin/sh -c mkdir -p /etc/sv" shape="box"];
  "sha256:98ab44f62bf6c06ce29dc87575a2c20191c90dfbaae6e20dfe6c53cd50eebb3b" [label="local://context" shape="ellipse"];
  "sha256:9e276b922b1044c7dc3cbb7203ced07943119ffad7e7eae49ed45ca8960eb03a" [label="copy{src=/Gemfile, dest=/opt/puppet/}" shape="note"];
  "sha256:9c137803953a4373a6741b935c1866a8b84a5d953e287669831c1d0665b3f0df" [label="/bin/sh -c bundle install --without system_tests development release --path=${BUNDLE_PATH:-vendor/bundle}" shape="box"];
  "sha256:7952449c2db4c070375327b97e683e7f97ca60fe2bb61cdbf9004d4034d81077" [label="copy{src=/, dest=/opt/puppet/}" shape="note"];
  "sha256:7fc033357fbdfe0e861e2014140add5ea819ca2a00d2e5125ad79e2fc6eec2fb" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:85c71945b310eaec37037da7539a4d706c5964b4ab4a07a2b26c86bc1da693d2" [label="/bin/sh -c bundle exec release_checks" shape="box"];
  "sha256:15487873232f37425ad66ce3aa78cb89f699be468d8a140a8c1871cb54f58ca3" [label="/bin/sh -c exit 1" shape="box"];
  "sha256:b2a66bc5c704329ad3988592cf586eaab5bd4abb93eef839ae9070bb348da5da" [label="sha256:b2a66bc5c704329ad3988592cf586eaab5bd4abb93eef839ae9070bb348da5da" shape="plaintext"];
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" -> "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label=""];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" -> "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label=""];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" -> "sha256:9e276b922b1044c7dc3cbb7203ced07943119ffad7e7eae49ed45ca8960eb03a" [label=""];
  "sha256:98ab44f62bf6c06ce29dc87575a2c20191c90dfbaae6e20dfe6c53cd50eebb3b" -> "sha256:9e276b922b1044c7dc3cbb7203ced07943119ffad7e7eae49ed45ca8960eb03a" [label=""];
  "sha256:9e276b922b1044c7dc3cbb7203ced07943119ffad7e7eae49ed45ca8960eb03a" -> "sha256:9c137803953a4373a6741b935c1866a8b84a5d953e287669831c1d0665b3f0df" [label=""];
  "sha256:9c137803953a4373a6741b935c1866a8b84a5d953e287669831c1d0665b3f0df" -> "sha256:7952449c2db4c070375327b97e683e7f97ca60fe2bb61cdbf9004d4034d81077" [label=""];
  "sha256:98ab44f62bf6c06ce29dc87575a2c20191c90dfbaae6e20dfe6c53cd50eebb3b" -> "sha256:7952449c2db4c070375327b97e683e7f97ca60fe2bb61cdbf9004d4034d81077" [label=""];
  "sha256:7952449c2db4c070375327b97e683e7f97ca60fe2bb61cdbf9004d4034d81077" -> "sha256:7fc033357fbdfe0e861e2014140add5ea819ca2a00d2e5125ad79e2fc6eec2fb" [label=""];
  "sha256:7fc033357fbdfe0e861e2014140add5ea819ca2a00d2e5125ad79e2fc6eec2fb" -> "sha256:85c71945b310eaec37037da7539a4d706c5964b4ab4a07a2b26c86bc1da693d2" [label=""];
  "sha256:85c71945b310eaec37037da7539a4d706c5964b4ab4a07a2b26c86bc1da693d2" -> "sha256:15487873232f37425ad66ce3aa78cb89f699be468d8a140a8c1871cb54f58ca3" [label=""];
  "sha256:15487873232f37425ad66ce3aa78cb89f699be468d8a140a8c1871cb54f58ca3" -> "sha256:b2a66bc5c704329ad3988592cf586eaab5bd4abb93eef839ae9070bb348da5da" [label=""];
}

