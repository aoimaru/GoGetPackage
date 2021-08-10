[app/sources/325630102.Dockerfile]
digraph {
  "sha256:0e6792a1ca81477451a0d11ac23c987636c684c18975fe3aee87085538526d08" [label="local://context" shape="ellipse"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" [label="docker-image://docker.io/tiangolo/uwsgi-nginx-flask:python3.6" shape="ellipse"];
  "sha256:6c6091ab154f6fd59898971b51a511aa1c505fa1191789ae07bc395f2bb11517" [label="/bin/sh -c apt-get update && apt-get install -y redis-server python3-celery python-celery-common python3-redis" shape="box"];
  "sha256:eeab4bacfbfa65c3ddcaba32728739e5d20c3901798cf569c8612e56cc284239" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:834a8cf424b1a671aa5c6fbb17be41d6c73dbcd3c72ade15b0d9794aa343af72" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:beb69909bc2864345f3ac8833cde9408e5de9c4843cccec32f7741f7828ad44e" [label="/bin/sh -c pip3 install numpy sqlalchemy" shape="box"];
  "sha256:0b17d5e2f96f7bdc3af67d134f7f2f5cb5dfe62c6ad1f26c79fd16f05b157377" [label="/bin/sh -c pip install --upgrade --no-deps statsmodels" shape="box"];
  "sha256:6359e6d9298906fb87cc062cdb90b0c9eaa2dd79ed49bea46a9b1c2976c23667" [label="/bin/sh -c pip3 install --requirement /tmp/requirements.txt" shape="box"];
  "sha256:006d7a42463d4ff36587e33076ad430fbfb5497c66b9e138be89e111c3a22cd9" [label="/bin/sh -c pip install -U numpy" shape="box"];
  "sha256:771e5ed60afe92747b34cce9dfaf761e68df7c4ce6a065ccdc098f3a8adb3d57" [label="/bin/sh -c pip3 install pandas scipy patsy matplotlib numdifftools seaborn" shape="box"];
  "sha256:be8663d7d33ea0ca93ff349e55e6683d7495e058cf62f4b3b49a587ab4abfef1" [label="/bin/sh -c pip3 install pyflux" shape="box"];
  "sha256:56fdc7599bcb57ef19745fa7ff38bfefdf4dd8b84e09fdeb0bafdec714fe92d3" [label="/bin/sh -c pip3 install pyramid-arima" shape="box"];
  "sha256:8a04f6cd6a3369164e0be8d83af98e45816e7550740f5c1511729813e016a43a" [label="/bin/sh -c pip3 install tensorflow" shape="box"];
  "sha256:070944e6731d7e873060112fd42a242a2d707bf550062f99af9c716f6fd2bc92" [label="/bin/sh -c pip3 install -U statsmodels" shape="box"];
  "sha256:ab3a7a52930be2cc57f4b3f8e4676cff61a8e18a6f12b7c5f74e626a6322b080" [label="/bin/sh -c pip3 install celery" shape="box"];
  "sha256:2c9227beb8b7b861c5b138ad3644f6c7c37b8da64c9bb63748f6be440fb77e5e" [label="/bin/sh -c pip install redis" shape="box"];
  "sha256:fccde4341fb41172c7aca2cd508454ad5009286b07faec8db043279c16fee765" [label="/bin/sh -c service redis-server start" shape="box"];
  "sha256:56dc5cc6aadf62ce5cfb1e2eda718f9694e8ab98f1edaa49d2ac50ad4d932869" [label="copy{src=/config/timeout.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:5014b678c9b834f36b236ee130f1642ae747daaba07871e28f7b251a2b11e9de" [label="/bin/sh -c chmod -R g=u /etc/passwd /app" shape="box"];
  "sha256:5f7851eeca5fb3bb256328937e86e950a1d7331690f3e353821dd28b2b647c19" [label="sha256:5f7851eeca5fb3bb256328937e86e950a1d7331690f3e353821dd28b2b647c19" shape="plaintext"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" -> "sha256:6c6091ab154f6fd59898971b51a511aa1c505fa1191789ae07bc395f2bb11517" [label=""];
  "sha256:6c6091ab154f6fd59898971b51a511aa1c505fa1191789ae07bc395f2bb11517" -> "sha256:eeab4bacfbfa65c3ddcaba32728739e5d20c3901798cf569c8612e56cc284239" [label=""];
  "sha256:0e6792a1ca81477451a0d11ac23c987636c684c18975fe3aee87085538526d08" -> "sha256:eeab4bacfbfa65c3ddcaba32728739e5d20c3901798cf569c8612e56cc284239" [label=""];
  "sha256:eeab4bacfbfa65c3ddcaba32728739e5d20c3901798cf569c8612e56cc284239" -> "sha256:834a8cf424b1a671aa5c6fbb17be41d6c73dbcd3c72ade15b0d9794aa343af72" [label=""];
  "sha256:0e6792a1ca81477451a0d11ac23c987636c684c18975fe3aee87085538526d08" -> "sha256:834a8cf424b1a671aa5c6fbb17be41d6c73dbcd3c72ade15b0d9794aa343af72" [label=""];
  "sha256:834a8cf424b1a671aa5c6fbb17be41d6c73dbcd3c72ade15b0d9794aa343af72" -> "sha256:beb69909bc2864345f3ac8833cde9408e5de9c4843cccec32f7741f7828ad44e" [label=""];
  "sha256:beb69909bc2864345f3ac8833cde9408e5de9c4843cccec32f7741f7828ad44e" -> "sha256:0b17d5e2f96f7bdc3af67d134f7f2f5cb5dfe62c6ad1f26c79fd16f05b157377" [label=""];
  "sha256:0b17d5e2f96f7bdc3af67d134f7f2f5cb5dfe62c6ad1f26c79fd16f05b157377" -> "sha256:6359e6d9298906fb87cc062cdb90b0c9eaa2dd79ed49bea46a9b1c2976c23667" [label=""];
  "sha256:6359e6d9298906fb87cc062cdb90b0c9eaa2dd79ed49bea46a9b1c2976c23667" -> "sha256:006d7a42463d4ff36587e33076ad430fbfb5497c66b9e138be89e111c3a22cd9" [label=""];
  "sha256:006d7a42463d4ff36587e33076ad430fbfb5497c66b9e138be89e111c3a22cd9" -> "sha256:771e5ed60afe92747b34cce9dfaf761e68df7c4ce6a065ccdc098f3a8adb3d57" [label=""];
  "sha256:771e5ed60afe92747b34cce9dfaf761e68df7c4ce6a065ccdc098f3a8adb3d57" -> "sha256:be8663d7d33ea0ca93ff349e55e6683d7495e058cf62f4b3b49a587ab4abfef1" [label=""];
  "sha256:be8663d7d33ea0ca93ff349e55e6683d7495e058cf62f4b3b49a587ab4abfef1" -> "sha256:56fdc7599bcb57ef19745fa7ff38bfefdf4dd8b84e09fdeb0bafdec714fe92d3" [label=""];
  "sha256:56fdc7599bcb57ef19745fa7ff38bfefdf4dd8b84e09fdeb0bafdec714fe92d3" -> "sha256:8a04f6cd6a3369164e0be8d83af98e45816e7550740f5c1511729813e016a43a" [label=""];
  "sha256:8a04f6cd6a3369164e0be8d83af98e45816e7550740f5c1511729813e016a43a" -> "sha256:070944e6731d7e873060112fd42a242a2d707bf550062f99af9c716f6fd2bc92" [label=""];
  "sha256:070944e6731d7e873060112fd42a242a2d707bf550062f99af9c716f6fd2bc92" -> "sha256:ab3a7a52930be2cc57f4b3f8e4676cff61a8e18a6f12b7c5f74e626a6322b080" [label=""];
  "sha256:ab3a7a52930be2cc57f4b3f8e4676cff61a8e18a6f12b7c5f74e626a6322b080" -> "sha256:2c9227beb8b7b861c5b138ad3644f6c7c37b8da64c9bb63748f6be440fb77e5e" [label=""];
  "sha256:2c9227beb8b7b861c5b138ad3644f6c7c37b8da64c9bb63748f6be440fb77e5e" -> "sha256:fccde4341fb41172c7aca2cd508454ad5009286b07faec8db043279c16fee765" [label=""];
  "sha256:fccde4341fb41172c7aca2cd508454ad5009286b07faec8db043279c16fee765" -> "sha256:56dc5cc6aadf62ce5cfb1e2eda718f9694e8ab98f1edaa49d2ac50ad4d932869" [label=""];
  "sha256:0e6792a1ca81477451a0d11ac23c987636c684c18975fe3aee87085538526d08" -> "sha256:56dc5cc6aadf62ce5cfb1e2eda718f9694e8ab98f1edaa49d2ac50ad4d932869" [label=""];
  "sha256:56dc5cc6aadf62ce5cfb1e2eda718f9694e8ab98f1edaa49d2ac50ad4d932869" -> "sha256:5014b678c9b834f36b236ee130f1642ae747daaba07871e28f7b251a2b11e9de" [label=""];
  "sha256:5014b678c9b834f36b236ee130f1642ae747daaba07871e28f7b251a2b11e9de" -> "sha256:5f7851eeca5fb3bb256328937e86e950a1d7331690f3e353821dd28b2b647c19" [label=""];
}

