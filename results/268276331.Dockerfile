[app/sources/268276331.Dockerfile]
digraph {
  "sha256:e909addac4a54a5cce3894b5d9e4e73c2e92be613dd3acc3d8b1fd26f2a7b1fc" [label="local://context" shape="ellipse"];
  "sha256:9c36568261900178feb85df1944d2a0f138f94dc3c0b2ffb742adb3804983110" [label="copy{src=/helloworld, dest=/helloworld}" shape="note"];
  "sha256:f38fcd84f36fd158cb73fce6ab7abd82e3cadf75b9e52f4c644630f7b8d317d8" [label="sha256:f38fcd84f36fd158cb73fce6ab7abd82e3cadf75b9e52f4c644630f7b8d317d8" shape="plaintext"];
  "sha256:e909addac4a54a5cce3894b5d9e4e73c2e92be613dd3acc3d8b1fd26f2a7b1fc" -> "sha256:9c36568261900178feb85df1944d2a0f138f94dc3c0b2ffb742adb3804983110" [label=""];
  "sha256:9c36568261900178feb85df1944d2a0f138f94dc3c0b2ffb742adb3804983110" -> "sha256:f38fcd84f36fd158cb73fce6ab7abd82e3cadf75b9e52f4c644630f7b8d317d8" [label=""];
}

