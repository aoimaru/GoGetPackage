[app/sources/177955620.Dockerfile]
digraph {
  "sha256:c3099cb74cdd5ac2390633cd12471b4afe0247787d81e03f7d18ae2b37282e83" [label="docker-image://docker.io/library/centos:6@sha256:dec8f471302de43f4cfcf82f56d99a5227b5ea1aa6d02fa56344986e1f4610e7" shape="ellipse"];
  "sha256:7f273b3edc0a24ae545bdd5f47861f5c1acb972bc1702e517a7069adfa0b1566" [label="mkdir{path=/root}" shape="note"];
  "sha256:226340c3a28f585cfadf7b10dba4a28665889e6373453f279b69b68458093f93" [label="local://context" shape="ellipse"];
  "sha256:c7275b31b4e6e049538f01bdda53407aef72da50f0438df41588172fc75506c0" [label="copy{src=/docker/conf, dest=/root/conf}" shape="note"];
  "sha256:8cbd4c61c896569371a42e76b3287644fedbb428cfae233cd3c82efb507ca884" [label="copy{src=/docker/install, dest=/root/install}" shape="note"];
  "sha256:4714313ceaad3ebfd2cc765ce4ff4c40f2510353a1a438a43b69db77c1dd6369" [label="copy{src=/docker/scripts, dest=/root/scripts}" shape="note"];
  "sha256:b2c9bdaf201be2a2b98777937420428744cabec6e9f1e34bb3fff860c90770f6" [label="/bin/sh -c yum -y groupinstall \"Development Tools\"" shape="box"];
  "sha256:13627d8f85f9e7d6426e27cbd4c90f3994c97e310bc0adbef908689ea47c6c79" [label="/bin/sh -c yum -y install python-setuptools wget tar" shape="box"];
  "sha256:d57b9469794f2b25725ba7c8f4bfa1f8f88b38926cbd8ccb3db51c1976eb31c8" [label="/bin/sh -c easy_install supervisor" shape="box"];
  "sha256:185eddfdf5bc7950987ea419f968aa776dd6d2088d0d6376db965685644640f2" [label="/bin/sh -c sh $HOME/install/redis/install.sh" shape="box"];
  "sha256:649076e00d8b89c53ac29acc518a7c0a8dff13f174b556a8f6f4a70689adf0c9" [label="sha256:649076e00d8b89c53ac29acc518a7c0a8dff13f174b556a8f6f4a70689adf0c9" shape="plaintext"];
  "sha256:c3099cb74cdd5ac2390633cd12471b4afe0247787d81e03f7d18ae2b37282e83" -> "sha256:7f273b3edc0a24ae545bdd5f47861f5c1acb972bc1702e517a7069adfa0b1566" [label=""];
  "sha256:7f273b3edc0a24ae545bdd5f47861f5c1acb972bc1702e517a7069adfa0b1566" -> "sha256:c7275b31b4e6e049538f01bdda53407aef72da50f0438df41588172fc75506c0" [label=""];
  "sha256:226340c3a28f585cfadf7b10dba4a28665889e6373453f279b69b68458093f93" -> "sha256:c7275b31b4e6e049538f01bdda53407aef72da50f0438df41588172fc75506c0" [label=""];
  "sha256:c7275b31b4e6e049538f01bdda53407aef72da50f0438df41588172fc75506c0" -> "sha256:8cbd4c61c896569371a42e76b3287644fedbb428cfae233cd3c82efb507ca884" [label=""];
  "sha256:226340c3a28f585cfadf7b10dba4a28665889e6373453f279b69b68458093f93" -> "sha256:8cbd4c61c896569371a42e76b3287644fedbb428cfae233cd3c82efb507ca884" [label=""];
  "sha256:8cbd4c61c896569371a42e76b3287644fedbb428cfae233cd3c82efb507ca884" -> "sha256:4714313ceaad3ebfd2cc765ce4ff4c40f2510353a1a438a43b69db77c1dd6369" [label=""];
  "sha256:226340c3a28f585cfadf7b10dba4a28665889e6373453f279b69b68458093f93" -> "sha256:4714313ceaad3ebfd2cc765ce4ff4c40f2510353a1a438a43b69db77c1dd6369" [label=""];
  "sha256:4714313ceaad3ebfd2cc765ce4ff4c40f2510353a1a438a43b69db77c1dd6369" -> "sha256:b2c9bdaf201be2a2b98777937420428744cabec6e9f1e34bb3fff860c90770f6" [label=""];
  "sha256:b2c9bdaf201be2a2b98777937420428744cabec6e9f1e34bb3fff860c90770f6" -> "sha256:13627d8f85f9e7d6426e27cbd4c90f3994c97e310bc0adbef908689ea47c6c79" [label=""];
  "sha256:13627d8f85f9e7d6426e27cbd4c90f3994c97e310bc0adbef908689ea47c6c79" -> "sha256:d57b9469794f2b25725ba7c8f4bfa1f8f88b38926cbd8ccb3db51c1976eb31c8" [label=""];
  "sha256:d57b9469794f2b25725ba7c8f4bfa1f8f88b38926cbd8ccb3db51c1976eb31c8" -> "sha256:185eddfdf5bc7950987ea419f968aa776dd6d2088d0d6376db965685644640f2" [label=""];
  "sha256:185eddfdf5bc7950987ea419f968aa776dd6d2088d0d6376db965685644640f2" -> "sha256:649076e00d8b89c53ac29acc518a7c0a8dff13f174b556a8f6f4a70689adf0c9" [label=""];
}

