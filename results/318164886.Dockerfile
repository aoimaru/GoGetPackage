[app/sources/318164886.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:fb7e8430c76f0461347f87b8655f694f88c7eff690e5d5df2c10e3f8fc1fee74" [label="/bin/sh -c apt-get -qqy update && apt-get -qqy install   software-properties-common   git   gnuplot   gawk   make   m4   aspcud   ocaml   opam   gcc-multilib   g++-multilib && apt-get clean && rm -rf /var/lib/apt/lists/* && opam init --compiler=4.06.1+32bit --yes --auto-setup && eval `opam config env` && opam repo add coq-released https://coq.inria.fr/opam/released && opam repo add distributedcomponents-dev http://opam-dev.distributedcomponents.net && opam pin add coq 8.8.0 --yes && opam pin add coq-mathcomp-ssreflect 1.7.0 --yes" shape="box"];
  "sha256:b3dfcc0c00b91b3f167055ca55ea3f0c7889c79cc2d3a80d89adc0f46aeb632e" [label="sha256:b3dfcc0c00b91b3f167055ca55ea3f0c7889c79cc2d3a80d89adc0f46aeb632e" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:fb7e8430c76f0461347f87b8655f694f88c7eff690e5d5df2c10e3f8fc1fee74" [label=""];
  "sha256:fb7e8430c76f0461347f87b8655f694f88c7eff690e5d5df2c10e3f8fc1fee74" -> "sha256:b3dfcc0c00b91b3f167055ca55ea3f0c7889c79cc2d3a80d89adc0f46aeb632e" [label=""];
}

