[app/sources/316866936.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2af328c5c490a33dc81bb837aefc32890784cdd3306aaccb45a44d8691ee88c2" [label="/bin/sh -c apt-get -q update &&   apt-get install -q -y --no-install-recommends     curl     software-properties-common     sudo &&   apt-get clean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:b54a8aaf2742948edc8248d0a391a11e545e73bf9d30744ac030c10f53f863e2" [label="/bin/sh -c apt-add-repository ppa:ansible/ansible &&   curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - &&   curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&   echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | sudo tee /etc/apt/sources.list.d/yarn.list &&   apt-get clean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e714f2645ba7bc948fc661b99beef06f779b3b0bc13ac387edc6c132466250ba" [label="/bin/sh -c apt-get -q update &&   apt-get install -q -y --no-install-recommends     ansible     rsync     nodejs     yarn     libpng-dev     libpng16-16     expect     git     ssh-client &&   apt-get clean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:4136249188c88d88448c16939ec3741a60ec4ddaf90dd2c81c7711ede9b159be" [label="local://context" shape="ellipse"];
  "sha256:e2b73bf9dc4971ea1db96ffc0b7dc2bf6ac103260b9461ff7e65b285934533f9" [label="copy{src=/home, dest=/root/}" shape="note"];
  "sha256:5c9ce1c062185838c3d105b26b3e8c5d3af21e410ac761998edb978ff27412a2" [label="/bin/sh -c ln -s $HOME/bin/* /usr/local/bin/" shape="box"];
  "sha256:9d5dd44dd75b5d78da292a20ec8529d8fb68c08ecfcc7fe65b8fac2fd624ab32" [label="sha256:9d5dd44dd75b5d78da292a20ec8529d8fb68c08ecfcc7fe65b8fac2fd624ab32" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2af328c5c490a33dc81bb837aefc32890784cdd3306aaccb45a44d8691ee88c2" [label=""];
  "sha256:2af328c5c490a33dc81bb837aefc32890784cdd3306aaccb45a44d8691ee88c2" -> "sha256:b54a8aaf2742948edc8248d0a391a11e545e73bf9d30744ac030c10f53f863e2" [label=""];
  "sha256:b54a8aaf2742948edc8248d0a391a11e545e73bf9d30744ac030c10f53f863e2" -> "sha256:e714f2645ba7bc948fc661b99beef06f779b3b0bc13ac387edc6c132466250ba" [label=""];
  "sha256:e714f2645ba7bc948fc661b99beef06f779b3b0bc13ac387edc6c132466250ba" -> "sha256:e2b73bf9dc4971ea1db96ffc0b7dc2bf6ac103260b9461ff7e65b285934533f9" [label=""];
  "sha256:4136249188c88d88448c16939ec3741a60ec4ddaf90dd2c81c7711ede9b159be" -> "sha256:e2b73bf9dc4971ea1db96ffc0b7dc2bf6ac103260b9461ff7e65b285934533f9" [label=""];
  "sha256:e2b73bf9dc4971ea1db96ffc0b7dc2bf6ac103260b9461ff7e65b285934533f9" -> "sha256:5c9ce1c062185838c3d105b26b3e8c5d3af21e410ac761998edb978ff27412a2" [label=""];
  "sha256:5c9ce1c062185838c3d105b26b3e8c5d3af21e410ac761998edb978ff27412a2" -> "sha256:9d5dd44dd75b5d78da292a20ec8529d8fb68c08ecfcc7fe65b8fac2fd624ab32" [label=""];
}

