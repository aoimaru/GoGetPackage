[app/sources/350985332.Dockerfile]
digraph {
  "sha256:07c45beca242d8a21de106df30ec95d9cac920e09cf17d79fa8123a3281bd169" [label="docker-image://docker.io/greg0ire/php:latest" shape="ellipse"];
  "sha256:989d313445ce5531c6cf5ff5244015be7b10fff5b4e08932145de80177d59f6c" [label="/bin/sh -c apt-get update &&     apt-get install --yes     curl     make     git-core     nodejs-legacy     npm     zsh &&     rm --recursive --force /var/lib/apt/lists/*" shape="box"];
  "sha256:2f450edbcfff53c905e77de7bbec75c09c98435e306a1405f02ff5f621955462" [label="/bin/sh -c curl --silent --show-error https://getcomposer.org/installer | php &&     mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:48b80f8e07b8bfbc70dbf9fea5ebb6d7daf9b9e78470854f4d05c7c3cd3b1a76" [label="/bin/sh -c curl --silent --show-error http://get.sensiolabs.org/php-cs-fixer.phar -o /usr/local/bin/php-cs-fixer" shape="box"];
  "sha256:59d9be7b91c640ee8a740a49ef780d88c152dd5f9441957e46272db8177fee35" [label="/bin/sh -c chmod a+x /usr/local/bin/php-cs-fixer" shape="box"];
  "sha256:88a06300e1e6df9d7cb97ee2d23b93438f2edb770ea7b2922028e5e313f5e336" [label="local://context" shape="ellipse"];
  "sha256:a4b8af6d91e8a131cfbd0cf3ddb72fd00133546fa70c5d6777eaf351c41f5ca5" [label="copy{src=/php-cli.ini, dest=/etc/php/cli/conf.d/30-dockerony.ini}" shape="note"];
  "sha256:a44253f4310ab46c4a5f7c46f2bced8cb06bf41cb29b1e61c9fdf2ca4dc346b7" [label="/bin/sh -c phpdismod xdebug" shape="box"];
  "sha256:7ece2151987403552f120d84679df395be13f5bc6e60662f1de74db55b002ed5" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:4d229f60a0ca44659114b24291a76bbbe535c1bf1c3ef964b7cc2ad3199492c6" [label="/bin/sh -c chmod u+x /entrypoint.sh" shape="box"];
  "sha256:542645b82d6ca005fad015ce73f9ea2d811fb7cd3c45f99ba1ec68cccfef0852" [label="sha256:542645b82d6ca005fad015ce73f9ea2d811fb7cd3c45f99ba1ec68cccfef0852" shape="plaintext"];
  "sha256:07c45beca242d8a21de106df30ec95d9cac920e09cf17d79fa8123a3281bd169" -> "sha256:989d313445ce5531c6cf5ff5244015be7b10fff5b4e08932145de80177d59f6c" [label=""];
  "sha256:989d313445ce5531c6cf5ff5244015be7b10fff5b4e08932145de80177d59f6c" -> "sha256:2f450edbcfff53c905e77de7bbec75c09c98435e306a1405f02ff5f621955462" [label=""];
  "sha256:2f450edbcfff53c905e77de7bbec75c09c98435e306a1405f02ff5f621955462" -> "sha256:48b80f8e07b8bfbc70dbf9fea5ebb6d7daf9b9e78470854f4d05c7c3cd3b1a76" [label=""];
  "sha256:48b80f8e07b8bfbc70dbf9fea5ebb6d7daf9b9e78470854f4d05c7c3cd3b1a76" -> "sha256:59d9be7b91c640ee8a740a49ef780d88c152dd5f9441957e46272db8177fee35" [label=""];
  "sha256:59d9be7b91c640ee8a740a49ef780d88c152dd5f9441957e46272db8177fee35" -> "sha256:a4b8af6d91e8a131cfbd0cf3ddb72fd00133546fa70c5d6777eaf351c41f5ca5" [label=""];
  "sha256:88a06300e1e6df9d7cb97ee2d23b93438f2edb770ea7b2922028e5e313f5e336" -> "sha256:a4b8af6d91e8a131cfbd0cf3ddb72fd00133546fa70c5d6777eaf351c41f5ca5" [label=""];
  "sha256:a4b8af6d91e8a131cfbd0cf3ddb72fd00133546fa70c5d6777eaf351c41f5ca5" -> "sha256:a44253f4310ab46c4a5f7c46f2bced8cb06bf41cb29b1e61c9fdf2ca4dc346b7" [label=""];
  "sha256:a44253f4310ab46c4a5f7c46f2bced8cb06bf41cb29b1e61c9fdf2ca4dc346b7" -> "sha256:7ece2151987403552f120d84679df395be13f5bc6e60662f1de74db55b002ed5" [label=""];
  "sha256:88a06300e1e6df9d7cb97ee2d23b93438f2edb770ea7b2922028e5e313f5e336" -> "sha256:7ece2151987403552f120d84679df395be13f5bc6e60662f1de74db55b002ed5" [label=""];
  "sha256:7ece2151987403552f120d84679df395be13f5bc6e60662f1de74db55b002ed5" -> "sha256:4d229f60a0ca44659114b24291a76bbbe535c1bf1c3ef964b7cc2ad3199492c6" [label=""];
  "sha256:4d229f60a0ca44659114b24291a76bbbe535c1bf1c3ef964b7cc2ad3199492c6" -> "sha256:542645b82d6ca005fad015ce73f9ea2d811fb7cd3c45f99ba1ec68cccfef0852" [label=""];
}

