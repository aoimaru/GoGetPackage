[app/sources/263759184.Dockerfile]
digraph {
  "sha256:c580b5fe56d9ded1d660359d6ef00102390a6b6a5aaa87c5ed3b4272e75dc196" [label="docker-image://docker.io/ofrei/bigartm:latest" shape="ellipse"];
  "sha256:c0fd4a5ee1450b0e66e7cdc8447991e06937ad4a12871199c6e886eccd7a6d12" [label="local://context" shape="ellipse"];
  "sha256:0dec21693a9b930ceb7e5df25528fd5dc42bfccdf9537d85dcc59d8a0199857f" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:3072b6c8a0e90fd3aa120298f2e59a73cce8089f07d771a7b4a6d7e3d9716eee" [label="/bin/sh -c pip3 install -r /tmp/requirements.txt" shape="box"];
  "sha256:77f53f79d48446ec7cfc8df2e9aaf7eef1c685ad2672dbbcc77d2a02fb01aefc" [label="/bin/sh -c python3 -c \"import nltk; nltk.download('punkt'); nltk.download('perluniprops'); nltk.download('nonbreaking_prefixes'); nltk.download('wordnet')\"" shape="box"];
  "sha256:29f7ea9acfb23122944df9a3e6c070940f9e4d28c525c3126e64a744d38f5899" [label="mkdir{path=/src}" shape="note"];
  "sha256:8d503df230cd71f96567976bcdf290f152e91cee5719a6209a6ba7f018d9c6ee" [label="sha256:8d503df230cd71f96567976bcdf290f152e91cee5719a6209a6ba7f018d9c6ee" shape="plaintext"];
  "sha256:c580b5fe56d9ded1d660359d6ef00102390a6b6a5aaa87c5ed3b4272e75dc196" -> "sha256:0dec21693a9b930ceb7e5df25528fd5dc42bfccdf9537d85dcc59d8a0199857f" [label=""];
  "sha256:c0fd4a5ee1450b0e66e7cdc8447991e06937ad4a12871199c6e886eccd7a6d12" -> "sha256:0dec21693a9b930ceb7e5df25528fd5dc42bfccdf9537d85dcc59d8a0199857f" [label=""];
  "sha256:0dec21693a9b930ceb7e5df25528fd5dc42bfccdf9537d85dcc59d8a0199857f" -> "sha256:3072b6c8a0e90fd3aa120298f2e59a73cce8089f07d771a7b4a6d7e3d9716eee" [label=""];
  "sha256:3072b6c8a0e90fd3aa120298f2e59a73cce8089f07d771a7b4a6d7e3d9716eee" -> "sha256:77f53f79d48446ec7cfc8df2e9aaf7eef1c685ad2672dbbcc77d2a02fb01aefc" [label=""];
  "sha256:77f53f79d48446ec7cfc8df2e9aaf7eef1c685ad2672dbbcc77d2a02fb01aefc" -> "sha256:29f7ea9acfb23122944df9a3e6c070940f9e4d28c525c3126e64a744d38f5899" [label=""];
  "sha256:29f7ea9acfb23122944df9a3e6c070940f9e4d28c525c3126e64a744d38f5899" -> "sha256:8d503df230cd71f96567976bcdf290f152e91cee5719a6209a6ba7f018d9c6ee" [label=""];
}

