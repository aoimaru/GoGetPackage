[app/sources/161756520.Dockerfile]
digraph {
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" [label="docker-image://docker.io/library/php:alpine" shape="ellipse"];
  "sha256:c4f2c59b36a6512edf042caf44035dc13745124cb52fd3514f45b0753a6e9965" [label="/bin/sh -c apk add libevent-dev autoconf alpine-sdk" shape="box"];
  "sha256:b0058bea61724b678679cc3110bd4b15c89eb1b50fc0be6e60f6bc5b8389eed2" [label="/bin/sh -c wget \"https://github.com/yunnian/php-nsq/archive/v${PHP_NSQ_VERSION}.tar.gz\"" shape="box"];
  "sha256:e58a3d5fdb92a6f8981163a7c71bdecc3f3a3c8bbf4494962e2746884058f9c3" [label="/bin/sh -c tar xvzf \"v${PHP_NSQ_VERSION}.tar.gz\"" shape="box"];
  "sha256:317e1cfeeecd85da49a2b95b203a1dc870cf2d0129fd2d953a4f464315d5820d" [label="mkdir{path=/php-nsq-3.1.0}" shape="note"];
  "sha256:1b44e7dfd2a403e529eb257896e055b7a192e159cea1bfd37a8d0b4c8dfb1af6" [label="/bin/sh -c phpize" shape="box"];
  "sha256:08e9b73507ed3af14ceaba77c1f1651852c35cb31847fa65973eedfda42d103c" [label="/bin/sh -c ./configure" shape="box"];
  "sha256:9181faf3da99f3de2f5a9b3bae33c6a20877f7a4e39397de34f30f61ad1648e6" [label="/bin/sh -c make" shape="box"];
  "sha256:e17e9b0e47305f3c8d9f3cc97a349bcdeb95d5f72c857589e9317d858c37539f" [label="/bin/sh -c make install" shape="box"];
  "sha256:59780839f9ffad5aa2ce45191617887538f8a843054a63c4edc96e643360fc3d" [label="copy{src=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/nsq.so, dest=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/nsq.so}" shape="note"];
  "sha256:e6db43a0898618730056744777ad07297f2763e0d6c7107ddecce94b776829c1" [label="/bin/sh -c apk add --no-cache libevent &&     echo \"extension=nsq.so\" > /usr/local/etc/php/conf.d/docker-php-ext-nsq.ini" shape="box"];
  "sha256:4596b3e2d458abeadf97a5618619d2fb37fd3e6273e037f54b030c8a348eea1f" [label="sha256:4596b3e2d458abeadf97a5618619d2fb37fd3e6273e037f54b030c8a348eea1f" shape="plaintext"];
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" -> "sha256:c4f2c59b36a6512edf042caf44035dc13745124cb52fd3514f45b0753a6e9965" [label=""];
  "sha256:c4f2c59b36a6512edf042caf44035dc13745124cb52fd3514f45b0753a6e9965" -> "sha256:b0058bea61724b678679cc3110bd4b15c89eb1b50fc0be6e60f6bc5b8389eed2" [label=""];
  "sha256:b0058bea61724b678679cc3110bd4b15c89eb1b50fc0be6e60f6bc5b8389eed2" -> "sha256:e58a3d5fdb92a6f8981163a7c71bdecc3f3a3c8bbf4494962e2746884058f9c3" [label=""];
  "sha256:e58a3d5fdb92a6f8981163a7c71bdecc3f3a3c8bbf4494962e2746884058f9c3" -> "sha256:317e1cfeeecd85da49a2b95b203a1dc870cf2d0129fd2d953a4f464315d5820d" [label=""];
  "sha256:317e1cfeeecd85da49a2b95b203a1dc870cf2d0129fd2d953a4f464315d5820d" -> "sha256:1b44e7dfd2a403e529eb257896e055b7a192e159cea1bfd37a8d0b4c8dfb1af6" [label=""];
  "sha256:1b44e7dfd2a403e529eb257896e055b7a192e159cea1bfd37a8d0b4c8dfb1af6" -> "sha256:08e9b73507ed3af14ceaba77c1f1651852c35cb31847fa65973eedfda42d103c" [label=""];
  "sha256:08e9b73507ed3af14ceaba77c1f1651852c35cb31847fa65973eedfda42d103c" -> "sha256:9181faf3da99f3de2f5a9b3bae33c6a20877f7a4e39397de34f30f61ad1648e6" [label=""];
  "sha256:9181faf3da99f3de2f5a9b3bae33c6a20877f7a4e39397de34f30f61ad1648e6" -> "sha256:e17e9b0e47305f3c8d9f3cc97a349bcdeb95d5f72c857589e9317d858c37539f" [label=""];
  "sha256:3edbee802097fb27b53d92aff9527468bd8aa87b6b3cad220a4088734aa7eb99" -> "sha256:59780839f9ffad5aa2ce45191617887538f8a843054a63c4edc96e643360fc3d" [label=""];
  "sha256:e17e9b0e47305f3c8d9f3cc97a349bcdeb95d5f72c857589e9317d858c37539f" -> "sha256:59780839f9ffad5aa2ce45191617887538f8a843054a63c4edc96e643360fc3d" [label=""];
  "sha256:59780839f9ffad5aa2ce45191617887538f8a843054a63c4edc96e643360fc3d" -> "sha256:e6db43a0898618730056744777ad07297f2763e0d6c7107ddecce94b776829c1" [label=""];
  "sha256:e6db43a0898618730056744777ad07297f2763e0d6c7107ddecce94b776829c1" -> "sha256:4596b3e2d458abeadf97a5618619d2fb37fd3e6273e037f54b030c8a348eea1f" [label=""];
}

