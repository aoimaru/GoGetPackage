[app/sources/228102659.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:f240bff561cf9c3fc2b5434d66cf2b5b32e7e2930df467cbe0f5a6638daf755d" [label="/bin/sh -c groupadd -g ${GROUP_ID} dash" shape="box"];
  "sha256:a0bad63956ca1475f05e6a46c5c63216439c54250ec1dc2e7990dd18e24647de" [label="/bin/sh -c useradd -u ${USER_ID} -g dash -s /bin/bash -m -d /dash dash" shape="box"];
  "sha256:e061ee5b98e8603057d9ee398896f6f7f5075a322f5491b3f1bfcb01318ca363" [label="/bin/sh -c chown dash:dash -R /dash" shape="box"];
  "sha256:61a9455be61f72fab587d77c278384846830d2af7a9cd2140f411fd746e1597c" [label="https://github.com/dashpay/dash/releases/download/v0.14.0.1/dashcore-0.14.0.1-x86_64-linux-gnu.tar.gz" shape="ellipse"];
  "sha256:2b8d15890b3cc55fae0225d77b7857b2fd46f28d33d0f3ab90566d9b113f7970" [label="copy{src=/dashcore-0.14.0.1-x86_64-linux-gnu.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:01b564c417d7e20b30e5869232bf4b7f6ca93a4d1f46acf2bfc64381b8369ad9" [label="/bin/sh -c tar -xvf /tmp/dashcore-*.tar.gz -C /tmp/" shape="box"];
  "sha256:323dfb2dfa1ef775fb3878adb51bbf9b454daddd375073b1686f7c257b191651" [label="/bin/sh -c cp /tmp/dashcore*/bin/*  /usr/local/bin" shape="box"];
  "sha256:1a8d30f5790e50d96567287f974fe98ef594432bea3e5b724ccc84bc02c00883" [label="/bin/sh -c rm -rf /tmp/dashcore*" shape="box"];
  "sha256:4f9ae809d9d3153e91d156fa227df1f7b69886a3275a50d7b3744fb3fddd54da" [label="local://context" shape="ellipse"];
  "sha256:0aeb694156b2fcfe7e77fa53ef04835f0dfe771fd1ef284d04ace52d0bd0bfa6" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:2090ee9debfd5466fd05743f44338b938996b81212ce3e667458d019444148d6" [label="/bin/sh -c chmod a+x /usr/local/bin/*" shape="box"];
  "sha256:5f87984bc459e59646aadeaf3a35a3cebe36a537c7f06c4f6b61de0b7939f5e3" [label="mkdir{path=/dash}" shape="note"];
  "sha256:be8d6fe87eab5fcd506a12204c86c0c4a4f291e2aea83c3832fe415ce8de5f7b" [label="sha256:be8d6fe87eab5fcd506a12204c86c0c4a4f291e2aea83c3832fe415ce8de5f7b" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:f240bff561cf9c3fc2b5434d66cf2b5b32e7e2930df467cbe0f5a6638daf755d" [label=""];
  "sha256:f240bff561cf9c3fc2b5434d66cf2b5b32e7e2930df467cbe0f5a6638daf755d" -> "sha256:a0bad63956ca1475f05e6a46c5c63216439c54250ec1dc2e7990dd18e24647de" [label=""];
  "sha256:a0bad63956ca1475f05e6a46c5c63216439c54250ec1dc2e7990dd18e24647de" -> "sha256:e061ee5b98e8603057d9ee398896f6f7f5075a322f5491b3f1bfcb01318ca363" [label=""];
  "sha256:e061ee5b98e8603057d9ee398896f6f7f5075a322f5491b3f1bfcb01318ca363" -> "sha256:2b8d15890b3cc55fae0225d77b7857b2fd46f28d33d0f3ab90566d9b113f7970" [label=""];
  "sha256:61a9455be61f72fab587d77c278384846830d2af7a9cd2140f411fd746e1597c" -> "sha256:2b8d15890b3cc55fae0225d77b7857b2fd46f28d33d0f3ab90566d9b113f7970" [label=""];
  "sha256:2b8d15890b3cc55fae0225d77b7857b2fd46f28d33d0f3ab90566d9b113f7970" -> "sha256:01b564c417d7e20b30e5869232bf4b7f6ca93a4d1f46acf2bfc64381b8369ad9" [label=""];
  "sha256:01b564c417d7e20b30e5869232bf4b7f6ca93a4d1f46acf2bfc64381b8369ad9" -> "sha256:323dfb2dfa1ef775fb3878adb51bbf9b454daddd375073b1686f7c257b191651" [label=""];
  "sha256:323dfb2dfa1ef775fb3878adb51bbf9b454daddd375073b1686f7c257b191651" -> "sha256:1a8d30f5790e50d96567287f974fe98ef594432bea3e5b724ccc84bc02c00883" [label=""];
  "sha256:1a8d30f5790e50d96567287f974fe98ef594432bea3e5b724ccc84bc02c00883" -> "sha256:0aeb694156b2fcfe7e77fa53ef04835f0dfe771fd1ef284d04ace52d0bd0bfa6" [label=""];
  "sha256:4f9ae809d9d3153e91d156fa227df1f7b69886a3275a50d7b3744fb3fddd54da" -> "sha256:0aeb694156b2fcfe7e77fa53ef04835f0dfe771fd1ef284d04ace52d0bd0bfa6" [label=""];
  "sha256:0aeb694156b2fcfe7e77fa53ef04835f0dfe771fd1ef284d04ace52d0bd0bfa6" -> "sha256:2090ee9debfd5466fd05743f44338b938996b81212ce3e667458d019444148d6" [label=""];
  "sha256:2090ee9debfd5466fd05743f44338b938996b81212ce3e667458d019444148d6" -> "sha256:5f87984bc459e59646aadeaf3a35a3cebe36a537c7f06c4f6b61de0b7939f5e3" [label=""];
  "sha256:5f87984bc459e59646aadeaf3a35a3cebe36a537c7f06c4f6b61de0b7939f5e3" -> "sha256:be8d6fe87eab5fcd506a12204c86c0c4a4f291e2aea83c3832fe415ce8de5f7b" [label=""];
}

