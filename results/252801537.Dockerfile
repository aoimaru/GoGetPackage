[app/sources/252801537.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:730bf3b8318e8e561a3bd3a6e21e352b44ce7c48e53ad2f37e268e7a8d980bfb" [label="/bin/sh -c apt-get -q -y update && apt-get -q -y dist-upgrade && apt-get -q -y install sudo m4 rsync git && apt-get -q -y --no-install-recommends install ocaml-nox opam aspcud && apt-get -q -y clean" shape="box"];
  "sha256:554fb11a0c5c947ec7b470a1a7ca51c4389146f38a208fd7ce8df2ee85e06f9c" [label="local://context" shape="ellipse"];
  "sha256:41120c46b1921afb781b44ca4b76fcf0e5b7e6dd38895af3d7e291c9ca008976" [label="copy{src=/sudo-ci, dest=/etc/sudoers.d/ci}" shape="note"];
  "sha256:20721a9ac985fa9c279511fd04ca079f7e01953ea635ddc26749857fb5553c68" [label="/bin/sh -c adduser --disabled-password --gecos \"CI\" ci" shape="box"];
  "sha256:37cce88f83af5a5e7d7e2620a4cd403d54b1c8170caebe98339c9bdd55290c89" [label="/bin/sh -c chmod 440 /etc/sudoers.d/ci" shape="box"];
  "sha256:cb765faeb8192316d36a04570dc60953a9cc1f8f818b360e5507e2573574f62e" [label="mkdir{path=/home/ci}" shape="note"];
  "sha256:9da18a9a424161e0be6cadc12cb3daee2c64da0bb144b299b36134849fb01800" [label="/bin/sh -c opam init -a && opam remote add easycrypt https://github.com/EasyCrypt/opam.git && opam install depext && opam depext easycrypt ec-provers && opam install ec-provers && opam install --deps-only easycrypt && rm -rf .opam/packages.dev/* && sudo apt-get -q -y clean" shape="box"];
  "sha256:d541163fdbd573dfa7f19a9e47a4be4696cb0f608193faef0c4537f6ae3e5875" [label="/bin/sh -c opam config exec \\-- why3 config --detect" shape="box"];
  "sha256:829c25e76673908c1d1d97407d5e70277c6c045a3409ec1a995dc0dc92c8b16e" [label="sha256:829c25e76673908c1d1d97407d5e70277c6c045a3409ec1a995dc0dc92c8b16e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:730bf3b8318e8e561a3bd3a6e21e352b44ce7c48e53ad2f37e268e7a8d980bfb" [label=""];
  "sha256:730bf3b8318e8e561a3bd3a6e21e352b44ce7c48e53ad2f37e268e7a8d980bfb" -> "sha256:41120c46b1921afb781b44ca4b76fcf0e5b7e6dd38895af3d7e291c9ca008976" [label=""];
  "sha256:554fb11a0c5c947ec7b470a1a7ca51c4389146f38a208fd7ce8df2ee85e06f9c" -> "sha256:41120c46b1921afb781b44ca4b76fcf0e5b7e6dd38895af3d7e291c9ca008976" [label=""];
  "sha256:41120c46b1921afb781b44ca4b76fcf0e5b7e6dd38895af3d7e291c9ca008976" -> "sha256:20721a9ac985fa9c279511fd04ca079f7e01953ea635ddc26749857fb5553c68" [label=""];
  "sha256:20721a9ac985fa9c279511fd04ca079f7e01953ea635ddc26749857fb5553c68" -> "sha256:37cce88f83af5a5e7d7e2620a4cd403d54b1c8170caebe98339c9bdd55290c89" [label=""];
  "sha256:37cce88f83af5a5e7d7e2620a4cd403d54b1c8170caebe98339c9bdd55290c89" -> "sha256:cb765faeb8192316d36a04570dc60953a9cc1f8f818b360e5507e2573574f62e" [label=""];
  "sha256:cb765faeb8192316d36a04570dc60953a9cc1f8f818b360e5507e2573574f62e" -> "sha256:9da18a9a424161e0be6cadc12cb3daee2c64da0bb144b299b36134849fb01800" [label=""];
  "sha256:9da18a9a424161e0be6cadc12cb3daee2c64da0bb144b299b36134849fb01800" -> "sha256:d541163fdbd573dfa7f19a9e47a4be4696cb0f608193faef0c4537f6ae3e5875" [label=""];
  "sha256:d541163fdbd573dfa7f19a9e47a4be4696cb0f608193faef0c4537f6ae3e5875" -> "sha256:829c25e76673908c1d1d97407d5e70277c6c045a3409ec1a995dc0dc92c8b16e" [label=""];
}

