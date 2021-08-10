[app/sources/227632075.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:e6d99fb50b792376d452e0179d71ea884db95b9c215cba70c7962650e31a7a55" [label="local://context" shape="ellipse"];
  "sha256:31e20e07997b71fb8072f48f2333d42bfd8306b38e335ce636736dc9677b3a07" [label="copy{src=/file1, dest=/usr/bin/file2}" shape="note"];
  "sha256:bb4855eef7d231c77ca41b792a41fccd31d0fa38b2315d0377ae08575de6d5b3" [label="/bin/sh -c ls -al /usr/bin/file2 && ! ls -al /usr/bin/file1" shape="box"];
  "sha256:a5c7133ab89a532f172893c3e41970e985d99c954c561c750f26d7685de8011b" [label="sha256:a5c7133ab89a532f172893c3e41970e985d99c954c561c750f26d7685de8011b" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:31e20e07997b71fb8072f48f2333d42bfd8306b38e335ce636736dc9677b3a07" [label=""];
  "sha256:e6d99fb50b792376d452e0179d71ea884db95b9c215cba70c7962650e31a7a55" -> "sha256:31e20e07997b71fb8072f48f2333d42bfd8306b38e335ce636736dc9677b3a07" [label=""];
  "sha256:31e20e07997b71fb8072f48f2333d42bfd8306b38e335ce636736dc9677b3a07" -> "sha256:bb4855eef7d231c77ca41b792a41fccd31d0fa38b2315d0377ae08575de6d5b3" [label=""];
  "sha256:bb4855eef7d231c77ca41b792a41fccd31d0fa38b2315d0377ae08575de6d5b3" -> "sha256:a5c7133ab89a532f172893c3e41970e985d99c954c561c750f26d7685de8011b" [label=""];
}

