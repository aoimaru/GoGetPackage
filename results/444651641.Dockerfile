[app/sources/444651641.Dockerfile]
digraph {
  "sha256:c4e4f85ee13a42b94579c6301336fc1fd03445510d8c17c7d3405e577c9bdbd8" [label="docker-image://docker.io/library/postgres:10.6" shape="ellipse"];
  "sha256:0fe9221058820bd617c38d942e2153978b8319407d5e6c095d1d4404f1ced62b" [label="local://context" shape="ellipse"];
  "sha256:25d7e76db9d7ac9deba081d1b478f6aa2bd23d9a1238bbb7e6e609725e4b8a86" [label="copy{src=/compose/local/postgres/maintenance, dest=/usr/local/bin/maintenance}" shape="note"];
  "sha256:3a8b06e199ff081f4ae1d3a7af7aae43376e27a10ec95e68ecaa05e0ce5d4abc" [label="/bin/sh -c chmod +x /usr/local/bin/maintenance/*" shape="box"];
  "sha256:b32e0d388a7730f02febe962eaeedbd8e9c707376c137599e130a2ab9688ce9a" [label="/bin/sh -c mv /usr/local/bin/maintenance/* /usr/local/bin   && rmdir /usr/local/bin/maintenance" shape="box"];
  "sha256:055d14eedda9768c57510a243f69d4c95b1af878e431b6380fedae076546a6ba" [label="sha256:055d14eedda9768c57510a243f69d4c95b1af878e431b6380fedae076546a6ba" shape="plaintext"];
  "sha256:c4e4f85ee13a42b94579c6301336fc1fd03445510d8c17c7d3405e577c9bdbd8" -> "sha256:25d7e76db9d7ac9deba081d1b478f6aa2bd23d9a1238bbb7e6e609725e4b8a86" [label=""];
  "sha256:0fe9221058820bd617c38d942e2153978b8319407d5e6c095d1d4404f1ced62b" -> "sha256:25d7e76db9d7ac9deba081d1b478f6aa2bd23d9a1238bbb7e6e609725e4b8a86" [label=""];
  "sha256:25d7e76db9d7ac9deba081d1b478f6aa2bd23d9a1238bbb7e6e609725e4b8a86" -> "sha256:3a8b06e199ff081f4ae1d3a7af7aae43376e27a10ec95e68ecaa05e0ce5d4abc" [label=""];
  "sha256:3a8b06e199ff081f4ae1d3a7af7aae43376e27a10ec95e68ecaa05e0ce5d4abc" -> "sha256:b32e0d388a7730f02febe962eaeedbd8e9c707376c137599e130a2ab9688ce9a" [label=""];
  "sha256:b32e0d388a7730f02febe962eaeedbd8e9c707376c137599e130a2ab9688ce9a" -> "sha256:055d14eedda9768c57510a243f69d4c95b1af878e431b6380fedae076546a6ba" [label=""];
}

