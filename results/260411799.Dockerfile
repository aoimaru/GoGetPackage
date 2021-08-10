[app/sources/260411799.Dockerfile]
digraph {
  "sha256:0ed946d3596b20cfb2db35a6552ef213125c1894a5513df70da648a539dd7036" [label="docker-image://docker.io/risingstack/alpine:3.4-v6.9.4-4.2.0@sha256:d9f86ed6c52cf00d7126a3c166adb8a053333ff9efe477627329cbe6f0972e86" shape="ellipse"];
  "sha256:6c0ec4faf2f53098960448eeb889b2b84c9e5439ffd03d593ae7f20d20ab281d" [label="local://context" shape="ellipse"];
  "sha256:5bbc6c39601023ca12f17da3bf119c5cfe0781938bcc603e2d8c509853832a28" [label="copy{src=/package.json, dest=/usr/src/node-app/package.json}" shape="note"];
  "sha256:c3ef2d22afdd3d4e1e892bfb7b97d75ddcb1fcfeb4414afcc19fd9930946b675" [label="/bin/sh -c npm install" shape="box"];
  "sha256:51194d9c0f75033c8fc4eedfed5a0eb5913a5a83d6dfa0c7a58d9d643d1e8035" [label="copy{src=/, dest=/usr/src/node-app/}" shape="note"];
  "sha256:9767bc9a6fa0301d8f30a2e1744312fd282d011a48d720ddea01e412b503065c" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:6da7c1fbe78bf6998861cba69e6ce066139ab63ddaefe8ee5a5000231c15136a" [label="sha256:6da7c1fbe78bf6998861cba69e6ce066139ab63ddaefe8ee5a5000231c15136a" shape="plaintext"];
  "sha256:0ed946d3596b20cfb2db35a6552ef213125c1894a5513df70da648a539dd7036" -> "sha256:5bbc6c39601023ca12f17da3bf119c5cfe0781938bcc603e2d8c509853832a28" [label=""];
  "sha256:6c0ec4faf2f53098960448eeb889b2b84c9e5439ffd03d593ae7f20d20ab281d" -> "sha256:5bbc6c39601023ca12f17da3bf119c5cfe0781938bcc603e2d8c509853832a28" [label=""];
  "sha256:5bbc6c39601023ca12f17da3bf119c5cfe0781938bcc603e2d8c509853832a28" -> "sha256:c3ef2d22afdd3d4e1e892bfb7b97d75ddcb1fcfeb4414afcc19fd9930946b675" [label=""];
  "sha256:c3ef2d22afdd3d4e1e892bfb7b97d75ddcb1fcfeb4414afcc19fd9930946b675" -> "sha256:51194d9c0f75033c8fc4eedfed5a0eb5913a5a83d6dfa0c7a58d9d643d1e8035" [label=""];
  "sha256:6c0ec4faf2f53098960448eeb889b2b84c9e5439ffd03d593ae7f20d20ab281d" -> "sha256:51194d9c0f75033c8fc4eedfed5a0eb5913a5a83d6dfa0c7a58d9d643d1e8035" [label=""];
  "sha256:51194d9c0f75033c8fc4eedfed5a0eb5913a5a83d6dfa0c7a58d9d643d1e8035" -> "sha256:9767bc9a6fa0301d8f30a2e1744312fd282d011a48d720ddea01e412b503065c" [label=""];
  "sha256:9767bc9a6fa0301d8f30a2e1744312fd282d011a48d720ddea01e412b503065c" -> "sha256:6da7c1fbe78bf6998861cba69e6ce066139ab63ddaefe8ee5a5000231c15136a" [label=""];
}

