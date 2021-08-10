[app/sources/456534250.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:fb9054c465501aa094b9c955d458989f78b606a717f1491daeff31606223a839" [label="/bin/sh -c mkdir -p chromium" shape="box"];
  "sha256:66851d790fb52ba9a1f8c119aff53742f587e09f67e6f1ab7da5e6b93b68de8c" [label="/bin/sh -c apt-get update && apt-get install -y git python" shape="box"];
  "sha256:2fd571933d67476e147a0893c70f3f3ccf0447bc1c327d8a028f1c4eb65a1f8b" [label="/bin/sh -c git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git" shape="box"];
  "sha256:7ef8fcf731acdc3497279769ad210e9c8d1dbc467ffd3b0073dc628595ada463" [label="mkdir{path=/chromium}" shape="note"];
  "sha256:00e1d067b4faecb92e5b52e64f9dd7b7896db2d2173fd8632599ee8e0d5a7504" [label="/bin/sh -c fetch --nohooks chromium" shape="box"];
  "sha256:fcc218fb1dd9b33e171c40dbe84d7342662ba5b1f854d217d6de4e66e952a6be" [label="/bin/sh -c apt-get install -y build-essential lsb-release locales" shape="box"];
  "sha256:97a82876a0c886bc1d2e405c8a127d1bfe7abcafa10534503c3021cd5261d955" [label="mkdir{path=/chromium/src}" shape="note"];
  "sha256:44c7a3a792d21e1ab259e971132e436fd8489c4dda3e6be8e9c44e01fe26b79f" [label="/bin/sh -c mkdir -p /tools" shape="box"];
  "sha256:2a4484e440e80fb62cb4342eaa991be8d82b50839a54b95effecbc1f04545703" [label="local://context" shape="ellipse"];
  "sha256:57f47178c703fcb1d3d7998b368c210aa7ead820b5c37c33576160d7d89bc29a" [label="copy{src=/fake_sudo, dest=/tools/sudo}" shape="note"];
  "sha256:e72dc636a31532ed503cf49ecbf991dcd90f061814e8e4057cedf00fb965d307" [label="/bin/sh -c echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections" shape="box"];
  "sha256:8e74f2225172477c7be22c7f779f315c1e08d44ac11b51ca8f278b783cc1fa79" [label="/bin/sh -c build/install-build-deps.sh --no-prompt --no-arm --no-chromeos-fonts --no-nacl" shape="box"];
  "sha256:d6973ec38b2c32a40c9b5be58a8497942567ad2262f82b838a1d7a55af962594" [label="/bin/sh -c gclient runhooks" shape="box"];
  "sha256:f0636b6edee4761a5d17eea760c005d240d4c04d7362640bdc04cbca0e9128a9" [label="/bin/sh -c gn gen out/Default" shape="box"];
  "sha256:c6227d79256aeeb7a36d8a82f59aabebad0dc41e3564d3f68f88242f92da067c" [label="/bin/sh -c ninja -C out/Default chromedriver" shape="box"];
  "sha256:0284d7317533f8d1db0ef8d0015dad404cc32ccaefb5f0ad1486d9110c71665a" [label="sha256:0284d7317533f8d1db0ef8d0015dad404cc32ccaefb5f0ad1486d9110c71665a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:fb9054c465501aa094b9c955d458989f78b606a717f1491daeff31606223a839" [label=""];
  "sha256:fb9054c465501aa094b9c955d458989f78b606a717f1491daeff31606223a839" -> "sha256:66851d790fb52ba9a1f8c119aff53742f587e09f67e6f1ab7da5e6b93b68de8c" [label=""];
  "sha256:66851d790fb52ba9a1f8c119aff53742f587e09f67e6f1ab7da5e6b93b68de8c" -> "sha256:2fd571933d67476e147a0893c70f3f3ccf0447bc1c327d8a028f1c4eb65a1f8b" [label=""];
  "sha256:2fd571933d67476e147a0893c70f3f3ccf0447bc1c327d8a028f1c4eb65a1f8b" -> "sha256:7ef8fcf731acdc3497279769ad210e9c8d1dbc467ffd3b0073dc628595ada463" [label=""];
  "sha256:7ef8fcf731acdc3497279769ad210e9c8d1dbc467ffd3b0073dc628595ada463" -> "sha256:00e1d067b4faecb92e5b52e64f9dd7b7896db2d2173fd8632599ee8e0d5a7504" [label=""];
  "sha256:00e1d067b4faecb92e5b52e64f9dd7b7896db2d2173fd8632599ee8e0d5a7504" -> "sha256:fcc218fb1dd9b33e171c40dbe84d7342662ba5b1f854d217d6de4e66e952a6be" [label=""];
  "sha256:fcc218fb1dd9b33e171c40dbe84d7342662ba5b1f854d217d6de4e66e952a6be" -> "sha256:97a82876a0c886bc1d2e405c8a127d1bfe7abcafa10534503c3021cd5261d955" [label=""];
  "sha256:97a82876a0c886bc1d2e405c8a127d1bfe7abcafa10534503c3021cd5261d955" -> "sha256:44c7a3a792d21e1ab259e971132e436fd8489c4dda3e6be8e9c44e01fe26b79f" [label=""];
  "sha256:44c7a3a792d21e1ab259e971132e436fd8489c4dda3e6be8e9c44e01fe26b79f" -> "sha256:57f47178c703fcb1d3d7998b368c210aa7ead820b5c37c33576160d7d89bc29a" [label=""];
  "sha256:2a4484e440e80fb62cb4342eaa991be8d82b50839a54b95effecbc1f04545703" -> "sha256:57f47178c703fcb1d3d7998b368c210aa7ead820b5c37c33576160d7d89bc29a" [label=""];
  "sha256:57f47178c703fcb1d3d7998b368c210aa7ead820b5c37c33576160d7d89bc29a" -> "sha256:e72dc636a31532ed503cf49ecbf991dcd90f061814e8e4057cedf00fb965d307" [label=""];
  "sha256:e72dc636a31532ed503cf49ecbf991dcd90f061814e8e4057cedf00fb965d307" -> "sha256:8e74f2225172477c7be22c7f779f315c1e08d44ac11b51ca8f278b783cc1fa79" [label=""];
  "sha256:8e74f2225172477c7be22c7f779f315c1e08d44ac11b51ca8f278b783cc1fa79" -> "sha256:d6973ec38b2c32a40c9b5be58a8497942567ad2262f82b838a1d7a55af962594" [label=""];
  "sha256:d6973ec38b2c32a40c9b5be58a8497942567ad2262f82b838a1d7a55af962594" -> "sha256:f0636b6edee4761a5d17eea760c005d240d4c04d7362640bdc04cbca0e9128a9" [label=""];
  "sha256:f0636b6edee4761a5d17eea760c005d240d4c04d7362640bdc04cbca0e9128a9" -> "sha256:c6227d79256aeeb7a36d8a82f59aabebad0dc41e3564d3f68f88242f92da067c" [label=""];
  "sha256:c6227d79256aeeb7a36d8a82f59aabebad0dc41e3564d3f68f88242f92da067c" -> "sha256:0284d7317533f8d1db0ef8d0015dad404cc32ccaefb5f0ad1486d9110c71665a" [label=""];
}

