[app/sources/333766206.Dockerfile]
digraph {
  "sha256:df15bd0ec9cac315e6c56f30acb4c2984a86729939e6bc5090d405ee9983fdd0" [label="docker-image://docker.io/library/tensorflow-base:1.7.0-gpu-py2" shape="ellipse"];
  "sha256:9b5fa0d35204d9d8412059d8e98cdaccdfd1baa84d2c1713da31aee6e3db136c" [label="mkdir{path=/root}" shape="note"];
  "sha256:fb2fd85e69f69b2dce67a6241835bfdf867d404de75e597277861bc8f7873433" [label="local://context" shape="ellipse"];
  "sha256:76de96e80dfc5caba1da6aefc648ad9648bca9132700dfd4714fec3d44a913f3" [label="copy{src=/, dest=/root/}" shape="note"];
  "sha256:182bd7b84bbd94286e453d9ec353aa8931fca6251196664c4b2b18879053b163" [label="copy{src=/sagemaker_tensorflow_container-1.0.0.tar.gz, dest=/root/}" shape="note"];
  "sha256:b65b58ed12be7fdb18f75ad00364bd4f471e9ff61ee69f230abda8bcfe0feffa" [label="/bin/sh -c framework_installable_local=$(basename $framework_installable) &&     framework_support_installable_local=$(basename $framework_support_installable) &&         pip install --no-cache --upgrade $framework_installable_local &&     pip install $framework_support_installable_local &&     pip install \"sagemaker-tensorflow>=1.7,<1.8\" &&        rm $framework_installable_local &&     rm $framework_support_installable_local" shape="box"];
  "sha256:289a6dcdc873f1d486246dbe1be79c275674da53aa4db12b34d66a33ca860d03" [label="sha256:289a6dcdc873f1d486246dbe1be79c275674da53aa4db12b34d66a33ca860d03" shape="plaintext"];
  "sha256:df15bd0ec9cac315e6c56f30acb4c2984a86729939e6bc5090d405ee9983fdd0" -> "sha256:9b5fa0d35204d9d8412059d8e98cdaccdfd1baa84d2c1713da31aee6e3db136c" [label=""];
  "sha256:9b5fa0d35204d9d8412059d8e98cdaccdfd1baa84d2c1713da31aee6e3db136c" -> "sha256:76de96e80dfc5caba1da6aefc648ad9648bca9132700dfd4714fec3d44a913f3" [label=""];
  "sha256:fb2fd85e69f69b2dce67a6241835bfdf867d404de75e597277861bc8f7873433" -> "sha256:76de96e80dfc5caba1da6aefc648ad9648bca9132700dfd4714fec3d44a913f3" [label=""];
  "sha256:76de96e80dfc5caba1da6aefc648ad9648bca9132700dfd4714fec3d44a913f3" -> "sha256:182bd7b84bbd94286e453d9ec353aa8931fca6251196664c4b2b18879053b163" [label=""];
  "sha256:fb2fd85e69f69b2dce67a6241835bfdf867d404de75e597277861bc8f7873433" -> "sha256:182bd7b84bbd94286e453d9ec353aa8931fca6251196664c4b2b18879053b163" [label=""];
  "sha256:182bd7b84bbd94286e453d9ec353aa8931fca6251196664c4b2b18879053b163" -> "sha256:b65b58ed12be7fdb18f75ad00364bd4f471e9ff61ee69f230abda8bcfe0feffa" [label=""];
  "sha256:b65b58ed12be7fdb18f75ad00364bd4f471e9ff61ee69f230abda8bcfe0feffa" -> "sha256:289a6dcdc873f1d486246dbe1be79c275674da53aa4db12b34d66a33ca860d03" [label=""];
}

