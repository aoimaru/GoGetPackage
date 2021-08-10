[app/sources/138967021.Dockerfile]
digraph {
  "sha256:c1378c6015449905ec7abcd6073140741466f46b9e9a9b52de2f3ae370a5c43a" [label="docker-image://docker.elastic.co/beats/filebeat:6.5.2@sha256:fed8e6b2e9e52fc1a6843e935124c8daf2ab6ab24a3aa03a82d564965feafa5c" shape="ellipse"];
  "sha256:d8b8df89f8182299ac4de165f40f76a8d85c512a4caa551afcdf2e9e28a6f679" [label="local://context" shape="ellipse"];
  "sha256:428dd698710548f475ac294040912f91155d0a1dd61e182db81892d20225c3ff" [label="copy{src=/filebeat.yml, dest=/usr/share/filebeat/filebeat.yml}" shape="note"];
  "sha256:0b64dfbb92a2f182f9e0ed0023de0223c6948c7c406fa8ed4077460bc101cfb9" [label="/bin/sh -c mkdir /usr/share/filebeat/dockerlogs" shape="box"];
  "sha256:aa8c3dd9280aac527381617f237c10a8bcb9031a406c8e045241fd86c92d1c40" [label="/bin/sh -c chown -R root /usr/share/filebeat/" shape="box"];
  "sha256:22660f3668f3df7a714d5bd81f7bafb7da95a3ab20378cd9279e6e4c0649629c" [label="/bin/sh -c chmod -R go-w /usr/share/filebeat/" shape="box"];
  "sha256:db257b56b50d420f2e69ea73d361e29cd96f8c0a04e7f02370edbfae68b7f0b2" [label="sha256:db257b56b50d420f2e69ea73d361e29cd96f8c0a04e7f02370edbfae68b7f0b2" shape="plaintext"];
  "sha256:c1378c6015449905ec7abcd6073140741466f46b9e9a9b52de2f3ae370a5c43a" -> "sha256:428dd698710548f475ac294040912f91155d0a1dd61e182db81892d20225c3ff" [label=""];
  "sha256:d8b8df89f8182299ac4de165f40f76a8d85c512a4caa551afcdf2e9e28a6f679" -> "sha256:428dd698710548f475ac294040912f91155d0a1dd61e182db81892d20225c3ff" [label=""];
  "sha256:428dd698710548f475ac294040912f91155d0a1dd61e182db81892d20225c3ff" -> "sha256:0b64dfbb92a2f182f9e0ed0023de0223c6948c7c406fa8ed4077460bc101cfb9" [label=""];
  "sha256:0b64dfbb92a2f182f9e0ed0023de0223c6948c7c406fa8ed4077460bc101cfb9" -> "sha256:aa8c3dd9280aac527381617f237c10a8bcb9031a406c8e045241fd86c92d1c40" [label=""];
  "sha256:aa8c3dd9280aac527381617f237c10a8bcb9031a406c8e045241fd86c92d1c40" -> "sha256:22660f3668f3df7a714d5bd81f7bafb7da95a3ab20378cd9279e6e4c0649629c" [label=""];
  "sha256:22660f3668f3df7a714d5bd81f7bafb7da95a3ab20378cd9279e6e4c0649629c" -> "sha256:db257b56b50d420f2e69ea73d361e29cd96f8c0a04e7f02370edbfae68b7f0b2" [label=""];
}

