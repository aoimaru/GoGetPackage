[app/sources/290329824.Dockerfile]
digraph {
  "sha256:a9febb52b7e0fc70d91b55321485bbd9eac1a7d19713db83f2fd851ad1dbb787" [label="docker-image://docker.io/azul/zulu-openjdk:12.0.1" shape="ellipse"];
  "sha256:edf768669cc0a9e4660c10e0c0b6121279eb2a2256713acbe9db460eea016727" [label="local://context" shape="ellipse"];
  "sha256:18a26469da10750db4fe5c5f9d38126fc8cf74ca0fdfaa7b5a7d1c6397828655" [label="copy{src=/script/start.sh, dest=/start.sh}" shape="note"];
  "sha256:74015504bb0e3a51c88a6259888dc41b88d2cdce43ecb890e70b374fdcadb1d1" [label="copy{src=/config/config.yaml, dest=/config/config.yaml}" shape="note"];
  "sha256:343883dcbde4dd4e666a05c729f92bbe6812319932c42befaadf46dcc3230390" [label="copy{src=/build/libs/scaninfo-shredder-uber.jar, dest=/scaninfo-shredder.jar}" shape="note"];
  "sha256:e29c3597feed079714f5dd8947930c23757134cd28d2318ff197d42abf26e695" [label="java -Dfile.encoding=UTF-8 -Xshare:on -Xshare:dump -jar /scaninfo-shredder.jar quit config/config.yaml" shape="box"];
  "sha256:a50ac1cfad3fceaa79e332ce59343344c47079d74a0b498e65af866f45b93d2c" [label="sha256:a50ac1cfad3fceaa79e332ce59343344c47079d74a0b498e65af866f45b93d2c" shape="plaintext"];
  "sha256:a9febb52b7e0fc70d91b55321485bbd9eac1a7d19713db83f2fd851ad1dbb787" -> "sha256:18a26469da10750db4fe5c5f9d38126fc8cf74ca0fdfaa7b5a7d1c6397828655" [label=""];
  "sha256:edf768669cc0a9e4660c10e0c0b6121279eb2a2256713acbe9db460eea016727" -> "sha256:18a26469da10750db4fe5c5f9d38126fc8cf74ca0fdfaa7b5a7d1c6397828655" [label=""];
  "sha256:18a26469da10750db4fe5c5f9d38126fc8cf74ca0fdfaa7b5a7d1c6397828655" -> "sha256:74015504bb0e3a51c88a6259888dc41b88d2cdce43ecb890e70b374fdcadb1d1" [label=""];
  "sha256:edf768669cc0a9e4660c10e0c0b6121279eb2a2256713acbe9db460eea016727" -> "sha256:74015504bb0e3a51c88a6259888dc41b88d2cdce43ecb890e70b374fdcadb1d1" [label=""];
  "sha256:74015504bb0e3a51c88a6259888dc41b88d2cdce43ecb890e70b374fdcadb1d1" -> "sha256:343883dcbde4dd4e666a05c729f92bbe6812319932c42befaadf46dcc3230390" [label=""];
  "sha256:edf768669cc0a9e4660c10e0c0b6121279eb2a2256713acbe9db460eea016727" -> "sha256:343883dcbde4dd4e666a05c729f92bbe6812319932c42befaadf46dcc3230390" [label=""];
  "sha256:343883dcbde4dd4e666a05c729f92bbe6812319932c42befaadf46dcc3230390" -> "sha256:e29c3597feed079714f5dd8947930c23757134cd28d2318ff197d42abf26e695" [label=""];
  "sha256:e29c3597feed079714f5dd8947930c23757134cd28d2318ff197d42abf26e695" -> "sha256:a50ac1cfad3fceaa79e332ce59343344c47079d74a0b498e65af866f45b93d2c" [label=""];
}

