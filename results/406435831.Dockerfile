[app/sources/406435831.Dockerfile]
digraph {
  "sha256:5b3e20d1af5eb53be3ba02c3d6976accde91e21e69829c6fa37788a5e020eebf" [label="docker-image://docker.io/cloudnativecomputer/cloud-computer:latest" shape="ellipse"];
  "sha256:57604e7dce8f4143f8cf6b828461becaa30fdc3d4445d1572e305faf1f9ec701" [label="/bin/sh -c sudo apt-get update -qq &&   sudo apt-get install -qq p7zip-full dmg2img &&   git clone --depth 1 https://github.com/jaredallard/notion-app.git /opt/notion &&   cd /opt/notion &&   ./build.sh" shape="box"];
  "sha256:eb3b8eaf200225ba596753f1b2a48d73d9711ebf1197bc071492747ecc9be16c" [label="sha256:eb3b8eaf200225ba596753f1b2a48d73d9711ebf1197bc071492747ecc9be16c" shape="plaintext"];
  "sha256:5b3e20d1af5eb53be3ba02c3d6976accde91e21e69829c6fa37788a5e020eebf" -> "sha256:57604e7dce8f4143f8cf6b828461becaa30fdc3d4445d1572e305faf1f9ec701" [label=""];
  "sha256:57604e7dce8f4143f8cf6b828461becaa30fdc3d4445d1572e305faf1f9ec701" -> "sha256:eb3b8eaf200225ba596753f1b2a48d73d9711ebf1197bc071492747ecc9be16c" [label=""];
}

