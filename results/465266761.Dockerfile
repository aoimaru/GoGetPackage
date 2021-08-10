[app/sources/465266761.Dockerfile]
digraph {
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" [label="docker-image://docker.io/library/python:3.7" shape="ellipse"];
  "sha256:47bed59297e48449199f7f360354bf091011b78a1d6cd4bc051a309f95a9c0c4" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:db99856154c4c5f280bff32c802574c5e48cbc7b875ab24240f25aed60e98b0b" [label="/bin/sh -c apt-get install -y htop" shape="box"];
  "sha256:281def6491f52a4beb063e2a2277a1667f193b4f5a9bb3564511aee25bbb582d" [label="mkdir{path=/app}" shape="note"];
  "sha256:1cfbe90c297fb2716c27ad0bf184e433bbbcf4971f131ec22980d40a73aaa61b" [label="local://context" shape="ellipse"];
  "sha256:44a85a812a195811fb29c75e7219d1ac4d4b152a6a4dd4b15344f6b891017778" [label="copy{src=/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:9cd56463219b7adcbc78514668bfb4439ddcf7de5d642d17f9ef419c30b9f65a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:9559dd1755f991ea2378bc09a3f2b7d7fa037a3be640e03eca8519d10e3fdefe" [label="/bin/sh -c mkdir -p ~/.config/matplotlib/" shape="box"];
  "sha256:adbbc0bf7992f65369290dd63f4f3526dc2b4549704199a6ee7c89de9cc7cc0a" [label="/bin/sh -c echo \"backend: Agg\" > ~/.config/matplotlib/matplotlibrc" shape="box"];
  "sha256:868a2aa69df28e2ba8d3bcde93e9e3272ec893b3100dd357941ca4b8ffdab2bd" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:b36d9b8eea576d9389105fc78fc18d912bd6fd49d966f1a53714b05edc12f5ca" [label="sha256:b36d9b8eea576d9389105fc78fc18d912bd6fd49d966f1a53714b05edc12f5ca" shape="plaintext"];
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" -> "sha256:47bed59297e48449199f7f360354bf091011b78a1d6cd4bc051a309f95a9c0c4" [label=""];
  "sha256:47bed59297e48449199f7f360354bf091011b78a1d6cd4bc051a309f95a9c0c4" -> "sha256:db99856154c4c5f280bff32c802574c5e48cbc7b875ab24240f25aed60e98b0b" [label=""];
  "sha256:db99856154c4c5f280bff32c802574c5e48cbc7b875ab24240f25aed60e98b0b" -> "sha256:281def6491f52a4beb063e2a2277a1667f193b4f5a9bb3564511aee25bbb582d" [label=""];
  "sha256:281def6491f52a4beb063e2a2277a1667f193b4f5a9bb3564511aee25bbb582d" -> "sha256:44a85a812a195811fb29c75e7219d1ac4d4b152a6a4dd4b15344f6b891017778" [label=""];
  "sha256:1cfbe90c297fb2716c27ad0bf184e433bbbcf4971f131ec22980d40a73aaa61b" -> "sha256:44a85a812a195811fb29c75e7219d1ac4d4b152a6a4dd4b15344f6b891017778" [label=""];
  "sha256:44a85a812a195811fb29c75e7219d1ac4d4b152a6a4dd4b15344f6b891017778" -> "sha256:9cd56463219b7adcbc78514668bfb4439ddcf7de5d642d17f9ef419c30b9f65a" [label=""];
  "sha256:9cd56463219b7adcbc78514668bfb4439ddcf7de5d642d17f9ef419c30b9f65a" -> "sha256:9559dd1755f991ea2378bc09a3f2b7d7fa037a3be640e03eca8519d10e3fdefe" [label=""];
  "sha256:9559dd1755f991ea2378bc09a3f2b7d7fa037a3be640e03eca8519d10e3fdefe" -> "sha256:adbbc0bf7992f65369290dd63f4f3526dc2b4549704199a6ee7c89de9cc7cc0a" [label=""];
  "sha256:adbbc0bf7992f65369290dd63f4f3526dc2b4549704199a6ee7c89de9cc7cc0a" -> "sha256:868a2aa69df28e2ba8d3bcde93e9e3272ec893b3100dd357941ca4b8ffdab2bd" [label=""];
  "sha256:1cfbe90c297fb2716c27ad0bf184e433bbbcf4971f131ec22980d40a73aaa61b" -> "sha256:868a2aa69df28e2ba8d3bcde93e9e3272ec893b3100dd357941ca4b8ffdab2bd" [label=""];
  "sha256:868a2aa69df28e2ba8d3bcde93e9e3272ec893b3100dd357941ca4b8ffdab2bd" -> "sha256:b36d9b8eea576d9389105fc78fc18d912bd6fd49d966f1a53714b05edc12f5ca" [label=""];
}

