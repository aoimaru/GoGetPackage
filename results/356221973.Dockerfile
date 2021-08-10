[app/sources/356221973.Dockerfile]
digraph {
  "sha256:ab23b4a54ae0fdee72f048a71d38ed75531836a3bcb01caaa33bf0d233090ff2" [label="docker-image://docker.io/conda/miniconda3:latest" shape="ellipse"];
  "sha256:77ebd85daf9781b8fbb704469c98dca651f42057ef6d31037b9b5c396033e700" [label="/bin/sh -c apt update && apt-get install -qq -y git wget zlib1g-dev g++ && apt clean" shape="box"];
  "sha256:474ecc27e0533cfc0b690b7480eeeaa58860b6b06a5fb19ee21e0619498cbcf9" [label="local://context" shape="ellipse"];
  "sha256:cc07569124fd6e8fa441e12b71f09cb7040846419b26ca071036c5600fc9c4a2" [label="copy{src=/environment.yml, dest=/}" shape="note"];
  "sha256:8cd909e540f3f72dfedec00a8932a757c01db838608950a69cacec9b093fa1ad" [label="/bin/sh -c conda env update -n base -f /environment.yml" shape="box"];
  "sha256:71b316ab79231db5ae353ca770fc04fb75179ab7a0bb3afebafec798c0d23321" [label="/bin/sh -c conda env list" shape="box"];
  "sha256:127265ac076a59a743ae487d10a9b6bc59425359bc0c438a3944fa4036b794db" [label="/bin/sh -c git clone https://github.com/EI-CoreBioinformatics/mikado.git /usr/local/src/mikado" shape="box"];
  "sha256:8dd65692cd6ef69ad67ba223af5dc430fbefe76c910e32c7d3d0caa726d436b2" [label="mkdir{path=/usr/local/src/mikado}" shape="note"];
  "sha256:12a239db3b3cd2171a8d45de0f148ad8b9b056e63172b095d1623a76893642a0" [label="/bin/sh -c python setup.py bdist_wheel && pip install dist/*whl" shape="box"];
  "sha256:cab78e7868649831bcd6d8da37fb324da42160be43aa74646fb7a5c712f4027a" [label="/bin/sh -c echo -e \"#!/bin/bash\\ncd /usr/local/src/mikado;\\ngit log | head -n1 | cut -f 2 -d ' '\" > /usr/local/bin/show_commit_hash && chmod 775 /usr/local/bin/show_commit_hash" shape="box"];
  "sha256:c57b99bb8429ff9a463f353f100fe6ad2a2bd41077aab6bd36193a7ec4828531" [label="sha256:c57b99bb8429ff9a463f353f100fe6ad2a2bd41077aab6bd36193a7ec4828531" shape="plaintext"];
  "sha256:ab23b4a54ae0fdee72f048a71d38ed75531836a3bcb01caaa33bf0d233090ff2" -> "sha256:77ebd85daf9781b8fbb704469c98dca651f42057ef6d31037b9b5c396033e700" [label=""];
  "sha256:77ebd85daf9781b8fbb704469c98dca651f42057ef6d31037b9b5c396033e700" -> "sha256:cc07569124fd6e8fa441e12b71f09cb7040846419b26ca071036c5600fc9c4a2" [label=""];
  "sha256:474ecc27e0533cfc0b690b7480eeeaa58860b6b06a5fb19ee21e0619498cbcf9" -> "sha256:cc07569124fd6e8fa441e12b71f09cb7040846419b26ca071036c5600fc9c4a2" [label=""];
  "sha256:cc07569124fd6e8fa441e12b71f09cb7040846419b26ca071036c5600fc9c4a2" -> "sha256:8cd909e540f3f72dfedec00a8932a757c01db838608950a69cacec9b093fa1ad" [label=""];
  "sha256:8cd909e540f3f72dfedec00a8932a757c01db838608950a69cacec9b093fa1ad" -> "sha256:71b316ab79231db5ae353ca770fc04fb75179ab7a0bb3afebafec798c0d23321" [label=""];
  "sha256:71b316ab79231db5ae353ca770fc04fb75179ab7a0bb3afebafec798c0d23321" -> "sha256:127265ac076a59a743ae487d10a9b6bc59425359bc0c438a3944fa4036b794db" [label=""];
  "sha256:127265ac076a59a743ae487d10a9b6bc59425359bc0c438a3944fa4036b794db" -> "sha256:8dd65692cd6ef69ad67ba223af5dc430fbefe76c910e32c7d3d0caa726d436b2" [label=""];
  "sha256:8dd65692cd6ef69ad67ba223af5dc430fbefe76c910e32c7d3d0caa726d436b2" -> "sha256:12a239db3b3cd2171a8d45de0f148ad8b9b056e63172b095d1623a76893642a0" [label=""];
  "sha256:12a239db3b3cd2171a8d45de0f148ad8b9b056e63172b095d1623a76893642a0" -> "sha256:cab78e7868649831bcd6d8da37fb324da42160be43aa74646fb7a5c712f4027a" [label=""];
  "sha256:cab78e7868649831bcd6d8da37fb324da42160be43aa74646fb7a5c712f4027a" -> "sha256:c57b99bb8429ff9a463f353f100fe6ad2a2bd41077aab6bd36193a7ec4828531" [label=""];
}

