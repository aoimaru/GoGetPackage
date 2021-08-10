[app/sources/158563001.Dockerfile]
digraph {
  "sha256:8580725ec9db7f6338d332c913df2c680f2e99168d59f895543d1bf0a61be3f7" [label="docker-image://docker.io/lnl7/nix:2.0" shape="ellipse"];
  "sha256:404c8fc8a3b128420fd61efc0464ea59df123579b9be911e54daff88133dfff0" [label="mkdir{path=/tmp/build}" shape="note"];
  "sha256:c7de9f270f5823bc1f8d1d2ef35df9a451d766d9da3d4ccfbdf1c456dfb64696" [label="local://context" shape="ellipse"];
  "sha256:2de44696c7aeca5fb7aa051d48b96a9d356e7f7bfdbab60bdb7b060d6a91d92f" [label="copy{src=/, dest=/tmp/build}" shape="note"];
  "sha256:918bfd07a5e1a73e62af0c6e890b5264543c648aa340485c802f7a095918f86c" [label="/bin/sh -c nix-env --arg nixpkgs 'import <nixpkgs> {}' -f . -i tar" shape="box"];
  "sha256:bfa2ad00edf71d7d117e146acb274241a555db3f7aff17a3d5b3563147e1fac8" [label="/bin/sh -c nix-shell -Q -j2 --run true" shape="box"];
  "sha256:886770d293052de02458defef129378549f21ff9b7cd2ae8b89b3f7052205572" [label="/bin/sh -c nix-env -f . -i hnix" shape="box"];
  "sha256:90a73c7402d988fd8bd46da98408aaeebe70c8ec88273ba028491216fe914331" [label="sha256:90a73c7402d988fd8bd46da98408aaeebe70c8ec88273ba028491216fe914331" shape="plaintext"];
  "sha256:8580725ec9db7f6338d332c913df2c680f2e99168d59f895543d1bf0a61be3f7" -> "sha256:404c8fc8a3b128420fd61efc0464ea59df123579b9be911e54daff88133dfff0" [label=""];
  "sha256:404c8fc8a3b128420fd61efc0464ea59df123579b9be911e54daff88133dfff0" -> "sha256:2de44696c7aeca5fb7aa051d48b96a9d356e7f7bfdbab60bdb7b060d6a91d92f" [label=""];
  "sha256:c7de9f270f5823bc1f8d1d2ef35df9a451d766d9da3d4ccfbdf1c456dfb64696" -> "sha256:2de44696c7aeca5fb7aa051d48b96a9d356e7f7bfdbab60bdb7b060d6a91d92f" [label=""];
  "sha256:2de44696c7aeca5fb7aa051d48b96a9d356e7f7bfdbab60bdb7b060d6a91d92f" -> "sha256:918bfd07a5e1a73e62af0c6e890b5264543c648aa340485c802f7a095918f86c" [label=""];
  "sha256:918bfd07a5e1a73e62af0c6e890b5264543c648aa340485c802f7a095918f86c" -> "sha256:bfa2ad00edf71d7d117e146acb274241a555db3f7aff17a3d5b3563147e1fac8" [label=""];
  "sha256:bfa2ad00edf71d7d117e146acb274241a555db3f7aff17a3d5b3563147e1fac8" -> "sha256:886770d293052de02458defef129378549f21ff9b7cd2ae8b89b3f7052205572" [label=""];
  "sha256:886770d293052de02458defef129378549f21ff9b7cd2ae8b89b3f7052205572" -> "sha256:90a73c7402d988fd8bd46da98408aaeebe70c8ec88273ba028491216fe914331" [label=""];
}

