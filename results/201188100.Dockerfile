[app/sources/201188100.Dockerfile]
digraph {
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" [label="docker-image://docker.io/library/python:2-alpine" shape="ellipse"];
  "sha256:54a32613acc208a6ba5fda4ffba82653179929b213bd5e55e3b283e63edbf925" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:747427b8ab0728eaddc1488080d90a042f61450e6b6935f60e067a98459dd89b" [label="/bin/sh -c git clone https://github.com/limkokhole/blogspot-downloader.git" shape="box"];
  "sha256:f483e26c8cd07a27908a431a1fe5a1711475a780ed435421c76be681e91bb9f0" [label="/bin/sh -c cd blogspot-downloader && pip2 install -r requirements_py2.txt #python 2" shape="box"];
  "sha256:f2ab606df2fd8e659738965b9fc5ae917a3ffc6ca216bea7ba8d62bc098748aa" [label="/bin/sh -c pip install python-dateutil" shape="box"];
  "sha256:12afcbcaecbc76a919d872534bdf9cfe07d729e3f66396d144be967b14408f29" [label="/bin/sh -c pip install pypub" shape="box"];
  "sha256:52aea57d8a058070d619d88e4d62b08bab041278816c5c4a3e8cc27f756c1825" [label="/bin/sh -c apk add build-base libxml2-dev libxslt-dev" shape="box"];
  "sha256:5065028f685cc18cc60d6d6a41d6091d1094ffefb5bb883ab7aa8b8285b90705" [label="mkdir{path=/data}" shape="note"];
  "sha256:3d9c65dc35fd0ade785948c07c4bfea70d30c7a5acfb05a0b5f1879ea1020366" [label="sha256:3d9c65dc35fd0ade785948c07c4bfea70d30c7a5acfb05a0b5f1879ea1020366" shape="plaintext"];
  "sha256:2d03b27268c15982221afd6ed1a0b3b47c3e8e5da5953c1b2e32e248bc599de3" -> "sha256:54a32613acc208a6ba5fda4ffba82653179929b213bd5e55e3b283e63edbf925" [label=""];
  "sha256:54a32613acc208a6ba5fda4ffba82653179929b213bd5e55e3b283e63edbf925" -> "sha256:747427b8ab0728eaddc1488080d90a042f61450e6b6935f60e067a98459dd89b" [label=""];
  "sha256:747427b8ab0728eaddc1488080d90a042f61450e6b6935f60e067a98459dd89b" -> "sha256:f483e26c8cd07a27908a431a1fe5a1711475a780ed435421c76be681e91bb9f0" [label=""];
  "sha256:f483e26c8cd07a27908a431a1fe5a1711475a780ed435421c76be681e91bb9f0" -> "sha256:f2ab606df2fd8e659738965b9fc5ae917a3ffc6ca216bea7ba8d62bc098748aa" [label=""];
  "sha256:f2ab606df2fd8e659738965b9fc5ae917a3ffc6ca216bea7ba8d62bc098748aa" -> "sha256:12afcbcaecbc76a919d872534bdf9cfe07d729e3f66396d144be967b14408f29" [label=""];
  "sha256:12afcbcaecbc76a919d872534bdf9cfe07d729e3f66396d144be967b14408f29" -> "sha256:52aea57d8a058070d619d88e4d62b08bab041278816c5c4a3e8cc27f756c1825" [label=""];
  "sha256:52aea57d8a058070d619d88e4d62b08bab041278816c5c4a3e8cc27f756c1825" -> "sha256:5065028f685cc18cc60d6d6a41d6091d1094ffefb5bb883ab7aa8b8285b90705" [label=""];
  "sha256:5065028f685cc18cc60d6d6a41d6091d1094ffefb5bb883ab7aa8b8285b90705" -> "sha256:3d9c65dc35fd0ade785948c07c4bfea70d30c7a5acfb05a0b5f1879ea1020366" [label=""];
}

