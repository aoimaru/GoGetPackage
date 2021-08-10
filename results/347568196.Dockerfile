[app/sources/347568196.Dockerfile]
digraph {
  "sha256:6fe19042425e2b2a9752f639ed655b95e39ba497db7ed0636b18ccc293cfb3e7" [label="docker-image://docker.io/mykiwi/symfony-base:7.1-fpm" shape="ellipse"];
  "sha256:ab9f6adde9031b850cc1f1f31e7cff2cecc7fd1ff6f577253e75a02f08d044e3" [label="/bin/sh -c install-composer.sh &&     curl http://get.sensiolabs.org/melody.phar -o /usr/local/bin/melody &&     chmod a+x /usr/local/bin/melody &&     melody run --trust --no-cache https://gist.github.com/mykiwi/c2c2a416854183aeb6ccf1694e05a8da" shape="box"];
  "sha256:350aed650a62179c7f7726be48eeaf9378cc718187f69eab22a9b4f49561b906" [label="sha256:350aed650a62179c7f7726be48eeaf9378cc718187f69eab22a9b4f49561b906" shape="plaintext"];
  "sha256:6fe19042425e2b2a9752f639ed655b95e39ba497db7ed0636b18ccc293cfb3e7" -> "sha256:ab9f6adde9031b850cc1f1f31e7cff2cecc7fd1ff6f577253e75a02f08d044e3" [label=""];
  "sha256:ab9f6adde9031b850cc1f1f31e7cff2cecc7fd1ff6f577253e75a02f08d044e3" -> "sha256:350aed650a62179c7f7726be48eeaf9378cc718187f69eab22a9b4f49561b906" [label=""];
}

