[app/sources/291873650.Dockerfile]
digraph {
  "sha256:f97cd798b8954ebc0de19ef6f1286cfc6e0739d96e693182287d6130697630f5" [label="docker-image://docker.io/blacklabelops/cronium:latest" shape="ellipse"];
  "sha256:c158bfccb734acdfc2f7f080e489981cf2dc72197c23308879130d55d4bd9c7d" [label="/bin/sh -c apk add --update       gpgme       wget       unzip       py-pip &&     pip install --upgrade pip &&     mkdir -p /opt/gcloud &&     wget --no-check-certificate --directory-prefix=/tmp/ https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.zip &&     unzip /tmp/google-cloud-sdk.zip -d /opt/ &&     /opt/google-cloud-sdk/install.sh --usage-reporting=true --path-update=true --bash-completion=true --rc-path=/opt/gcloud/.bashrc --disable-installation-options &&     gcloud --quiet components update alpha beta app-engine-python kubectl bq core gsutil gcloud &&     apk del       wget       unzip       py-pip &&     rm -rf /var/cache/apk/* && rm -rf /tmp/* && rm -rf /var/log/*" shape="box"];
  "sha256:32af06d1eed5e061fd716add2ae218b2b5f159698916af79ab3563502f1c3b7f" [label="local://context" shape="ellipse"];
  "sha256:613bcee546e1ecba59987e9804ec87b8157384fbd36ff1c77dd96198bc000ef1" [label="copy{src=/imagescripts, dest=/opt/cloud}" shape="note"];
  "sha256:1f82d1d48d5da189d900c191905ec522279412e8b7c04d86744dbaf94f3269b5" [label="sha256:1f82d1d48d5da189d900c191905ec522279412e8b7c04d86744dbaf94f3269b5" shape="plaintext"];
  "sha256:f97cd798b8954ebc0de19ef6f1286cfc6e0739d96e693182287d6130697630f5" -> "sha256:c158bfccb734acdfc2f7f080e489981cf2dc72197c23308879130d55d4bd9c7d" [label=""];
  "sha256:c158bfccb734acdfc2f7f080e489981cf2dc72197c23308879130d55d4bd9c7d" -> "sha256:613bcee546e1ecba59987e9804ec87b8157384fbd36ff1c77dd96198bc000ef1" [label=""];
  "sha256:32af06d1eed5e061fd716add2ae218b2b5f159698916af79ab3563502f1c3b7f" -> "sha256:613bcee546e1ecba59987e9804ec87b8157384fbd36ff1c77dd96198bc000ef1" [label=""];
  "sha256:613bcee546e1ecba59987e9804ec87b8157384fbd36ff1c77dd96198bc000ef1" -> "sha256:1f82d1d48d5da189d900c191905ec522279412e8b7c04d86744dbaf94f3269b5" [label=""];
}

