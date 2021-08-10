[app/sources/297571745.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:99512d99f6b54fba6cbcbeffdcac53521ba14568f1c59793a0a6887c8f12d3d6" [label="local://context" shape="ellipse"];
  "sha256:148944d4e23ddbf480b909783382e46729c610dd7d25e6ada3fb833793f4bb1e" [label="copy{src=/trim_galore.pl, dest=/usr/bin/trim_galore}" shape="note"];
  "sha256:359a6881a07fb7d6cc02e147e8e1b934c46245358104889bef678e554d6ebcaa" [label="/bin/sh -c apk add --update python py-pip perl gcc python-dev musl-dev       && chmod +x /usr/bin/trim_galore       && pip install --upgrade cutadapt==${CUTADAPT_VERSION}       && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:5fc4dd1d7d9bf3a8ef13a6a5caaf46871b9772962875e710b5d3de40001f2e0c" [label="sha256:5fc4dd1d7d9bf3a8ef13a6a5caaf46871b9772962875e710b5d3de40001f2e0c" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:148944d4e23ddbf480b909783382e46729c610dd7d25e6ada3fb833793f4bb1e" [label=""];
  "sha256:99512d99f6b54fba6cbcbeffdcac53521ba14568f1c59793a0a6887c8f12d3d6" -> "sha256:148944d4e23ddbf480b909783382e46729c610dd7d25e6ada3fb833793f4bb1e" [label=""];
  "sha256:148944d4e23ddbf480b909783382e46729c610dd7d25e6ada3fb833793f4bb1e" -> "sha256:359a6881a07fb7d6cc02e147e8e1b934c46245358104889bef678e554d6ebcaa" [label=""];
  "sha256:359a6881a07fb7d6cc02e147e8e1b934c46245358104889bef678e554d6ebcaa" -> "sha256:5fc4dd1d7d9bf3a8ef13a6a5caaf46871b9772962875e710b5d3de40001f2e0c" [label=""];
}

