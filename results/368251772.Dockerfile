[app/sources/368251772.Dockerfile]
digraph {
  "sha256:b056fa955175bb719deef0e1566363f407fd13710f72a67b4c9b692927392608" [label="docker-image://docker.io/binaryphile/ruby:2.0.0-p247" shape="ellipse"];
  "sha256:1c93a05e1dae32aa9f34c7b6f18623921bdcedfd2eeedc02058bbdf0d175826e" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev" shape="box"];
  "sha256:435ef4ec08c284f1706d74eec57d42d62a3d204e5661fc489792a1de4f294844" [label="/bin/sh -c mkdir /myapp" shape="box"];
  "sha256:c59ab5fb34035e56a7cc44cce542d39f93f2255745d9e3e58bbc2b0c30c35c54" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:ed4ec3cc58cf51fd4084c2098ae8188793c5c2f6d10850b408c54b8095aaf3d0" [label="local://context" shape="ellipse"];
  "sha256:ec7fd1c901565984d5df58aa38c68f6012b4623f146b05556c2dcc7490b3690f" [label="copy{src=/Gemfile, dest=/myapp/Gemfile}" shape="note"];
  "sha256:f67359a2a136be9e75b3b6656e6c36920721daf9fb47c53290f90268c7eace04" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:f2a76be947bfffec10d4d2a61d1615f9a968bdffa8bfb6b68d988879cf9d881a" [label="copy{src=/, dest=/myapp}" shape="note"];
  "sha256:c000dedb030ea0c8c2147d90b5e3421b5ad183ee0917a72fdedd687ba5b55dd5" [label="sha256:c000dedb030ea0c8c2147d90b5e3421b5ad183ee0917a72fdedd687ba5b55dd5" shape="plaintext"];
  "sha256:b056fa955175bb719deef0e1566363f407fd13710f72a67b4c9b692927392608" -> "sha256:1c93a05e1dae32aa9f34c7b6f18623921bdcedfd2eeedc02058bbdf0d175826e" [label=""];
  "sha256:1c93a05e1dae32aa9f34c7b6f18623921bdcedfd2eeedc02058bbdf0d175826e" -> "sha256:435ef4ec08c284f1706d74eec57d42d62a3d204e5661fc489792a1de4f294844" [label=""];
  "sha256:435ef4ec08c284f1706d74eec57d42d62a3d204e5661fc489792a1de4f294844" -> "sha256:c59ab5fb34035e56a7cc44cce542d39f93f2255745d9e3e58bbc2b0c30c35c54" [label=""];
  "sha256:c59ab5fb34035e56a7cc44cce542d39f93f2255745d9e3e58bbc2b0c30c35c54" -> "sha256:ec7fd1c901565984d5df58aa38c68f6012b4623f146b05556c2dcc7490b3690f" [label=""];
  "sha256:ed4ec3cc58cf51fd4084c2098ae8188793c5c2f6d10850b408c54b8095aaf3d0" -> "sha256:ec7fd1c901565984d5df58aa38c68f6012b4623f146b05556c2dcc7490b3690f" [label=""];
  "sha256:ec7fd1c901565984d5df58aa38c68f6012b4623f146b05556c2dcc7490b3690f" -> "sha256:f67359a2a136be9e75b3b6656e6c36920721daf9fb47c53290f90268c7eace04" [label=""];
  "sha256:f67359a2a136be9e75b3b6656e6c36920721daf9fb47c53290f90268c7eace04" -> "sha256:f2a76be947bfffec10d4d2a61d1615f9a968bdffa8bfb6b68d988879cf9d881a" [label=""];
  "sha256:ed4ec3cc58cf51fd4084c2098ae8188793c5c2f6d10850b408c54b8095aaf3d0" -> "sha256:f2a76be947bfffec10d4d2a61d1615f9a968bdffa8bfb6b68d988879cf9d881a" [label=""];
  "sha256:f2a76be947bfffec10d4d2a61d1615f9a968bdffa8bfb6b68d988879cf9d881a" -> "sha256:c000dedb030ea0c8c2147d90b5e3421b5ad183ee0917a72fdedd687ba5b55dd5" [label=""];
}

