[app/sources/170596883.Dockerfile]
digraph {
  "sha256:6328450c67cb1227021a919582d3f5d43caf8c2f8993c3077a3376227c010f24" [label="docker-image://docker.io/drush/drush:base-alpine" shape="ellipse"];
  "sha256:4e049c5998ce59a1fbb8922436ecc261c337dff807d2dc8d9902c24b72f801ed" [label="/bin/sh -c curl -fsSL -o /usr/local/bin/drush \"https://github.com/drush-ops/drush/releases/download/$DRUSH_VERSION/drush.phar\" &&   chmod +x /usr/local/bin/drush" shape="box"];
  "sha256:eb7251ac90d810d58822c1443cc4b3ac114cb24afdf428a01dd5bd6a78eea646" [label="/bin/sh -c drush core-status" shape="box"];
  "sha256:c9a0a74200870423c75d91308cff71be028ebbd681e0a2e36113fb157878b6db" [label="sha256:c9a0a74200870423c75d91308cff71be028ebbd681e0a2e36113fb157878b6db" shape="plaintext"];
  "sha256:6328450c67cb1227021a919582d3f5d43caf8c2f8993c3077a3376227c010f24" -> "sha256:4e049c5998ce59a1fbb8922436ecc261c337dff807d2dc8d9902c24b72f801ed" [label=""];
  "sha256:4e049c5998ce59a1fbb8922436ecc261c337dff807d2dc8d9902c24b72f801ed" -> "sha256:eb7251ac90d810d58822c1443cc4b3ac114cb24afdf428a01dd5bd6a78eea646" [label=""];
  "sha256:eb7251ac90d810d58822c1443cc4b3ac114cb24afdf428a01dd5bd6a78eea646" -> "sha256:c9a0a74200870423c75d91308cff71be028ebbd681e0a2e36113fb157878b6db" [label=""];
}

