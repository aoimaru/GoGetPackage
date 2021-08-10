[app/sources/252782603.Dockerfile]
digraph {
  "sha256:5e21b93eae4ec3c9713b4c4744273f6de51fa40b0131babe7941162369904937" [label="docker-image://docker.io/jenserat/samba-publicshare:latest" shape="ellipse"];
  "sha256:2484a7a5c8c7f531686b8ece7546560374718c9a6b8ea07a7234c3f77e2a5cc1" [label="local://context" shape="ellipse"];
  "sha256:044bcee2cc1d64e32d46c0815a1be5f742f088785a403f286c82fb88dcccdc11" [label="copy{src=/smb.conf, dest=/etc/samba/smb.conf}" shape="note"];
  "sha256:90d064f4c5e8fa0209e2ce2886c977736e891a9f68d45670ec9e0cb4aadf0433" [label="copy{src=/setup.sh, dest=/setup.sh}" shape="note"];
  "sha256:a26968137479863319d768c1afd36d8f2f2cb534e01edeae3f91b0d0270c6afa" [label="/bin/sh -c /setup.sh" shape="box"];
  "sha256:4b8e3abf230d7e9032dd5bd989cf920ca49d6ff51aa03531250cc8fb9eda8b66" [label="sha256:4b8e3abf230d7e9032dd5bd989cf920ca49d6ff51aa03531250cc8fb9eda8b66" shape="plaintext"];
  "sha256:5e21b93eae4ec3c9713b4c4744273f6de51fa40b0131babe7941162369904937" -> "sha256:044bcee2cc1d64e32d46c0815a1be5f742f088785a403f286c82fb88dcccdc11" [label=""];
  "sha256:2484a7a5c8c7f531686b8ece7546560374718c9a6b8ea07a7234c3f77e2a5cc1" -> "sha256:044bcee2cc1d64e32d46c0815a1be5f742f088785a403f286c82fb88dcccdc11" [label=""];
  "sha256:044bcee2cc1d64e32d46c0815a1be5f742f088785a403f286c82fb88dcccdc11" -> "sha256:90d064f4c5e8fa0209e2ce2886c977736e891a9f68d45670ec9e0cb4aadf0433" [label=""];
  "sha256:2484a7a5c8c7f531686b8ece7546560374718c9a6b8ea07a7234c3f77e2a5cc1" -> "sha256:90d064f4c5e8fa0209e2ce2886c977736e891a9f68d45670ec9e0cb4aadf0433" [label=""];
  "sha256:90d064f4c5e8fa0209e2ce2886c977736e891a9f68d45670ec9e0cb4aadf0433" -> "sha256:a26968137479863319d768c1afd36d8f2f2cb534e01edeae3f91b0d0270c6afa" [label=""];
  "sha256:a26968137479863319d768c1afd36d8f2f2cb534e01edeae3f91b0d0270c6afa" -> "sha256:4b8e3abf230d7e9032dd5bd989cf920ca49d6ff51aa03531250cc8fb9eda8b66" [label=""];
}

