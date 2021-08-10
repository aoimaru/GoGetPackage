[app/sources/469003198.Dockerfile]
digraph {
  "sha256:c0a66d2c57cb18547beb728b29a35713525dcb508add9fc5db04b0b747b9c510" [label="local://context" shape="ellipse"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:1635cae0f05b7902e0845503607acbda69e28e9ef6aa70c8cf8b7326b2de6977" [label="copy{src=/, dest=/wakatime-sync}" shape="note"];
  "sha256:33473d822ee8378ae8b008e5bfd265f05e0b50dc0858067e31b3a4b65ab9206e" [label="mkdir{path=/wakatime-sync}" shape="note"];
  "sha256:10889698176ebdafe70b13787fbc2181e679cbb23e2d936d64a26d2b52596211" [label="/bin/sh -c npm install && npm install pm2 -g && npm run build" shape="box"];
  "sha256:87da095f2a13cbd335c35a945db9a6cf164a518752579e8dc8646b3d40d2ab61" [label="sha256:87da095f2a13cbd335c35a945db9a6cf164a518752579e8dc8646b3d40d2ab61" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:1635cae0f05b7902e0845503607acbda69e28e9ef6aa70c8cf8b7326b2de6977" [label=""];
  "sha256:c0a66d2c57cb18547beb728b29a35713525dcb508add9fc5db04b0b747b9c510" -> "sha256:1635cae0f05b7902e0845503607acbda69e28e9ef6aa70c8cf8b7326b2de6977" [label=""];
  "sha256:1635cae0f05b7902e0845503607acbda69e28e9ef6aa70c8cf8b7326b2de6977" -> "sha256:33473d822ee8378ae8b008e5bfd265f05e0b50dc0858067e31b3a4b65ab9206e" [label=""];
  "sha256:33473d822ee8378ae8b008e5bfd265f05e0b50dc0858067e31b3a4b65ab9206e" -> "sha256:10889698176ebdafe70b13787fbc2181e679cbb23e2d936d64a26d2b52596211" [label=""];
  "sha256:10889698176ebdafe70b13787fbc2181e679cbb23e2d936d64a26d2b52596211" -> "sha256:87da095f2a13cbd335c35a945db9a6cf164a518752579e8dc8646b3d40d2ab61" [label=""];
}

