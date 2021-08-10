[app/sources/252786661.Dockerfile]
digraph {
  "sha256:771063b935fc6832bf1a3c67e0d1e4ddd8c54cc2cb6481f1e3b194127a41d9d7" [label="docker-image://docker.io/dockmob/hbase:1.0.1" shape="ellipse"];
  "sha256:a9842859cc6adf2f0b9ef702ac19744587640541ef7ca778617da7a1388d4d94" [label="/bin/sh -c apk add --update python && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:31b597bcf34735eeb71199814c93dbed4dec9ef576986ac3e00ea2c968bfdbd2" [label="local://context" shape="ellipse"];
  "sha256:d5254c7b90a6860730627dcbdf8c77014c6202d8b73076adfee9ed79df47c556" [label="copy{src=/setup, dest=/phoenix-setup}" shape="note"];
  "sha256:01dd4697f8ce81e2bbf236a17c38be8b69debb173dcfc358b4cb0900a8b29c40" [label="mkdir{path=/phoenix-setup}" shape="note"];
  "sha256:3c64940ead498260158545ad16431d08f98442d74318cf9cbbced58f14ac272d" [label="/bin/sh -c ./install.sh" shape="box"];
  "sha256:037862d4e189d17d5fe960fc97ddbd31eb47089f568a9f8b79df715c52d7003e" [label="mkdir{path=/usr/lib/hbase/bin}" shape="note"];
  "sha256:76ed6da74a929fb3e3ebbd497dbd0825e8874aa9a49bf932cb60efb75abd3031" [label="sha256:76ed6da74a929fb3e3ebbd497dbd0825e8874aa9a49bf932cb60efb75abd3031" shape="plaintext"];
  "sha256:771063b935fc6832bf1a3c67e0d1e4ddd8c54cc2cb6481f1e3b194127a41d9d7" -> "sha256:a9842859cc6adf2f0b9ef702ac19744587640541ef7ca778617da7a1388d4d94" [label=""];
  "sha256:a9842859cc6adf2f0b9ef702ac19744587640541ef7ca778617da7a1388d4d94" -> "sha256:d5254c7b90a6860730627dcbdf8c77014c6202d8b73076adfee9ed79df47c556" [label=""];
  "sha256:31b597bcf34735eeb71199814c93dbed4dec9ef576986ac3e00ea2c968bfdbd2" -> "sha256:d5254c7b90a6860730627dcbdf8c77014c6202d8b73076adfee9ed79df47c556" [label=""];
  "sha256:d5254c7b90a6860730627dcbdf8c77014c6202d8b73076adfee9ed79df47c556" -> "sha256:01dd4697f8ce81e2bbf236a17c38be8b69debb173dcfc358b4cb0900a8b29c40" [label=""];
  "sha256:01dd4697f8ce81e2bbf236a17c38be8b69debb173dcfc358b4cb0900a8b29c40" -> "sha256:3c64940ead498260158545ad16431d08f98442d74318cf9cbbced58f14ac272d" [label=""];
  "sha256:3c64940ead498260158545ad16431d08f98442d74318cf9cbbced58f14ac272d" -> "sha256:037862d4e189d17d5fe960fc97ddbd31eb47089f568a9f8b79df715c52d7003e" [label=""];
  "sha256:037862d4e189d17d5fe960fc97ddbd31eb47089f568a9f8b79df715c52d7003e" -> "sha256:76ed6da74a929fb3e3ebbd497dbd0825e8874aa9a49bf932cb60efb75abd3031" [label=""];
}

