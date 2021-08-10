[app/sources/240469336.Dockerfile]
digraph {
  "sha256:bd89c6660d7982822a6b38c60b4259ff7c277d1fd9b871c96ca0f0bfeb7b941b" [label="docker-image://docker.io/bigtruedata/scala:2.11.3" shape="ellipse"];
  "sha256:47598adcf36d983ad88ee987aae79c66030a1d27ee02e6898ed352eb1182a520" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v1.0.2/sbt-1.0.2.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:7cf21f905a00f7bf4d65d522a85a68583eba9ffa28af05e2cc0e369deb3b010f" [label="mkdir{path=/app}" shape="note"];
  "sha256:191bd7e4528bf104fccc3dd91f7f3b4dc768df911b07bb139a33a1e53ff5cbf8" [label="sha256:191bd7e4528bf104fccc3dd91f7f3b4dc768df911b07bb139a33a1e53ff5cbf8" shape="plaintext"];
  "sha256:bd89c6660d7982822a6b38c60b4259ff7c277d1fd9b871c96ca0f0bfeb7b941b" -> "sha256:47598adcf36d983ad88ee987aae79c66030a1d27ee02e6898ed352eb1182a520" [label=""];
  "sha256:47598adcf36d983ad88ee987aae79c66030a1d27ee02e6898ed352eb1182a520" -> "sha256:7cf21f905a00f7bf4d65d522a85a68583eba9ffa28af05e2cc0e369deb3b010f" [label=""];
  "sha256:7cf21f905a00f7bf4d65d522a85a68583eba9ffa28af05e2cc0e369deb3b010f" -> "sha256:191bd7e4528bf104fccc3dd91f7f3b4dc768df911b07bb139a33a1e53ff5cbf8" [label=""];
}

