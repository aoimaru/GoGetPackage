[app/sources/257533078.Dockerfile]
digraph {
  "sha256:eab509bd6a84ab9f695a3ad65339deab09ebe9de26956e9a82390aae2eeebdd0" [label="docker-image://docker.io/library/php:7.2.0-alpine" shape="ellipse"];
  "sha256:58c7f4610d229aca9a36a2d3d74d1826563961bb8bde2521019b0211b98e92c3" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:c130a585e64010292e0369f6de6f82db010177d4205c8f0b27ceef88e2184536" [label="/bin/sh -c apk add libjpeg-turbo-dev" shape="box"];
  "sha256:6c46df05ef7ddee4f3ba26a15d0b0d96fb41e1d70eedab084f14193d1b745074" [label="/bin/sh -c apk add libpng-dev" shape="box"];
  "sha256:0361ab19b7ea439b9631a007d4930bb83b5b8d392eeb70a30ff79c4cf26c6a65" [label="/bin/sh -c docker-php-ext-install gd" shape="box"];
  "sha256:d34696eeeff9f72ccabab86c659b7d93713b31b44aed403f01a3b7bef4a27d28" [label="/bin/sh -c docker-php-ext-install pdo_mysql" shape="box"];
  "sha256:e9302551a13f9198b173e3e8d1ccb4bc0cc3d25add6dfbe66c0a5b696e1a5af5" [label="/bin/sh -c docker-php-ext-install bcmath" shape="box"];
  "sha256:ab84a56ebf165b45349d4f624c5181e32ce4ed9a682103140da1fb1f352c2898" [label="/bin/sh -c apk add supervisor" shape="box"];
  "sha256:d36a4ac556af7df5647411a8241d770a073177a947da3aa6bcd2df7532e5e4ee" [label="/bin/sh -c mkdir -p /etc/supervisor.d" shape="box"];
  "sha256:d3198363363f75fd12d5a525706ed40dd4eb17bd25fdcb4e19c8434cf80c0fbc" [label="sha256:d3198363363f75fd12d5a525706ed40dd4eb17bd25fdcb4e19c8434cf80c0fbc" shape="plaintext"];
  "sha256:eab509bd6a84ab9f695a3ad65339deab09ebe9de26956e9a82390aae2eeebdd0" -> "sha256:58c7f4610d229aca9a36a2d3d74d1826563961bb8bde2521019b0211b98e92c3" [label=""];
  "sha256:58c7f4610d229aca9a36a2d3d74d1826563961bb8bde2521019b0211b98e92c3" -> "sha256:c130a585e64010292e0369f6de6f82db010177d4205c8f0b27ceef88e2184536" [label=""];
  "sha256:c130a585e64010292e0369f6de6f82db010177d4205c8f0b27ceef88e2184536" -> "sha256:6c46df05ef7ddee4f3ba26a15d0b0d96fb41e1d70eedab084f14193d1b745074" [label=""];
  "sha256:6c46df05ef7ddee4f3ba26a15d0b0d96fb41e1d70eedab084f14193d1b745074" -> "sha256:0361ab19b7ea439b9631a007d4930bb83b5b8d392eeb70a30ff79c4cf26c6a65" [label=""];
  "sha256:0361ab19b7ea439b9631a007d4930bb83b5b8d392eeb70a30ff79c4cf26c6a65" -> "sha256:d34696eeeff9f72ccabab86c659b7d93713b31b44aed403f01a3b7bef4a27d28" [label=""];
  "sha256:d34696eeeff9f72ccabab86c659b7d93713b31b44aed403f01a3b7bef4a27d28" -> "sha256:e9302551a13f9198b173e3e8d1ccb4bc0cc3d25add6dfbe66c0a5b696e1a5af5" [label=""];
  "sha256:e9302551a13f9198b173e3e8d1ccb4bc0cc3d25add6dfbe66c0a5b696e1a5af5" -> "sha256:ab84a56ebf165b45349d4f624c5181e32ce4ed9a682103140da1fb1f352c2898" [label=""];
  "sha256:ab84a56ebf165b45349d4f624c5181e32ce4ed9a682103140da1fb1f352c2898" -> "sha256:d36a4ac556af7df5647411a8241d770a073177a947da3aa6bcd2df7532e5e4ee" [label=""];
  "sha256:d36a4ac556af7df5647411a8241d770a073177a947da3aa6bcd2df7532e5e4ee" -> "sha256:d3198363363f75fd12d5a525706ed40dd4eb17bd25fdcb4e19c8434cf80c0fbc" [label=""];
}

