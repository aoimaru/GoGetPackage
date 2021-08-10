[app/sources/241264493.Dockerfile]
digraph {
  "sha256:be096258ec15cd754b9e95238e7a3e9a9281faf99f25b31537fbf0aaaf2f37c8" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:9ad13a81d9d2f45611225f6916b4f2b71aaef8717351191b5bc8ce254043c60f" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:7b52518003d8659dd38ace4f9f30e2792001ad26fddc5abfafa7fc90cdd5298e" [label="mkdir{path=/code}" shape="note"];
  "sha256:1bee277fd4b0b01950118321cd3bad17a412fbe16dc9e8016bddbb2082122444" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:0621d1b88d84ea90999d9f4742f888da32d8d0c492f2c92171ec0fc80af48e9b" [label="/bin/sh -c pip3 install -r /code/dev-requirements.txt" shape="box"];
  "sha256:4b5dbeebf53dc0eef11bdd15ea4ac598debf095af4118f6dc2964be4ad7daff6" [label="/bin/sh -c pip3 install -e ." shape="box"];
  "sha256:b7edeeec1f33c75fd9fd20e834064c34681964b8050c7f6bbd6dd59652d21e4a" [label="sha256:b7edeeec1f33c75fd9fd20e834064c34681964b8050c7f6bbd6dd59652d21e4a" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:9ad13a81d9d2f45611225f6916b4f2b71aaef8717351191b5bc8ce254043c60f" [label=""];
  "sha256:be096258ec15cd754b9e95238e7a3e9a9281faf99f25b31537fbf0aaaf2f37c8" -> "sha256:9ad13a81d9d2f45611225f6916b4f2b71aaef8717351191b5bc8ce254043c60f" [label=""];
  "sha256:9ad13a81d9d2f45611225f6916b4f2b71aaef8717351191b5bc8ce254043c60f" -> "sha256:7b52518003d8659dd38ace4f9f30e2792001ad26fddc5abfafa7fc90cdd5298e" [label=""];
  "sha256:7b52518003d8659dd38ace4f9f30e2792001ad26fddc5abfafa7fc90cdd5298e" -> "sha256:1bee277fd4b0b01950118321cd3bad17a412fbe16dc9e8016bddbb2082122444" [label=""];
  "sha256:1bee277fd4b0b01950118321cd3bad17a412fbe16dc9e8016bddbb2082122444" -> "sha256:0621d1b88d84ea90999d9f4742f888da32d8d0c492f2c92171ec0fc80af48e9b" [label=""];
  "sha256:0621d1b88d84ea90999d9f4742f888da32d8d0c492f2c92171ec0fc80af48e9b" -> "sha256:4b5dbeebf53dc0eef11bdd15ea4ac598debf095af4118f6dc2964be4ad7daff6" [label=""];
  "sha256:4b5dbeebf53dc0eef11bdd15ea4ac598debf095af4118f6dc2964be4ad7daff6" -> "sha256:b7edeeec1f33c75fd9fd20e834064c34681964b8050c7f6bbd6dd59652d21e4a" [label=""];
}

