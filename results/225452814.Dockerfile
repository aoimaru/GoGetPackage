[app/sources/225452814.Dockerfile]
digraph {
  "sha256:ded7865542ebebf70d0aaf67ad943b500cec9f312d89a6193a225a6ec323f554" [label="docker-image://docker.io/library/busybox@sha256:0f354ec1728d9ff32edcd7d1b8bbdfc798277ad36120dc3dc683be44524c8b60" shape="ellipse"];
  "sha256:7895172ef506eb86b3d8827b010f497b8d5ab4e441ae0394283b835cf0751bb0" [label="local://context" shape="ellipse"];
  "sha256:35100fbb89ad13e16636dd1f50adac225bfea55ef8fb93e29d375aa9ed854e00" [label="copy{src=/cauldron, dest=/cauldron}" shape="note"];
  "sha256:59b703153fcef6b8ec6661cc123fbbc24f0935d90d1f8c7c031e7d0f734c16c1" [label="copy{src=/cauldron.go, dest=/cauldron.go}" shape="note"];
  "sha256:33cf1554a2c20a4f93f50d2828e3465792885182b39c0f642c14729deb00c7ea" [label="sha256:33cf1554a2c20a4f93f50d2828e3465792885182b39c0f642c14729deb00c7ea" shape="plaintext"];
  "sha256:ded7865542ebebf70d0aaf67ad943b500cec9f312d89a6193a225a6ec323f554" -> "sha256:35100fbb89ad13e16636dd1f50adac225bfea55ef8fb93e29d375aa9ed854e00" [label=""];
  "sha256:7895172ef506eb86b3d8827b010f497b8d5ab4e441ae0394283b835cf0751bb0" -> "sha256:35100fbb89ad13e16636dd1f50adac225bfea55ef8fb93e29d375aa9ed854e00" [label=""];
  "sha256:35100fbb89ad13e16636dd1f50adac225bfea55ef8fb93e29d375aa9ed854e00" -> "sha256:59b703153fcef6b8ec6661cc123fbbc24f0935d90d1f8c7c031e7d0f734c16c1" [label=""];
  "sha256:7895172ef506eb86b3d8827b010f497b8d5ab4e441ae0394283b835cf0751bb0" -> "sha256:59b703153fcef6b8ec6661cc123fbbc24f0935d90d1f8c7c031e7d0f734c16c1" [label=""];
  "sha256:59b703153fcef6b8ec6661cc123fbbc24f0935d90d1f8c7c031e7d0f734c16c1" -> "sha256:33cf1554a2c20a4f93f50d2828e3465792885182b39c0f642c14729deb00c7ea" [label=""];
}

