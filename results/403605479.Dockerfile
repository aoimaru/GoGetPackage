[app/sources/403605479.Dockerfile]
digraph {
  "sha256:de574a3e8b83625d80342263ab30b660b8db1ed7d02c63e31dda089795ea047f" [label="local://context" shape="ellipse"];
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" [label="docker-image://docker.io/library/ruby:2.5.3" shape="ellipse"];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label="mkdir{path=/opt/puppet}" shape="note"];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label="/bin/sh -c mkdir -p /etc/sv" shape="box"];
  "sha256:8801728b15f7526cf2985d61d432cfe1bc72b97d632c341e10679d2f40124f76" [label="copy{src=/Gemfile, dest=/opt/puppet/}" shape="note"];
  "sha256:ab35567591010beae7d0c8d1948f1afeceb9ad23ac50e4503ada875a72a8ac92" [label="/bin/sh -c bundle install --without system_tests development release --path=${BUNDLE_PATH:-vendor/bundle}" shape="box"];
  "sha256:da6b9fefe56868fc0125ae13b908801d6e97c7641a38d3679e02bf48e6b77afd" [label="copy{src=/, dest=/opt/puppet/}" shape="note"];
  "sha256:49d625967de35299e32f8a95d1fa261ffac9a9f99633655b44b43985870688f1" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:29b5bf308469e2796f28a328c31ae4313a8e2e378d86f12b7e4879d5f861233e" [label="/bin/sh -c bundle exec release_checks" shape="box"];
  "sha256:37cfdaad61a580531a13e66be8e2e66249a0e128cb37c8818de2da8be077f28a" [label="/bin/sh -c exit 1" shape="box"];
  "sha256:44ea34de1528a4be1ffcf8bc7e2777f2ad3bd72acd010e7f95d182d92c90345e" [label="sha256:44ea34de1528a4be1ffcf8bc7e2777f2ad3bd72acd010e7f95d182d92c90345e" shape="plaintext"];
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" -> "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" [label=""];
  "sha256:31d1b3b79a15f2943d4162af0d7f62b62a2e603ff157105513b06907b5b2ec35" -> "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" [label=""];
  "sha256:a7ceab5bbadec7b6b0e92de86c766e00a7844972d6481cb5d8346b2360dbd572" -> "sha256:8801728b15f7526cf2985d61d432cfe1bc72b97d632c341e10679d2f40124f76" [label=""];
  "sha256:de574a3e8b83625d80342263ab30b660b8db1ed7d02c63e31dda089795ea047f" -> "sha256:8801728b15f7526cf2985d61d432cfe1bc72b97d632c341e10679d2f40124f76" [label=""];
  "sha256:8801728b15f7526cf2985d61d432cfe1bc72b97d632c341e10679d2f40124f76" -> "sha256:ab35567591010beae7d0c8d1948f1afeceb9ad23ac50e4503ada875a72a8ac92" [label=""];
  "sha256:ab35567591010beae7d0c8d1948f1afeceb9ad23ac50e4503ada875a72a8ac92" -> "sha256:da6b9fefe56868fc0125ae13b908801d6e97c7641a38d3679e02bf48e6b77afd" [label=""];
  "sha256:de574a3e8b83625d80342263ab30b660b8db1ed7d02c63e31dda089795ea047f" -> "sha256:da6b9fefe56868fc0125ae13b908801d6e97c7641a38d3679e02bf48e6b77afd" [label=""];
  "sha256:da6b9fefe56868fc0125ae13b908801d6e97c7641a38d3679e02bf48e6b77afd" -> "sha256:49d625967de35299e32f8a95d1fa261ffac9a9f99633655b44b43985870688f1" [label=""];
  "sha256:49d625967de35299e32f8a95d1fa261ffac9a9f99633655b44b43985870688f1" -> "sha256:29b5bf308469e2796f28a328c31ae4313a8e2e378d86f12b7e4879d5f861233e" [label=""];
  "sha256:29b5bf308469e2796f28a328c31ae4313a8e2e378d86f12b7e4879d5f861233e" -> "sha256:37cfdaad61a580531a13e66be8e2e66249a0e128cb37c8818de2da8be077f28a" [label=""];
  "sha256:37cfdaad61a580531a13e66be8e2e66249a0e128cb37c8818de2da8be077f28a" -> "sha256:44ea34de1528a4be1ffcf8bc7e2777f2ad3bd72acd010e7f95d182d92c90345e" [label=""];
}

