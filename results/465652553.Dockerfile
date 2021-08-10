[app/sources/465652553.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:9b11deed7e4e7b1dffd8abddb68c0a3fc3a5acf1a00a543ff0cfbbb4801ad082" [label="/bin/sh -c apt-get update && apt-get install -y     curl     git     python3     python3-pip     portaudio19-dev     libsm6 libxext6 libxrender-dev" shape="box"];
  "sha256:8cac1a0deda38324ab0277d8301b7dd94ecbfd3feacbd135abc089a6c5dd95b9" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:9e8612aefa02d4ba87b3306102ff2e7e8ffdc4f7dbf04fc24d5327a5262da7db" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:071d5a40f7be730a1c4b803f4b2309314ef0f0ddc17f2f10503094f4c685d6bc" [label="local://context" shape="ellipse"];
  "sha256:8938024fe4d8b2e196a000941f5cbd9b4655996aeb0fdd10a3f97e511d1bc400" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:33f7e56595ba8704807c16b6fefc0993f5094bac579656ca99f37f6d52dead4b" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:57b1bc9e1299a312faa993400b6b66ed848ccfacc7918a0f89c2cfd46969ccfe" [label="/bin/sh -c pip3 install tornado==5.1.1" shape="box"];
  "sha256:07361598e0f59d67c9428bf9376564b9f32c885efa6b5984a19505378891d24c" [label="/bin/sh -c npm install -g configurable-http-proxy" shape="box"];
  "sha256:dddffdb05a3189e301cb1be808cc5fbb72cbba10b8b55227c2bf812a78549b6a" [label="mkdir{path=/app}" shape="note"];
  "sha256:5554047cb923475398e0b64701965a07fec3a81bafac609d841320366bb5f2c4" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:01bbaad38fa1234a5ab2a9a9b8ab0722a52d8f5d9820eb9b420c1d9e8e4cc7d2" [label="sha256:01bbaad38fa1234a5ab2a9a9b8ab0722a52d8f5d9820eb9b420c1d9e8e4cc7d2" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:9b11deed7e4e7b1dffd8abddb68c0a3fc3a5acf1a00a543ff0cfbbb4801ad082" [label=""];
  "sha256:9b11deed7e4e7b1dffd8abddb68c0a3fc3a5acf1a00a543ff0cfbbb4801ad082" -> "sha256:8cac1a0deda38324ab0277d8301b7dd94ecbfd3feacbd135abc089a6c5dd95b9" [label=""];
  "sha256:8cac1a0deda38324ab0277d8301b7dd94ecbfd3feacbd135abc089a6c5dd95b9" -> "sha256:9e8612aefa02d4ba87b3306102ff2e7e8ffdc4f7dbf04fc24d5327a5262da7db" [label=""];
  "sha256:9e8612aefa02d4ba87b3306102ff2e7e8ffdc4f7dbf04fc24d5327a5262da7db" -> "sha256:8938024fe4d8b2e196a000941f5cbd9b4655996aeb0fdd10a3f97e511d1bc400" [label=""];
  "sha256:071d5a40f7be730a1c4b803f4b2309314ef0f0ddc17f2f10503094f4c685d6bc" -> "sha256:8938024fe4d8b2e196a000941f5cbd9b4655996aeb0fdd10a3f97e511d1bc400" [label=""];
  "sha256:8938024fe4d8b2e196a000941f5cbd9b4655996aeb0fdd10a3f97e511d1bc400" -> "sha256:33f7e56595ba8704807c16b6fefc0993f5094bac579656ca99f37f6d52dead4b" [label=""];
  "sha256:33f7e56595ba8704807c16b6fefc0993f5094bac579656ca99f37f6d52dead4b" -> "sha256:57b1bc9e1299a312faa993400b6b66ed848ccfacc7918a0f89c2cfd46969ccfe" [label=""];
  "sha256:57b1bc9e1299a312faa993400b6b66ed848ccfacc7918a0f89c2cfd46969ccfe" -> "sha256:07361598e0f59d67c9428bf9376564b9f32c885efa6b5984a19505378891d24c" [label=""];
  "sha256:07361598e0f59d67c9428bf9376564b9f32c885efa6b5984a19505378891d24c" -> "sha256:dddffdb05a3189e301cb1be808cc5fbb72cbba10b8b55227c2bf812a78549b6a" [label=""];
  "sha256:dddffdb05a3189e301cb1be808cc5fbb72cbba10b8b55227c2bf812a78549b6a" -> "sha256:5554047cb923475398e0b64701965a07fec3a81bafac609d841320366bb5f2c4" [label=""];
  "sha256:071d5a40f7be730a1c4b803f4b2309314ef0f0ddc17f2f10503094f4c685d6bc" -> "sha256:5554047cb923475398e0b64701965a07fec3a81bafac609d841320366bb5f2c4" [label=""];
  "sha256:5554047cb923475398e0b64701965a07fec3a81bafac609d841320366bb5f2c4" -> "sha256:01bbaad38fa1234a5ab2a9a9b8ab0722a52d8f5d9820eb9b420c1d9e8e4cc7d2" [label=""];
}

