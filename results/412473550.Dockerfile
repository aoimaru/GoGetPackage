[app/sources/412473550.Dockerfile]
digraph {
  "sha256:65ebec7d2c5bc1128065db3c006ad9734fbbb48a40739ffe6aa7124bfa30cc39" [label="local://context" shape="ellipse"];
  "sha256:b1bf8cde1bfe7dcf60fc181ffa6c2148d59505f9073e9b3f942b723e1059e666" [label="docker-image://docker.io/phusion/baseimage:0.9.15@sha256:0ffa3dbcb7d0e22b3000208cd3bc1ec11ffceb1a0dd547c891c262890f00d4c1" shape="ellipse"];
  "sha256:7a749aac3479628028d81f5c711f9fd3361c551ec975dd70cd6503fd71253bba" [label="copy{src=/couchpotato.sh, dest=/etc/service/couchpotato/run}" shape="note"];
  "sha256:dcb5d11aca30f509ac73ebd73824f36b0a47718dc8b1793789b2c061103a138d" [label="copy{src=/edge.sh, dest=/etc/my_init.d/edge.sh}" shape="note"];
  "sha256:c2aed4615ed90e3e853766d7cc87083db66786c61619124711aabc302e301c38" [label="/bin/sh -c chmod +x /etc/service/*/run /etc/my_init.d/*" shape="box"];
  "sha256:5e72ddb50c7b356b2280c764c660c46aa67bdf9b1db15ba7752b2074c2efa959" [label="copy{src=/install.sh, dest=/tmp/}" shape="note"];
  "sha256:dae9079c633eeb89866d74152e34c469e5a13fceaae828015a17082ec274e9d6" [label="/bin/sh -c chmod +x /tmp/install.sh && /tmp/install.sh && rm /tmp/install.sh" shape="box"];
  "sha256:4e96623b08fb9f937e485d0d2f6c680083a30969df5acf3b5443b1bc56b86c85" [label="sha256:4e96623b08fb9f937e485d0d2f6c680083a30969df5acf3b5443b1bc56b86c85" shape="plaintext"];
  "sha256:b1bf8cde1bfe7dcf60fc181ffa6c2148d59505f9073e9b3f942b723e1059e666" -> "sha256:7a749aac3479628028d81f5c711f9fd3361c551ec975dd70cd6503fd71253bba" [label=""];
  "sha256:65ebec7d2c5bc1128065db3c006ad9734fbbb48a40739ffe6aa7124bfa30cc39" -> "sha256:7a749aac3479628028d81f5c711f9fd3361c551ec975dd70cd6503fd71253bba" [label=""];
  "sha256:7a749aac3479628028d81f5c711f9fd3361c551ec975dd70cd6503fd71253bba" -> "sha256:dcb5d11aca30f509ac73ebd73824f36b0a47718dc8b1793789b2c061103a138d" [label=""];
  "sha256:65ebec7d2c5bc1128065db3c006ad9734fbbb48a40739ffe6aa7124bfa30cc39" -> "sha256:dcb5d11aca30f509ac73ebd73824f36b0a47718dc8b1793789b2c061103a138d" [label=""];
  "sha256:dcb5d11aca30f509ac73ebd73824f36b0a47718dc8b1793789b2c061103a138d" -> "sha256:c2aed4615ed90e3e853766d7cc87083db66786c61619124711aabc302e301c38" [label=""];
  "sha256:c2aed4615ed90e3e853766d7cc87083db66786c61619124711aabc302e301c38" -> "sha256:5e72ddb50c7b356b2280c764c660c46aa67bdf9b1db15ba7752b2074c2efa959" [label=""];
  "sha256:65ebec7d2c5bc1128065db3c006ad9734fbbb48a40739ffe6aa7124bfa30cc39" -> "sha256:5e72ddb50c7b356b2280c764c660c46aa67bdf9b1db15ba7752b2074c2efa959" [label=""];
  "sha256:5e72ddb50c7b356b2280c764c660c46aa67bdf9b1db15ba7752b2074c2efa959" -> "sha256:dae9079c633eeb89866d74152e34c469e5a13fceaae828015a17082ec274e9d6" [label=""];
  "sha256:dae9079c633eeb89866d74152e34c469e5a13fceaae828015a17082ec274e9d6" -> "sha256:4e96623b08fb9f937e485d0d2f6c680083a30969df5acf3b5443b1bc56b86c85" [label=""];
}

