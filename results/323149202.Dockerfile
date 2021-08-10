[app/sources/323149202.Dockerfile]
digraph {
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" [label="docker-image://docker.io/continuumio/miniconda3:latest" shape="ellipse"];
  "sha256:f5d822ac9cfbe7995ea3d96a0f45225fdfc5a4d33c810e9b308ce690eed3a3b1" [label="/bin/sh -c mkdir $PROJECT_DIR" shape="box"];
  "sha256:5b8d8c9943d4d4e237f7ae5514a7942819f79210f12b7f13b7c50032e76e6132" [label="/bin/sh -c conda install -y -c conda-forge spacy==2.0.12" shape="box"];
  "sha256:389650dd86d07bf944b1c75061ef22ffe661fc155c581e52b510ae8908968f3c" [label="/bin/sh -c pip install pymorphy2==0.8" shape="box"];
  "sha256:259918ddb841b49e72668e9fd55e17f6a3336da61787a71b0d193c732ccad333" [label="/bin/sh -c git clone https://github.com/buriy/spacy-ru.git" shape="box"];
  "sha256:7e961f8f380e08888fadecd5f8180d391d34c72c24187bab66e2c232abdb4c8a" [label="/bin/sh -c cp -r /spacy-ru/ru2/. $PROJECT_DIR/ru2" shape="box"];
  "sha256:868b9251ce9befb88e91a6a3263378370684f31215e39f93db4e48ac908063ca" [label="local://context" shape="ellipse"];
  "sha256:4fe41bdbd53693ece49cf31a6685d60315c860ddeee644f17eab556a9f624a8d" [label="copy{src=/examples/full_simple_example.py, dest=/example_spacy_ru_project/}" shape="note"];
  "sha256:2ac97606c7dcf7dfcafa5bf1d481ea216a10c3de9228d911d44ad2d27c91a4d7" [label="/bin/sh -c conda install -y -c conda-forge pandas tabulate # install packages for example" shape="box"];
  "sha256:6ffb37350da2fe8c0b9173ebff5900aa451a0c3e1b2fec4ae422c8340eb94d98" [label="mkdir{path=/example_spacy_ru_project}" shape="note"];
  "sha256:32b9e73ec9b2fb4d1a6dea225ccaa94c9add5f24fde2c5c05e6850ff378a987f" [label="sha256:32b9e73ec9b2fb4d1a6dea225ccaa94c9add5f24fde2c5c05e6850ff378a987f" shape="plaintext"];
  "sha256:2a07ac73bce574be43ccf30170ec5b30af856e874f42fb2ef5c545c394c1e1aa" -> "sha256:f5d822ac9cfbe7995ea3d96a0f45225fdfc5a4d33c810e9b308ce690eed3a3b1" [label=""];
  "sha256:f5d822ac9cfbe7995ea3d96a0f45225fdfc5a4d33c810e9b308ce690eed3a3b1" -> "sha256:5b8d8c9943d4d4e237f7ae5514a7942819f79210f12b7f13b7c50032e76e6132" [label=""];
  "sha256:5b8d8c9943d4d4e237f7ae5514a7942819f79210f12b7f13b7c50032e76e6132" -> "sha256:389650dd86d07bf944b1c75061ef22ffe661fc155c581e52b510ae8908968f3c" [label=""];
  "sha256:389650dd86d07bf944b1c75061ef22ffe661fc155c581e52b510ae8908968f3c" -> "sha256:259918ddb841b49e72668e9fd55e17f6a3336da61787a71b0d193c732ccad333" [label=""];
  "sha256:259918ddb841b49e72668e9fd55e17f6a3336da61787a71b0d193c732ccad333" -> "sha256:7e961f8f380e08888fadecd5f8180d391d34c72c24187bab66e2c232abdb4c8a" [label=""];
  "sha256:7e961f8f380e08888fadecd5f8180d391d34c72c24187bab66e2c232abdb4c8a" -> "sha256:4fe41bdbd53693ece49cf31a6685d60315c860ddeee644f17eab556a9f624a8d" [label=""];
  "sha256:868b9251ce9befb88e91a6a3263378370684f31215e39f93db4e48ac908063ca" -> "sha256:4fe41bdbd53693ece49cf31a6685d60315c860ddeee644f17eab556a9f624a8d" [label=""];
  "sha256:4fe41bdbd53693ece49cf31a6685d60315c860ddeee644f17eab556a9f624a8d" -> "sha256:2ac97606c7dcf7dfcafa5bf1d481ea216a10c3de9228d911d44ad2d27c91a4d7" [label=""];
  "sha256:2ac97606c7dcf7dfcafa5bf1d481ea216a10c3de9228d911d44ad2d27c91a4d7" -> "sha256:6ffb37350da2fe8c0b9173ebff5900aa451a0c3e1b2fec4ae422c8340eb94d98" [label=""];
  "sha256:6ffb37350da2fe8c0b9173ebff5900aa451a0c3e1b2fec4ae422c8340eb94d98" -> "sha256:32b9e73ec9b2fb4d1a6dea225ccaa94c9add5f24fde2c5c05e6850ff378a987f" [label=""];
}

