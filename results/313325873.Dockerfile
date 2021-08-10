[app/sources/313325873.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:381cd0eb32d7aa3aab8c843821e5be944eba7ee7379f5bca6b5a7f29c4c8576d" [label="/bin/sh -c apt-get update && apt-get install -y         curl         libcurl3-dev         unzip         wget         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:acf51a335aba7fb7cb2658d53e96929a9abd1d35924046002ae916d69bb08c51" [label="/bin/sh -c TEMP_DEB=\"$(mktemp)\"     && wget -O \"$TEMP_DEB\" 'http://storage.googleapis.com/tensorflow-serving-apt/pool/tensorflow-model-server-1.12.0/t/tensorflow-model-server/tensorflow-model-server_1.12.0_all.deb'     && dpkg -i \"$TEMP_DEB\"     && rm -f \"$TEMP_DEB\"" shape="box"];
  "sha256:a17aea8d1027b1fd72005700869b0ecfc8d03e98a086e6ebb8e4d44b5c5b25f7" [label="sha256:a17aea8d1027b1fd72005700869b0ecfc8d03e98a086e6ebb8e4d44b5c5b25f7" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:381cd0eb32d7aa3aab8c843821e5be944eba7ee7379f5bca6b5a7f29c4c8576d" [label=""];
  "sha256:381cd0eb32d7aa3aab8c843821e5be944eba7ee7379f5bca6b5a7f29c4c8576d" -> "sha256:acf51a335aba7fb7cb2658d53e96929a9abd1d35924046002ae916d69bb08c51" [label=""];
  "sha256:acf51a335aba7fb7cb2658d53e96929a9abd1d35924046002ae916d69bb08c51" -> "sha256:a17aea8d1027b1fd72005700869b0ecfc8d03e98a086e6ebb8e4d44b5c5b25f7" [label=""];
}

