[app/sources/322659675.Dockerfile]
digraph {
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" [label="docker-image://docker.io/library/node:carbon" shape="ellipse"];
  "sha256:e39ae96a35f74566bf28bf2a6ecfb0df0eade9dd5777b2c91926c6be4d10273d" [label="local://context" shape="ellipse"];
  "sha256:2fbf450b068f76001d859e08ef94d4884409559a560c31e323f77af6e9377610" [label="copy{src=/package.json, dest=/},copy{src=/package-lock.json, dest=/},copy{src=/app.js, dest=/}" shape="note"];
  "sha256:f1f6ff5bc5ac86526be05ba2ddf71dd81cd678fbecc960b3b04259e91155480f" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c6cc4142d08a1da97b35c0847cc78987b4ea4112a78d1b347e0fe8881b0e8f10" [label="sha256:c6cc4142d08a1da97b35c0847cc78987b4ea4112a78d1b347e0fe8881b0e8f10" shape="plaintext"];
  "sha256:9c4d21a419da60f9fcc52a5e827cbd976adfa9a6afc84927a8790862376b75c2" -> "sha256:2fbf450b068f76001d859e08ef94d4884409559a560c31e323f77af6e9377610" [label=""];
  "sha256:e39ae96a35f74566bf28bf2a6ecfb0df0eade9dd5777b2c91926c6be4d10273d" -> "sha256:2fbf450b068f76001d859e08ef94d4884409559a560c31e323f77af6e9377610" [label=""];
  "sha256:2fbf450b068f76001d859e08ef94d4884409559a560c31e323f77af6e9377610" -> "sha256:f1f6ff5bc5ac86526be05ba2ddf71dd81cd678fbecc960b3b04259e91155480f" [label=""];
  "sha256:f1f6ff5bc5ac86526be05ba2ddf71dd81cd678fbecc960b3b04259e91155480f" -> "sha256:c6cc4142d08a1da97b35c0847cc78987b4ea4112a78d1b347e0fe8881b0e8f10" [label=""];
}

