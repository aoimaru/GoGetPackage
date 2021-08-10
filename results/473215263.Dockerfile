[app/sources/473215263.Dockerfile]
digraph {
  "sha256:9bc7b8029f373327bdea005c6307236aefa8733d9550f6f32430077cb67099ec" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:db64f68978201f9740256117c4e26e0a88bf40c63eea8567ff4aaaf902496171" [label="/bin/sh -c apt-get update &&     apt-get install -y nodejs &&     apt-get install -y phantomjs" shape="box"];
  "sha256:993d2a8dd36526bf9f7f32325d6634b4c16e54f48eb56bc116bf0a8bef483cea" [label="/bin/sh -c mkdir /test/" shape="box"];
  "sha256:196a578b0602d0fae379613d814707a6212d8d43da4e540b89c4397d1baa5c8f" [label="copy{src=/, dest=/test/}" shape="note"];
  "sha256:084bc51fe68e9f73b541599030e3b02a3cc7598e37564aa429fddec040d6674b" [label="mkdir{path=/test}" shape="note"];
  "sha256:56774533bc582349a38ea449107f6eb983a80f12cf615026087db5ab4559c428" [label="sha256:56774533bc582349a38ea449107f6eb983a80f12cf615026087db5ab4559c428" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:db64f68978201f9740256117c4e26e0a88bf40c63eea8567ff4aaaf902496171" [label=""];
  "sha256:db64f68978201f9740256117c4e26e0a88bf40c63eea8567ff4aaaf902496171" -> "sha256:993d2a8dd36526bf9f7f32325d6634b4c16e54f48eb56bc116bf0a8bef483cea" [label=""];
  "sha256:993d2a8dd36526bf9f7f32325d6634b4c16e54f48eb56bc116bf0a8bef483cea" -> "sha256:196a578b0602d0fae379613d814707a6212d8d43da4e540b89c4397d1baa5c8f" [label=""];
  "sha256:9bc7b8029f373327bdea005c6307236aefa8733d9550f6f32430077cb67099ec" -> "sha256:196a578b0602d0fae379613d814707a6212d8d43da4e540b89c4397d1baa5c8f" [label=""];
  "sha256:196a578b0602d0fae379613d814707a6212d8d43da4e540b89c4397d1baa5c8f" -> "sha256:084bc51fe68e9f73b541599030e3b02a3cc7598e37564aa429fddec040d6674b" [label=""];
  "sha256:084bc51fe68e9f73b541599030e3b02a3cc7598e37564aa429fddec040d6674b" -> "sha256:56774533bc582349a38ea449107f6eb983a80f12cf615026087db5ab4559c428" [label=""];
}

