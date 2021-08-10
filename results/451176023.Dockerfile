[app/sources/451176023.Dockerfile]
digraph {
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" [label="docker-image://docker.io/library/ruby:2.5.3" shape="ellipse"];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label="mkdir{path=/opt/puppet}" shape="note"];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label="/bin/sh -c mkdir -p /etc/sv" shape="box"];
  "sha256:70f77aa809196fc02591152074c04e190aff9dcc4915b7071186784e884ca172" [label="local://context" shape="ellipse"];
  "sha256:195a074b4c9c4c93162a0ea774a4adeab39afc2c056c1d9feb84fd6fdec3a460" [label="copy{src=/Gemfile, dest=/opt/puppet/}" shape="note"];
  "sha256:ffeb90b5a56f9efe4c059c06d73f2b522139698972f969a9a0f7b9a4ae9bc9f9" [label="/bin/sh -c bundle install --without system_tests development release --path=${BUNDLE_PATH:-vendor/bundle}" shape="box"];
  "sha256:2031a3a95e3c7bae2ae522ed1d9f36c30b958c75d301526625ce3f8b209d1dcc" [label="copy{src=/, dest=/opt/puppet/}" shape="note"];
  "sha256:3e24d7927349c8319ac8c96ba848dabe541a9da6b7f3fed6db2399276322f1e0" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:d0263dbc6cfd1a3452a5b82261faa1d4359a43602fd6c501a2d62a3baad9749b" [label="/bin/sh -c bundle exec release_checks" shape="box"];
  "sha256:617dbbb1c4607a3f83904d7761757e0f9d5b555a74dcb727749adc1f1e488c1b" [label="/bin/sh -c exit 1" shape="box"];
  "sha256:7087789a8869b69fe0dccedaf985f140f57ae96331db75d87f3567e0c0b987da" [label="sha256:7087789a8869b69fe0dccedaf985f140f57ae96331db75d87f3567e0c0b987da" shape="plaintext"];
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" -> "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label=""];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" -> "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label=""];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" -> "sha256:195a074b4c9c4c93162a0ea774a4adeab39afc2c056c1d9feb84fd6fdec3a460" [label=""];
  "sha256:70f77aa809196fc02591152074c04e190aff9dcc4915b7071186784e884ca172" -> "sha256:195a074b4c9c4c93162a0ea774a4adeab39afc2c056c1d9feb84fd6fdec3a460" [label=""];
  "sha256:195a074b4c9c4c93162a0ea774a4adeab39afc2c056c1d9feb84fd6fdec3a460" -> "sha256:ffeb90b5a56f9efe4c059c06d73f2b522139698972f969a9a0f7b9a4ae9bc9f9" [label=""];
  "sha256:ffeb90b5a56f9efe4c059c06d73f2b522139698972f969a9a0f7b9a4ae9bc9f9" -> "sha256:2031a3a95e3c7bae2ae522ed1d9f36c30b958c75d301526625ce3f8b209d1dcc" [label=""];
  "sha256:70f77aa809196fc02591152074c04e190aff9dcc4915b7071186784e884ca172" -> "sha256:2031a3a95e3c7bae2ae522ed1d9f36c30b958c75d301526625ce3f8b209d1dcc" [label=""];
  "sha256:2031a3a95e3c7bae2ae522ed1d9f36c30b958c75d301526625ce3f8b209d1dcc" -> "sha256:3e24d7927349c8319ac8c96ba848dabe541a9da6b7f3fed6db2399276322f1e0" [label=""];
  "sha256:3e24d7927349c8319ac8c96ba848dabe541a9da6b7f3fed6db2399276322f1e0" -> "sha256:d0263dbc6cfd1a3452a5b82261faa1d4359a43602fd6c501a2d62a3baad9749b" [label=""];
  "sha256:d0263dbc6cfd1a3452a5b82261faa1d4359a43602fd6c501a2d62a3baad9749b" -> "sha256:617dbbb1c4607a3f83904d7761757e0f9d5b555a74dcb727749adc1f1e488c1b" [label=""];
  "sha256:617dbbb1c4607a3f83904d7761757e0f9d5b555a74dcb727749adc1f1e488c1b" -> "sha256:7087789a8869b69fe0dccedaf985f140f57ae96331db75d87f3567e0c0b987da" [label=""];
}

