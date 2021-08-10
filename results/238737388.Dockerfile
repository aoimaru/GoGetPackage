[app/sources/238737388.Dockerfile]
digraph {
  "sha256:3f1e1d23aa8fb479af0d7e58d9dce4cd814005da28c774112840c0a98c07bbfb" [label="docker-image://docker.io/continuumio/anaconda3:latest" shape="ellipse"];
  "sha256:56460f736e39e7c1e29943a9b556a17cf4842e4c608264e547a76f7ffbd6524a" [label="/bin/sh -c apt-get update && apt-get install -y build-essential" shape="box"];
  "sha256:bcddb50fd057dcd28354568c28088e01bb7497b882fc1de750e7990d24c517b8" [label="/bin/sh -c pip install gensim==2.2.0 scikit-learn==0.18.1 beautifulsoup4==4.5.3" shape="box"];
  "sha256:479796c169d3787f07445ab5e6b72a332bb95348bb306eb9feadfa80c8de70c9" [label="local://context" shape="ellipse"];
  "sha256:297327a6bc0363d358db949f066161171e63db3a2dfdb5f85074ac99bbfb841c" [label="copy{src=/, dest=/altair/}" shape="note"];
  "sha256:76639afdc247369e48457a415f62cef5d1ca4e6e550e42043f1cdcec19d8488f" [label="mkdir{path=/altair}" shape="note"];
  "sha256:9cad474308725a909b623c52dfd5f2995452104c62fe07aef3af379bfe72c4bb" [label="sha256:9cad474308725a909b623c52dfd5f2995452104c62fe07aef3af379bfe72c4bb" shape="plaintext"];
  "sha256:3f1e1d23aa8fb479af0d7e58d9dce4cd814005da28c774112840c0a98c07bbfb" -> "sha256:56460f736e39e7c1e29943a9b556a17cf4842e4c608264e547a76f7ffbd6524a" [label=""];
  "sha256:56460f736e39e7c1e29943a9b556a17cf4842e4c608264e547a76f7ffbd6524a" -> "sha256:bcddb50fd057dcd28354568c28088e01bb7497b882fc1de750e7990d24c517b8" [label=""];
  "sha256:bcddb50fd057dcd28354568c28088e01bb7497b882fc1de750e7990d24c517b8" -> "sha256:297327a6bc0363d358db949f066161171e63db3a2dfdb5f85074ac99bbfb841c" [label=""];
  "sha256:479796c169d3787f07445ab5e6b72a332bb95348bb306eb9feadfa80c8de70c9" -> "sha256:297327a6bc0363d358db949f066161171e63db3a2dfdb5f85074ac99bbfb841c" [label=""];
  "sha256:297327a6bc0363d358db949f066161171e63db3a2dfdb5f85074ac99bbfb841c" -> "sha256:76639afdc247369e48457a415f62cef5d1ca4e6e550e42043f1cdcec19d8488f" [label=""];
  "sha256:76639afdc247369e48457a415f62cef5d1ca4e6e550e42043f1cdcec19d8488f" -> "sha256:9cad474308725a909b623c52dfd5f2995452104c62fe07aef3af379bfe72c4bb" [label=""];
}

