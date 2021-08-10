[app/sources/247374017.Dockerfile]
digraph {
  "sha256:999205a089a8bfd274d8825971a9fdec93d4b9708accf7ba689e98600fbc54f7" [label="local://context" shape="ellipse"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" [label="docker-image://docker.io/library/nginx:1.7" shape="ellipse"];
  "sha256:7a949779435cfd8202bb6ef3f013a3d9b2abcef2cefc6f8fdb3522a42e738183" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:587308d0998120fa5d8ed672abeea0424b3bef923a769dfe671332206588a261" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:b977f7d2fb1e42e421b2a78968364f541a8fceafde07d363b70ee03aed6804bf" [label="copy{src=/docker-registry.conf, dest=/etc/nginx/docker-registry.conf}" shape="note"];
  "sha256:2e2bf0501d3dcb79c81734a4f58e3c247825c98bea289dff63f1fbb60ba3214b" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:ff96b74400715f85aeb5c5bf8a7a6bf543d69aa7c5a8e9be882ab2608f4c0d69" [label="sha256:ff96b74400715f85aeb5c5bf8a7a6bf543d69aa7c5a8e9be882ab2608f4c0d69" shape="plaintext"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" -> "sha256:7a949779435cfd8202bb6ef3f013a3d9b2abcef2cefc6f8fdb3522a42e738183" [label=""];
  "sha256:999205a089a8bfd274d8825971a9fdec93d4b9708accf7ba689e98600fbc54f7" -> "sha256:7a949779435cfd8202bb6ef3f013a3d9b2abcef2cefc6f8fdb3522a42e738183" [label=""];
  "sha256:7a949779435cfd8202bb6ef3f013a3d9b2abcef2cefc6f8fdb3522a42e738183" -> "sha256:587308d0998120fa5d8ed672abeea0424b3bef923a769dfe671332206588a261" [label=""];
  "sha256:999205a089a8bfd274d8825971a9fdec93d4b9708accf7ba689e98600fbc54f7" -> "sha256:587308d0998120fa5d8ed672abeea0424b3bef923a769dfe671332206588a261" [label=""];
  "sha256:587308d0998120fa5d8ed672abeea0424b3bef923a769dfe671332206588a261" -> "sha256:b977f7d2fb1e42e421b2a78968364f541a8fceafde07d363b70ee03aed6804bf" [label=""];
  "sha256:999205a089a8bfd274d8825971a9fdec93d4b9708accf7ba689e98600fbc54f7" -> "sha256:b977f7d2fb1e42e421b2a78968364f541a8fceafde07d363b70ee03aed6804bf" [label=""];
  "sha256:b977f7d2fb1e42e421b2a78968364f541a8fceafde07d363b70ee03aed6804bf" -> "sha256:2e2bf0501d3dcb79c81734a4f58e3c247825c98bea289dff63f1fbb60ba3214b" [label=""];
  "sha256:999205a089a8bfd274d8825971a9fdec93d4b9708accf7ba689e98600fbc54f7" -> "sha256:2e2bf0501d3dcb79c81734a4f58e3c247825c98bea289dff63f1fbb60ba3214b" [label=""];
  "sha256:2e2bf0501d3dcb79c81734a4f58e3c247825c98bea289dff63f1fbb60ba3214b" -> "sha256:ff96b74400715f85aeb5c5bf8a7a6bf543d69aa7c5a8e9be882ab2608f4c0d69" [label=""];
}

