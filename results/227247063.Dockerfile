[app/sources/227247063.Dockerfile]
digraph {
  "sha256:da218d74b79dd5b2ce208798741dc787c9ad2c959f8bb1f722094f83fe92324e" [label="docker-image://docker.io/library/npm-dependencies:latest" shape="ellipse"];
  "sha256:eff871df330a2ce2b214a0ecd6bd86a1d0672f07ec0122e44078a3dc7449cfd9" [label="/bin/sh -c npm install -g ./ethereum-registration-service" shape="box"];
  "sha256:5763017cb3f89fd681fe508b11f8fc025cdac606bdeb6ae785506a68d34ecd8d" [label="/bin/sh -c npm install -g ./ethereum-user-db-service" shape="box"];
  "sha256:d1cf1e8bdefe52995d6139eb0dac538db93a2fd929a250012abf449deaa7c6d4" [label="/bin/sh -c npm install -g ./ethereum-crypto" shape="box"];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" [label="local://context" shape="ellipse"];
  "sha256:541b5a08b1b6c3e9d7074889a27959b33a469f0efa615eba4e6a19d3ca047892" [label="copy{src=/package.json, dest=/package.json}" shape="note"];
  "sha256:feacb52b90b1a9af83ca12182a5ae584617ace15208eeb3b625875e72571c6a0" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4e57179d13b7b003b4b43b2bf1d39d516b82a68d7bb7b000848dde2b3ea09755" [label="copy{src=/src, dest=/src}" shape="note"];
  "sha256:b520a4e68b7f9de7dfb9ba2b8ae38d319c5bb979a34d36685de54d43a5577859" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:b5a5f7963387c97a8615970837bac22fba023fc3edca0fa960a6f96c706321ce" [label="copy{src=/test, dest=/test}" shape="note"];
  "sha256:987718d88063676563b39e5fe75bb5898bc87ee4727441c8dcdc12080c13ebe6" [label="copy{src=/index.js, dest=/index.js}" shape="note"];
  "sha256:3e37c756c04d8fc0e5ffd222790bf3fb0dd86c792d34981d534ed5e19c85d4f3" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:a53872f268142618667e19284de1a1fe39c80f5ff97d6b8cca40fdd19f80673d" [label="/bin/sh -c tr -d '\\r' < start.sh > start2.sh" shape="box"];
  "sha256:4b2e4dc17b3f67d806e66b78817991277acdb4be12e68965e718aedcedaa3803" [label="/bin/sh -c rm start.sh" shape="box"];
  "sha256:a1cb21698f8b7414a39dc69d74515d4718943c82d02efaff42fa25a122c42034" [label="/bin/sh -c mv start2.sh start.sh" shape="box"];
  "sha256:08717df1ce48b4bf78f95c93e77a606b94b10b8100ddcd3ba8d3b1c74d1c7f67" [label="/bin/sh -c npm test" shape="box"];
  "sha256:c96551f921c1f82d50d41a59939078c6202e643965fed39ef32679165b008cfa" [label="sha256:c96551f921c1f82d50d41a59939078c6202e643965fed39ef32679165b008cfa" shape="plaintext"];
  "sha256:da218d74b79dd5b2ce208798741dc787c9ad2c959f8bb1f722094f83fe92324e" -> "sha256:eff871df330a2ce2b214a0ecd6bd86a1d0672f07ec0122e44078a3dc7449cfd9" [label=""];
  "sha256:eff871df330a2ce2b214a0ecd6bd86a1d0672f07ec0122e44078a3dc7449cfd9" -> "sha256:5763017cb3f89fd681fe508b11f8fc025cdac606bdeb6ae785506a68d34ecd8d" [label=""];
  "sha256:5763017cb3f89fd681fe508b11f8fc025cdac606bdeb6ae785506a68d34ecd8d" -> "sha256:d1cf1e8bdefe52995d6139eb0dac538db93a2fd929a250012abf449deaa7c6d4" [label=""];
  "sha256:d1cf1e8bdefe52995d6139eb0dac538db93a2fd929a250012abf449deaa7c6d4" -> "sha256:541b5a08b1b6c3e9d7074889a27959b33a469f0efa615eba4e6a19d3ca047892" [label=""];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" -> "sha256:541b5a08b1b6c3e9d7074889a27959b33a469f0efa615eba4e6a19d3ca047892" [label=""];
  "sha256:541b5a08b1b6c3e9d7074889a27959b33a469f0efa615eba4e6a19d3ca047892" -> "sha256:feacb52b90b1a9af83ca12182a5ae584617ace15208eeb3b625875e72571c6a0" [label=""];
  "sha256:feacb52b90b1a9af83ca12182a5ae584617ace15208eeb3b625875e72571c6a0" -> "sha256:4e57179d13b7b003b4b43b2bf1d39d516b82a68d7bb7b000848dde2b3ea09755" [label=""];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" -> "sha256:4e57179d13b7b003b4b43b2bf1d39d516b82a68d7bb7b000848dde2b3ea09755" [label=""];
  "sha256:4e57179d13b7b003b4b43b2bf1d39d516b82a68d7bb7b000848dde2b3ea09755" -> "sha256:b520a4e68b7f9de7dfb9ba2b8ae38d319c5bb979a34d36685de54d43a5577859" [label=""];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" -> "sha256:b520a4e68b7f9de7dfb9ba2b8ae38d319c5bb979a34d36685de54d43a5577859" [label=""];
  "sha256:b520a4e68b7f9de7dfb9ba2b8ae38d319c5bb979a34d36685de54d43a5577859" -> "sha256:b5a5f7963387c97a8615970837bac22fba023fc3edca0fa960a6f96c706321ce" [label=""];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" -> "sha256:b5a5f7963387c97a8615970837bac22fba023fc3edca0fa960a6f96c706321ce" [label=""];
  "sha256:b5a5f7963387c97a8615970837bac22fba023fc3edca0fa960a6f96c706321ce" -> "sha256:987718d88063676563b39e5fe75bb5898bc87ee4727441c8dcdc12080c13ebe6" [label=""];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" -> "sha256:987718d88063676563b39e5fe75bb5898bc87ee4727441c8dcdc12080c13ebe6" [label=""];
  "sha256:987718d88063676563b39e5fe75bb5898bc87ee4727441c8dcdc12080c13ebe6" -> "sha256:3e37c756c04d8fc0e5ffd222790bf3fb0dd86c792d34981d534ed5e19c85d4f3" [label=""];
  "sha256:794ee5e8ebf67f9e2250cc75932827a9226d4438d68da810ed140cbc666a29df" -> "sha256:3e37c756c04d8fc0e5ffd222790bf3fb0dd86c792d34981d534ed5e19c85d4f3" [label=""];
  "sha256:3e37c756c04d8fc0e5ffd222790bf3fb0dd86c792d34981d534ed5e19c85d4f3" -> "sha256:a53872f268142618667e19284de1a1fe39c80f5ff97d6b8cca40fdd19f80673d" [label=""];
  "sha256:a53872f268142618667e19284de1a1fe39c80f5ff97d6b8cca40fdd19f80673d" -> "sha256:4b2e4dc17b3f67d806e66b78817991277acdb4be12e68965e718aedcedaa3803" [label=""];
  "sha256:4b2e4dc17b3f67d806e66b78817991277acdb4be12e68965e718aedcedaa3803" -> "sha256:a1cb21698f8b7414a39dc69d74515d4718943c82d02efaff42fa25a122c42034" [label=""];
  "sha256:a1cb21698f8b7414a39dc69d74515d4718943c82d02efaff42fa25a122c42034" -> "sha256:08717df1ce48b4bf78f95c93e77a606b94b10b8100ddcd3ba8d3b1c74d1c7f67" [label=""];
  "sha256:08717df1ce48b4bf78f95c93e77a606b94b10b8100ddcd3ba8d3b1c74d1c7f67" -> "sha256:c96551f921c1f82d50d41a59939078c6202e643965fed39ef32679165b008cfa" [label=""];
}

