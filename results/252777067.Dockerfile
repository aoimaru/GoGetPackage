[app/sources/252777067.Dockerfile]
digraph {
  "sha256:fb3e20c81813462d2dd086d9b0b1ce5a78275218fc883ec00277c5d10ed6c3da" [label="docker-image://docker.io/tianon/true:latest" shape="ellipse"];
  "sha256:700dbaf989b15d7a07bbec7c29715171582482d58252b41a8ecf794ac70f3737" [label="local://context" shape="ellipse"];
  "sha256:15e3ea7f475de578fb36429ed31444a46cf59a493d39cf49667c943792e32f61" [label="copy{src=/, dest=/ohmage-frontends/responses}" shape="note"];
  "sha256:2b1177f2d5f5dd2d24e3915ae56feecb75255861a2367f0ab4be3d5ced7720e4" [label="sha256:2b1177f2d5f5dd2d24e3915ae56feecb75255861a2367f0ab4be3d5ced7720e4" shape="plaintext"];
  "sha256:fb3e20c81813462d2dd086d9b0b1ce5a78275218fc883ec00277c5d10ed6c3da" -> "sha256:15e3ea7f475de578fb36429ed31444a46cf59a493d39cf49667c943792e32f61" [label=""];
  "sha256:700dbaf989b15d7a07bbec7c29715171582482d58252b41a8ecf794ac70f3737" -> "sha256:15e3ea7f475de578fb36429ed31444a46cf59a493d39cf49667c943792e32f61" [label=""];
  "sha256:15e3ea7f475de578fb36429ed31444a46cf59a493d39cf49667c943792e32f61" -> "sha256:2b1177f2d5f5dd2d24e3915ae56feecb75255861a2367f0ab4be3d5ced7720e4" [label=""];
}

