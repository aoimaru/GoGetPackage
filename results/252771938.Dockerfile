[app/sources/252771938.Dockerfile]
digraph {
  "sha256:3957d8e576db322a26421cae5ea6792d513c787903550fa0b69d5abe76d441cd" [label="docker-image://docker.io/abernix/meteord:base" shape="ellipse"];
  "sha256:aba8e5ab430057b907d570639e4bb18e41828e48973df728c320fe66f912d8ec" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2a70c24717dc24933f08af138210cf4bae407b0dafbdf70a4cd0e34daa12c77f" [label="/bin/sh -c apt-get install -y libav-tools" shape="box"];
  "sha256:f6a7092dd8a642601b83e4f8ed0dea4d29e9c1b0721ceb0cc63acf712fbf2608" [label="/bin/sh -c ln -s /usr/bin/avconv /usr/bin/ffmpeg" shape="box"];
  "sha256:f9e31f008a043fb356a142eda3af88624c71d53cef3e56dd6ea48b13fbe0bbb8" [label="/bin/sh -c apt-get install -y sox" shape="box"];
  "sha256:0bc49cc689ffb2ebd95e6f69c5b49a1f6852e0ca02cd438b3791c0f530934d8b" [label="/bin/sh -c apt-get install -y libsox-fmt-mp3" shape="box"];
  "sha256:e7cd51924f141663b9bb19bc14f3c633499ee2f5e1c77d9c7c007b85af9cad3a" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:9a4c2e88b02ab6bdf9d33b5daad77a04ec0c737853443c6b7687156500d3b6e1" [label="/bin/sh -c mkdir /opt/files" shape="box"];
  "sha256:29c7b4c8d0bc5cd63bf8d03ed2ffedc8601d076c8e98f1d6cdf8637301e2b4e5" [label="/bin/sh -c curl http://files.noisefarm.net/files/logo.mp3 > /opt/files/logo.mp3" shape="box"];
  "sha256:05a3c6c5deeda042f0ead9c94839ac0e20f0c968b292207638668cb2d6db3d90" [label="/bin/sh -c ls -la" shape="box"];
  "sha256:e8bd74a0a91bfcf0539accdb92540b2e612bf27948528ea774557eef12b0687e" [label="/bin/sh -c chmod a+wx /opt" shape="box"];
  "sha256:d4611dedde26eba8bca81aa32a4476594f26a5a0c5597d77a40c18daa0e6479a" [label="/bin/sh -c chmod a+wx /opt/files" shape="box"];
  "sha256:82c309627ff3e184a75a7a07f5c3ab6931568337bc92305b68abd4b6b56c6048" [label="/bin/sh -c chmod a+wx /opt/files/logo.mp3" shape="box"];
  "sha256:31f55e21b962b30056c15a4918f67aaa68c8d3f566f082577445e8e7ff991cf9" [label="/bin/sh -c apt-get install -y python-pip" shape="box"];
  "sha256:6e24f01dfa26ae1b695aad89bcf761c855cd08bddf3a71a3aa6e759f3af048f3" [label="/bin/sh -c pip install mutagen" shape="box"];
  "sha256:6479edc794bc7a32d4c28ee7867d677d790db3100a098ca5e74665d2874e5142" [label="sha256:6479edc794bc7a32d4c28ee7867d677d790db3100a098ca5e74665d2874e5142" shape="plaintext"];
  "sha256:3957d8e576db322a26421cae5ea6792d513c787903550fa0b69d5abe76d441cd" -> "sha256:aba8e5ab430057b907d570639e4bb18e41828e48973df728c320fe66f912d8ec" [label=""];
  "sha256:aba8e5ab430057b907d570639e4bb18e41828e48973df728c320fe66f912d8ec" -> "sha256:2a70c24717dc24933f08af138210cf4bae407b0dafbdf70a4cd0e34daa12c77f" [label=""];
  "sha256:2a70c24717dc24933f08af138210cf4bae407b0dafbdf70a4cd0e34daa12c77f" -> "sha256:f6a7092dd8a642601b83e4f8ed0dea4d29e9c1b0721ceb0cc63acf712fbf2608" [label=""];
  "sha256:f6a7092dd8a642601b83e4f8ed0dea4d29e9c1b0721ceb0cc63acf712fbf2608" -> "sha256:f9e31f008a043fb356a142eda3af88624c71d53cef3e56dd6ea48b13fbe0bbb8" [label=""];
  "sha256:f9e31f008a043fb356a142eda3af88624c71d53cef3e56dd6ea48b13fbe0bbb8" -> "sha256:0bc49cc689ffb2ebd95e6f69c5b49a1f6852e0ca02cd438b3791c0f530934d8b" [label=""];
  "sha256:0bc49cc689ffb2ebd95e6f69c5b49a1f6852e0ca02cd438b3791c0f530934d8b" -> "sha256:e7cd51924f141663b9bb19bc14f3c633499ee2f5e1c77d9c7c007b85af9cad3a" [label=""];
  "sha256:e7cd51924f141663b9bb19bc14f3c633499ee2f5e1c77d9c7c007b85af9cad3a" -> "sha256:9a4c2e88b02ab6bdf9d33b5daad77a04ec0c737853443c6b7687156500d3b6e1" [label=""];
  "sha256:9a4c2e88b02ab6bdf9d33b5daad77a04ec0c737853443c6b7687156500d3b6e1" -> "sha256:29c7b4c8d0bc5cd63bf8d03ed2ffedc8601d076c8e98f1d6cdf8637301e2b4e5" [label=""];
  "sha256:29c7b4c8d0bc5cd63bf8d03ed2ffedc8601d076c8e98f1d6cdf8637301e2b4e5" -> "sha256:05a3c6c5deeda042f0ead9c94839ac0e20f0c968b292207638668cb2d6db3d90" [label=""];
  "sha256:05a3c6c5deeda042f0ead9c94839ac0e20f0c968b292207638668cb2d6db3d90" -> "sha256:e8bd74a0a91bfcf0539accdb92540b2e612bf27948528ea774557eef12b0687e" [label=""];
  "sha256:e8bd74a0a91bfcf0539accdb92540b2e612bf27948528ea774557eef12b0687e" -> "sha256:d4611dedde26eba8bca81aa32a4476594f26a5a0c5597d77a40c18daa0e6479a" [label=""];
  "sha256:d4611dedde26eba8bca81aa32a4476594f26a5a0c5597d77a40c18daa0e6479a" -> "sha256:82c309627ff3e184a75a7a07f5c3ab6931568337bc92305b68abd4b6b56c6048" [label=""];
  "sha256:82c309627ff3e184a75a7a07f5c3ab6931568337bc92305b68abd4b6b56c6048" -> "sha256:31f55e21b962b30056c15a4918f67aaa68c8d3f566f082577445e8e7ff991cf9" [label=""];
  "sha256:31f55e21b962b30056c15a4918f67aaa68c8d3f566f082577445e8e7ff991cf9" -> "sha256:6e24f01dfa26ae1b695aad89bcf761c855cd08bddf3a71a3aa6e759f3af048f3" [label=""];
  "sha256:6e24f01dfa26ae1b695aad89bcf761c855cd08bddf3a71a3aa6e759f3af048f3" -> "sha256:6479edc794bc7a32d4c28ee7867d677d790db3100a098ca5e74665d2874e5142" [label=""];
}

