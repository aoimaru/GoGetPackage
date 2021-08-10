[app/sources/252768446.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:f056d9cdb9965ddd7fcb6144dd24a21c9c77abd60787946a40d6c3af225e72ea" [label="/bin/sh -c apt-get update && apt-get install -y build-essential bash bc binutils build-essential bzip2 cpio g++ gcc git gzip locales libncurses5-dev make mercurial whois patch perl python rsync sed tar unzip wget" shape="box"];
  "sha256:adacef03196039059ed0af599132bbab8d552c796517f5a2f7c33b4753d59c71" [label="/bin/sh -c locale-gen en_US.utf8" shape="box"];
  "sha256:d2f32602e7e32858fd091bfa7e3ebd4f028ec7ddf29da244a69e8dabc30a739e" [label="/bin/sh -c git clone git://git.buildroot.net/buildroot --depth=1 /root/buildroot" shape="box"];
  "sha256:1bde360bbeddbba1ffd80713a54cf96e2db01cbd867fd84f7474e7c9d83b80d4" [label="mkdir{path=/root/buildroot}" shape="note"];
  "sha256:4673b3351475e1eb88ccff54cf8e2de0b412937766314d62d98db55bea8f6ac6" [label="/bin/sh -c touch .config" shape="box"];
  "sha256:91b67224a3ff5afa1bb3ed69921d89e43190d3954b8923881f878ec4afc8f056" [label="/bin/sh -c touch kernel.config" shape="box"];
  "sha256:845122a9a7f9c6b64a1ee352c71aa94f2e27e0290d8efa314cd8774baeb3e2e7" [label="/bin/bash" shape="box"];
  "sha256:9422c16ecf21d4cb7945a1ea943f3450b4c6682cee1ab3669a4046f39be7cb9d" [label="sha256:9422c16ecf21d4cb7945a1ea943f3450b4c6682cee1ab3669a4046f39be7cb9d" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:f056d9cdb9965ddd7fcb6144dd24a21c9c77abd60787946a40d6c3af225e72ea" [label=""];
  "sha256:f056d9cdb9965ddd7fcb6144dd24a21c9c77abd60787946a40d6c3af225e72ea" -> "sha256:adacef03196039059ed0af599132bbab8d552c796517f5a2f7c33b4753d59c71" [label=""];
  "sha256:adacef03196039059ed0af599132bbab8d552c796517f5a2f7c33b4753d59c71" -> "sha256:d2f32602e7e32858fd091bfa7e3ebd4f028ec7ddf29da244a69e8dabc30a739e" [label=""];
  "sha256:d2f32602e7e32858fd091bfa7e3ebd4f028ec7ddf29da244a69e8dabc30a739e" -> "sha256:1bde360bbeddbba1ffd80713a54cf96e2db01cbd867fd84f7474e7c9d83b80d4" [label=""];
  "sha256:1bde360bbeddbba1ffd80713a54cf96e2db01cbd867fd84f7474e7c9d83b80d4" -> "sha256:4673b3351475e1eb88ccff54cf8e2de0b412937766314d62d98db55bea8f6ac6" [label=""];
  "sha256:4673b3351475e1eb88ccff54cf8e2de0b412937766314d62d98db55bea8f6ac6" -> "sha256:91b67224a3ff5afa1bb3ed69921d89e43190d3954b8923881f878ec4afc8f056" [label=""];
  "sha256:91b67224a3ff5afa1bb3ed69921d89e43190d3954b8923881f878ec4afc8f056" -> "sha256:845122a9a7f9c6b64a1ee352c71aa94f2e27e0290d8efa314cd8774baeb3e2e7" [label=""];
  "sha256:845122a9a7f9c6b64a1ee352c71aa94f2e27e0290d8efa314cd8774baeb3e2e7" -> "sha256:9422c16ecf21d4cb7945a1ea943f3450b4c6682cee1ab3669a4046f39be7cb9d" [label=""];
}

