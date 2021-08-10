[app/sources/250134507.Dockerfile]
digraph {
  "sha256:d71b0c7aef9e01c2ea9879a2e05a83ddd72ee6e5c69aa409ee1625256a0e967c" [label="docker-image://docker.io/library/python:3.6.6" shape="ellipse"];
  "sha256:3a54be33ca32a667c1a7da393a8e5ea9a0b32a96ae7d415fc0495aec72737084" [label="/bin/sh -c set -ex && pip install pip pipenv --upgrade" shape="box"];
  "sha256:a5f0e4fb8918ca9fda2d4fc128c4cec492f6b7b1486425e2eb8df4174bc8b659" [label="/bin/sh -c apt-get update   && apt-get install -yqq libenchant-dev" shape="box"];
  "sha256:f31794a65a016c9511e8af1fb13ca0d9d20f6b7f5ee3d9859162c3cf53261abc" [label="local://context" shape="ellipse"];
  "sha256:8ad5b8d19cb6fdacead59cf292a953a88c8d280381c55238c90237e542957b6a" [label="copy{src=/Pipfile, dest=/Pipfile}" shape="note"];
  "sha256:869cd808b073d598fb2f7d2dd81da9dfdde98c83324c8456d9a707831f245de7" [label="copy{src=/Pipfile.lock, dest=/Pipfile.lock}" shape="note"];
  "sha256:4c0efc47264a33eab1c8b3a9cba54d3a1b7151532b36031872ef151db3488254" [label="/bin/sh -c set -ex && pipenv install --system --deploy --dev" shape="box"];
  "sha256:e36c156f891b3d3eb155d57f0659455e62ceb9fd7cc57d93a2d3ccf2e6560355" [label="copy{src=/setup.py, dest=/app/},copy{src=/README.rst, dest=/app/}" shape="note"];
  "sha256:1cab359fe7154dc3defdbfa6133d4c886e20f8c7ce502c030137053dfe336292" [label="copy{src=/eemeter, dest=/app/eemeter/}" shape="note"];
  "sha256:522fdf3237d7b92cc8eed57936ee958ec4f666ee8aa28658756f738115952496" [label="/bin/sh -c set -ex && pip install -e /app" shape="box"];
  "sha256:7a68dadc81d25fcbf1b79fcba8fd3a2e21212d0a56f7f6f3fc9e80cd7149f3c8" [label="/bin/sh -c set -ex && cd /usr/local/lib/ && python /app/setup.py develop" shape="box"];
  "sha256:451bcb03ac6069dcc7f61bac544e1e21c3721eed06e92402533c49307eab290c" [label="mkdir{path=/app}" shape="note"];
  "sha256:21f360f3f0711d7b7355fbeaadc36319d8b5b3267fc6f1ffb5c2291f04ca5408" [label="sha256:21f360f3f0711d7b7355fbeaadc36319d8b5b3267fc6f1ffb5c2291f04ca5408" shape="plaintext"];
  "sha256:d71b0c7aef9e01c2ea9879a2e05a83ddd72ee6e5c69aa409ee1625256a0e967c" -> "sha256:3a54be33ca32a667c1a7da393a8e5ea9a0b32a96ae7d415fc0495aec72737084" [label=""];
  "sha256:3a54be33ca32a667c1a7da393a8e5ea9a0b32a96ae7d415fc0495aec72737084" -> "sha256:a5f0e4fb8918ca9fda2d4fc128c4cec492f6b7b1486425e2eb8df4174bc8b659" [label=""];
  "sha256:a5f0e4fb8918ca9fda2d4fc128c4cec492f6b7b1486425e2eb8df4174bc8b659" -> "sha256:8ad5b8d19cb6fdacead59cf292a953a88c8d280381c55238c90237e542957b6a" [label=""];
  "sha256:f31794a65a016c9511e8af1fb13ca0d9d20f6b7f5ee3d9859162c3cf53261abc" -> "sha256:8ad5b8d19cb6fdacead59cf292a953a88c8d280381c55238c90237e542957b6a" [label=""];
  "sha256:8ad5b8d19cb6fdacead59cf292a953a88c8d280381c55238c90237e542957b6a" -> "sha256:869cd808b073d598fb2f7d2dd81da9dfdde98c83324c8456d9a707831f245de7" [label=""];
  "sha256:f31794a65a016c9511e8af1fb13ca0d9d20f6b7f5ee3d9859162c3cf53261abc" -> "sha256:869cd808b073d598fb2f7d2dd81da9dfdde98c83324c8456d9a707831f245de7" [label=""];
  "sha256:869cd808b073d598fb2f7d2dd81da9dfdde98c83324c8456d9a707831f245de7" -> "sha256:4c0efc47264a33eab1c8b3a9cba54d3a1b7151532b36031872ef151db3488254" [label=""];
  "sha256:4c0efc47264a33eab1c8b3a9cba54d3a1b7151532b36031872ef151db3488254" -> "sha256:e36c156f891b3d3eb155d57f0659455e62ceb9fd7cc57d93a2d3ccf2e6560355" [label=""];
  "sha256:f31794a65a016c9511e8af1fb13ca0d9d20f6b7f5ee3d9859162c3cf53261abc" -> "sha256:e36c156f891b3d3eb155d57f0659455e62ceb9fd7cc57d93a2d3ccf2e6560355" [label=""];
  "sha256:e36c156f891b3d3eb155d57f0659455e62ceb9fd7cc57d93a2d3ccf2e6560355" -> "sha256:1cab359fe7154dc3defdbfa6133d4c886e20f8c7ce502c030137053dfe336292" [label=""];
  "sha256:f31794a65a016c9511e8af1fb13ca0d9d20f6b7f5ee3d9859162c3cf53261abc" -> "sha256:1cab359fe7154dc3defdbfa6133d4c886e20f8c7ce502c030137053dfe336292" [label=""];
  "sha256:1cab359fe7154dc3defdbfa6133d4c886e20f8c7ce502c030137053dfe336292" -> "sha256:522fdf3237d7b92cc8eed57936ee958ec4f666ee8aa28658756f738115952496" [label=""];
  "sha256:522fdf3237d7b92cc8eed57936ee958ec4f666ee8aa28658756f738115952496" -> "sha256:7a68dadc81d25fcbf1b79fcba8fd3a2e21212d0a56f7f6f3fc9e80cd7149f3c8" [label=""];
  "sha256:7a68dadc81d25fcbf1b79fcba8fd3a2e21212d0a56f7f6f3fc9e80cd7149f3c8" -> "sha256:451bcb03ac6069dcc7f61bac544e1e21c3721eed06e92402533c49307eab290c" [label=""];
  "sha256:451bcb03ac6069dcc7f61bac544e1e21c3721eed06e92402533c49307eab290c" -> "sha256:21f360f3f0711d7b7355fbeaadc36319d8b5b3267fc6f1ffb5c2291f04ca5408" [label=""];
}

