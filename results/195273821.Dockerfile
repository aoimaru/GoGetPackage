[app/sources/195273821.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:5d5b679e5680da0a98ff7b195b864424eb71da79b5e582565cb83f4d831b5930" [label="local://context" shape="ellipse"];
  "sha256:a0d53dc8e4d42b105438b32bdeba79f43f31d2fd7bf1cfa09b0e67e74089006d" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:2abec4ef593c5baade9bbba8036e4c9363bd2cd44b2451c304ca2628a5fddba1" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:7bbba5b6d87a183d2a9e18ae59ef794f4577e3406a002fcd1753ca58cf28aa26" [label="/bin/sh -c echo 'Europe/London' > /etc/timezone" shape="box"];
  "sha256:0339c94d63e1929c724e560072cad4d92062d73228780b8ed99e1c2df884ccf8" [label="/bin/sh -c dpkg-reconfigure --frontend noninteractive tzdata" shape="box"];
  "sha256:02ede508c70ce4a4c9b1e70c1f9d66aee93a7e4e7e9b10d3addf6cf1feea7771" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:54110b97f616dc532a3e936adb6432427834172cf5ff0445d7f9f0ad056d3a64" [label="/bin/sh -c apt-get update &&     apt-get install -y xvfb wget &&     apt-get install -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic &&     wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&     dpkg --unpack google-chrome-stable_current_amd64.deb &&     apt-get install -f -y &&     apt-get clean &&     rm google-chrome-stable_current_amd64.deb &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /usr/src/app" shape="box"];
  "sha256:715e6ef7b819f1ac06c1872ca565d13627753e7ac29cf99a09dfea7362f31d04" [label="sha256:715e6ef7b819f1ac06c1872ca565d13627753e7ac29cf99a09dfea7362f31d04" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:a0d53dc8e4d42b105438b32bdeba79f43f31d2fd7bf1cfa09b0e67e74089006d" [label=""];
  "sha256:5d5b679e5680da0a98ff7b195b864424eb71da79b5e582565cb83f4d831b5930" -> "sha256:a0d53dc8e4d42b105438b32bdeba79f43f31d2fd7bf1cfa09b0e67e74089006d" [label=""];
  "sha256:a0d53dc8e4d42b105438b32bdeba79f43f31d2fd7bf1cfa09b0e67e74089006d" -> "sha256:2abec4ef593c5baade9bbba8036e4c9363bd2cd44b2451c304ca2628a5fddba1" [label=""];
  "sha256:2abec4ef593c5baade9bbba8036e4c9363bd2cd44b2451c304ca2628a5fddba1" -> "sha256:7bbba5b6d87a183d2a9e18ae59ef794f4577e3406a002fcd1753ca58cf28aa26" [label=""];
  "sha256:7bbba5b6d87a183d2a9e18ae59ef794f4577e3406a002fcd1753ca58cf28aa26" -> "sha256:0339c94d63e1929c724e560072cad4d92062d73228780b8ed99e1c2df884ccf8" [label=""];
  "sha256:0339c94d63e1929c724e560072cad4d92062d73228780b8ed99e1c2df884ccf8" -> "sha256:02ede508c70ce4a4c9b1e70c1f9d66aee93a7e4e7e9b10d3addf6cf1feea7771" [label=""];
  "sha256:02ede508c70ce4a4c9b1e70c1f9d66aee93a7e4e7e9b10d3addf6cf1feea7771" -> "sha256:54110b97f616dc532a3e936adb6432427834172cf5ff0445d7f9f0ad056d3a64" [label=""];
  "sha256:54110b97f616dc532a3e936adb6432427834172cf5ff0445d7f9f0ad056d3a64" -> "sha256:715e6ef7b819f1ac06c1872ca565d13627753e7ac29cf99a09dfea7362f31d04" [label=""];
}

