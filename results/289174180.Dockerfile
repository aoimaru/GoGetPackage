[app/sources/289174180.Dockerfile]
digraph {
  "sha256:eca8395a05e9034bed9e8e6f69425a29bd38a4f25ff9b9e059420301883a4760" [label="local://context" shape="ellipse"];
  "sha256:f88744af39dbac5b173f9d6ef6455f36a880ef7c028b2b11dee5866572031b5d" [label="docker-image://docker.io/sheerun/critical:1.1.0" shape="ellipse"];
  "sha256:94a58f72271fa75468dc2bd009befed09ba70a613caf4a7b761499249aaee06c" [label="mkdir{path=/app}" shape="note"];
  "sha256:29a3cbeaf3c84a6eed0aea2828e2ecdda4da5952703cde39767ca5d58b812a9e" [label="copy{src=/*.json, dest=/app/}" shape="note"];
  "sha256:d716667a9d30e80db70d5c927693ad08d91eb2c0d6fdd91b800e34a0524d865c" [label="/bin/sh -c yarn" shape="box"];
  "sha256:fdef7717d6b3c82754c0a9bc6822fafe15bb8b16c037278e29cfba81be77c846" [label="/bin/sh -c yarn add critical@1.1.0 --offline" shape="box"];
  "sha256:c310e76e95436ccac3beaa4ff07c2d60d92e7a4ffb77a41bc0060bbeaa2b7cf9" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:8e24e78f0e43efdedf9e84b6d2b5af84e4829c713f6982634e4ac058234abca2" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:6ccc096ca755f9fbc7cdb7ae8836a11eff52aeed4bbf2b205a2e3d6a48974c74" [label="sha256:6ccc096ca755f9fbc7cdb7ae8836a11eff52aeed4bbf2b205a2e3d6a48974c74" shape="plaintext"];
  "sha256:f88744af39dbac5b173f9d6ef6455f36a880ef7c028b2b11dee5866572031b5d" -> "sha256:94a58f72271fa75468dc2bd009befed09ba70a613caf4a7b761499249aaee06c" [label=""];
  "sha256:94a58f72271fa75468dc2bd009befed09ba70a613caf4a7b761499249aaee06c" -> "sha256:29a3cbeaf3c84a6eed0aea2828e2ecdda4da5952703cde39767ca5d58b812a9e" [label=""];
  "sha256:eca8395a05e9034bed9e8e6f69425a29bd38a4f25ff9b9e059420301883a4760" -> "sha256:29a3cbeaf3c84a6eed0aea2828e2ecdda4da5952703cde39767ca5d58b812a9e" [label=""];
  "sha256:29a3cbeaf3c84a6eed0aea2828e2ecdda4da5952703cde39767ca5d58b812a9e" -> "sha256:d716667a9d30e80db70d5c927693ad08d91eb2c0d6fdd91b800e34a0524d865c" [label=""];
  "sha256:d716667a9d30e80db70d5c927693ad08d91eb2c0d6fdd91b800e34a0524d865c" -> "sha256:fdef7717d6b3c82754c0a9bc6822fafe15bb8b16c037278e29cfba81be77c846" [label=""];
  "sha256:fdef7717d6b3c82754c0a9bc6822fafe15bb8b16c037278e29cfba81be77c846" -> "sha256:c310e76e95436ccac3beaa4ff07c2d60d92e7a4ffb77a41bc0060bbeaa2b7cf9" [label=""];
  "sha256:eca8395a05e9034bed9e8e6f69425a29bd38a4f25ff9b9e059420301883a4760" -> "sha256:c310e76e95436ccac3beaa4ff07c2d60d92e7a4ffb77a41bc0060bbeaa2b7cf9" [label=""];
  "sha256:c310e76e95436ccac3beaa4ff07c2d60d92e7a4ffb77a41bc0060bbeaa2b7cf9" -> "sha256:8e24e78f0e43efdedf9e84b6d2b5af84e4829c713f6982634e4ac058234abca2" [label=""];
  "sha256:8e24e78f0e43efdedf9e84b6d2b5af84e4829c713f6982634e4ac058234abca2" -> "sha256:6ccc096ca755f9fbc7cdb7ae8836a11eff52aeed4bbf2b205a2e3d6a48974c74" [label=""];
}

