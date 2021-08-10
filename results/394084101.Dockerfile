[app/sources/394084101.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e79c057d26406dcb0764d100435f7f3c57642da1c255f6acf31e142c3cedae3e" [label="/bin/sh -c apt-get install -y curl make g++ gcc libcurl4-openssl-dev autoconf libtool libjansson-dev build-essential pkg-config clang llvm git libssl-dev" shape="box"];
  "sha256:6bdd984414965a5bca1258c8e1fb48a29224070c5059e792d5acc72cd6c22c5b" [label="/bin/sh -c git clone https://github.com/payden/libwsclient.git" shape="box"];
  "sha256:260b1accac8c65dac25766edbf06045b38d22b3a010e6946673af1123cb7696c" [label="mkdir{path=/libwsclient}" shape="note"];
  "sha256:40a94f1e1e065a462074dad4dacf52d53b18edc0a046e9b788516e5b1dcf7fe9" [label="/bin/sh -c ./autogen.sh" shape="box"];
  "sha256:067bde84f688038dec3efbec9ef197c18787e2e2de34d00f3eb4fc1836f238e9" [label="/bin/sh -c ./configure && make && make install" shape="box"];
  "sha256:f75fad4339f05da2a96279239298ad44b06855c962dc8f3b43c45b57f169c3b4" [label="mkdir{path=/data}" shape="note"];
  "sha256:d30c2804ceabcfb595aa658a911b944dd76a9ea8d7836b7950352c1411e7546d" [label="local://context" shape="ellipse"];
  "sha256:021ff187d156d0c066169a3e4fbd0f16df0259a77b5e659635be8c132a4432d9" [label="copy{src=/, dest=/data}" shape="note"];
  "sha256:735b49a7d0e53e793dc843a54edbd8e0bd3d83fdfa86107af3ff6a6968b101a8" [label="/bin/sh -c make clean" shape="box"];
  "sha256:dc78ba3dabeeeb1717e99f0e6215beff3bf371f1cc624b1945332b9248be9e69" [label="/bin/sh -c make" shape="box"];
  "sha256:730c4ae9989678496d7321e65350e8ce2b72102f80d1d373dcafce20a02f7aef" [label="sha256:730c4ae9989678496d7321e65350e8ce2b72102f80d1d373dcafce20a02f7aef" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label=""];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" -> "sha256:e79c057d26406dcb0764d100435f7f3c57642da1c255f6acf31e142c3cedae3e" [label=""];
  "sha256:e79c057d26406dcb0764d100435f7f3c57642da1c255f6acf31e142c3cedae3e" -> "sha256:6bdd984414965a5bca1258c8e1fb48a29224070c5059e792d5acc72cd6c22c5b" [label=""];
  "sha256:6bdd984414965a5bca1258c8e1fb48a29224070c5059e792d5acc72cd6c22c5b" -> "sha256:260b1accac8c65dac25766edbf06045b38d22b3a010e6946673af1123cb7696c" [label=""];
  "sha256:260b1accac8c65dac25766edbf06045b38d22b3a010e6946673af1123cb7696c" -> "sha256:40a94f1e1e065a462074dad4dacf52d53b18edc0a046e9b788516e5b1dcf7fe9" [label=""];
  "sha256:40a94f1e1e065a462074dad4dacf52d53b18edc0a046e9b788516e5b1dcf7fe9" -> "sha256:067bde84f688038dec3efbec9ef197c18787e2e2de34d00f3eb4fc1836f238e9" [label=""];
  "sha256:067bde84f688038dec3efbec9ef197c18787e2e2de34d00f3eb4fc1836f238e9" -> "sha256:f75fad4339f05da2a96279239298ad44b06855c962dc8f3b43c45b57f169c3b4" [label=""];
  "sha256:f75fad4339f05da2a96279239298ad44b06855c962dc8f3b43c45b57f169c3b4" -> "sha256:021ff187d156d0c066169a3e4fbd0f16df0259a77b5e659635be8c132a4432d9" [label=""];
  "sha256:d30c2804ceabcfb595aa658a911b944dd76a9ea8d7836b7950352c1411e7546d" -> "sha256:021ff187d156d0c066169a3e4fbd0f16df0259a77b5e659635be8c132a4432d9" [label=""];
  "sha256:021ff187d156d0c066169a3e4fbd0f16df0259a77b5e659635be8c132a4432d9" -> "sha256:735b49a7d0e53e793dc843a54edbd8e0bd3d83fdfa86107af3ff6a6968b101a8" [label=""];
  "sha256:735b49a7d0e53e793dc843a54edbd8e0bd3d83fdfa86107af3ff6a6968b101a8" -> "sha256:dc78ba3dabeeeb1717e99f0e6215beff3bf371f1cc624b1945332b9248be9e69" [label=""];
  "sha256:dc78ba3dabeeeb1717e99f0e6215beff3bf371f1cc624b1945332b9248be9e69" -> "sha256:730c4ae9989678496d7321e65350e8ce2b72102f80d1d373dcafce20a02f7aef" [label=""];
}

