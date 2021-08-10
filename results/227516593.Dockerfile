[app/sources/227516593.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c8981345ac7fc92f62c62e5a25f456d1fd0fccea5e438b6380f58a671f8978ea" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:f424e3cf7295465df9450fabe93951c6a44067719893fbbd6fbbd53633ae33ae" [label="/bin/sh -c apt-get install -y build-essential" shape="box"];
  "sha256:a3803eb2c0a992b2e2d86577bb49fbd4df88f26233e166b3fe53b00c5617e0f4" [label="/bin/sh -c adduser --disabled-password --gecos '' tutorial" shape="box"];
  "sha256:73c5e3a4b07438a281606c88f0cb0cf510fb500210f5daee678a3372d5d55aa8" [label="/bin/sh -c chown -R root:tutorial /home/tutorial/" shape="box"];
  "sha256:f69c0d5a3ebdd7b8caad513c1883d865768c56d4f9ce4382fb9fccdea2e228a3" [label="/bin/sh -c chmod 750 /home/tutorial" shape="box"];
  "sha256:52485506e374c597126e76d72d79116ad38bf6b722dafd80859bf938cb4d304e" [label="/bin/sh -c touch /home/tutorial/flag.txt" shape="box"];
  "sha256:8c2c214f738b92e86cb3d3caeaff8d937661ecdd4833cf086447fe7933e3d1d2" [label="/bin/sh -c chown root:tutorial /home/tutorial/flag.txt" shape="box"];
  "sha256:20c53b83e3785b72f25aad7d3be9d9638976a92e65da5e1840f5ab631f4c8f67" [label="/bin/sh -c chmod 440 /home/tutorial/flag.txt" shape="box"];
  "sha256:3650e96b41473834c1d11ccf87e8e53baef53e7ee6f5f442049382a547f4c213" [label="/bin/sh -c chmod 740 /usr/bin/top" shape="box"];
  "sha256:2f5e1d040680da4aaa2e1dece5b2646e97e200385beacb43ffc808f68cc4f26d" [label="/bin/sh -c chmod 740 /bin/ps" shape="box"];
  "sha256:6d0f02bb8043a9649666a23286ba42b50363e0bfe828a6ae963a2ae3734a52fe" [label="/bin/sh -c chmod 740 /usr/bin/pgrep" shape="box"];
  "sha256:0ca85a3dbe4728c81449c3ddbdf9034c51d63b93fa125f13a3fe6c8a35f10d65" [label="/bin/sh -c export TERM=xterm" shape="box"];
  "sha256:aa547434f006c7ceb08828c8287b4993ec52eb973c536ff76ba97945d9b4769e" [label="mkdir{path=/home/tutorial}" shape="note"];
  "sha256:b8f5dc52ed05b9872c0136b444b9a5a7751fbfd506ff5ab3a7d5062d3650e43f" [label="local://context" shape="ellipse"];
  "sha256:0465ab475a6623171676a42a2aa67c700844d159106325c1abd39ce2fa5d6034" [label="copy{src=/tutorial.c, dest=/home/tutorial}" shape="note"];
  "sha256:3211696e7f83d881050176fc915b4bc927da0b4bd6405489f5113747b56e82ae" [label="copy{src=/flag.txt, dest=/home/tutorial}" shape="note"];
  "sha256:4993871902bfb62a9358ce96a914f72d75123946b28c61ddcb6f13c2fcebfb76" [label="/bin/sh -c gcc -Wall -o tutorial tutorial.c -ldl" shape="box"];
  "sha256:e5ec79d2278f6de1ff9157372d5c274ded76dc9ddccb0c54c93471a0e468181c" [label="sha256:e5ec79d2278f6de1ff9157372d5c274ded76dc9ddccb0c54c93471a0e468181c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c8981345ac7fc92f62c62e5a25f456d1fd0fccea5e438b6380f58a671f8978ea" [label=""];
  "sha256:c8981345ac7fc92f62c62e5a25f456d1fd0fccea5e438b6380f58a671f8978ea" -> "sha256:f424e3cf7295465df9450fabe93951c6a44067719893fbbd6fbbd53633ae33ae" [label=""];
  "sha256:f424e3cf7295465df9450fabe93951c6a44067719893fbbd6fbbd53633ae33ae" -> "sha256:a3803eb2c0a992b2e2d86577bb49fbd4df88f26233e166b3fe53b00c5617e0f4" [label=""];
  "sha256:a3803eb2c0a992b2e2d86577bb49fbd4df88f26233e166b3fe53b00c5617e0f4" -> "sha256:73c5e3a4b07438a281606c88f0cb0cf510fb500210f5daee678a3372d5d55aa8" [label=""];
  "sha256:73c5e3a4b07438a281606c88f0cb0cf510fb500210f5daee678a3372d5d55aa8" -> "sha256:f69c0d5a3ebdd7b8caad513c1883d865768c56d4f9ce4382fb9fccdea2e228a3" [label=""];
  "sha256:f69c0d5a3ebdd7b8caad513c1883d865768c56d4f9ce4382fb9fccdea2e228a3" -> "sha256:52485506e374c597126e76d72d79116ad38bf6b722dafd80859bf938cb4d304e" [label=""];
  "sha256:52485506e374c597126e76d72d79116ad38bf6b722dafd80859bf938cb4d304e" -> "sha256:8c2c214f738b92e86cb3d3caeaff8d937661ecdd4833cf086447fe7933e3d1d2" [label=""];
  "sha256:8c2c214f738b92e86cb3d3caeaff8d937661ecdd4833cf086447fe7933e3d1d2" -> "sha256:20c53b83e3785b72f25aad7d3be9d9638976a92e65da5e1840f5ab631f4c8f67" [label=""];
  "sha256:20c53b83e3785b72f25aad7d3be9d9638976a92e65da5e1840f5ab631f4c8f67" -> "sha256:3650e96b41473834c1d11ccf87e8e53baef53e7ee6f5f442049382a547f4c213" [label=""];
  "sha256:3650e96b41473834c1d11ccf87e8e53baef53e7ee6f5f442049382a547f4c213" -> "sha256:2f5e1d040680da4aaa2e1dece5b2646e97e200385beacb43ffc808f68cc4f26d" [label=""];
  "sha256:2f5e1d040680da4aaa2e1dece5b2646e97e200385beacb43ffc808f68cc4f26d" -> "sha256:6d0f02bb8043a9649666a23286ba42b50363e0bfe828a6ae963a2ae3734a52fe" [label=""];
  "sha256:6d0f02bb8043a9649666a23286ba42b50363e0bfe828a6ae963a2ae3734a52fe" -> "sha256:0ca85a3dbe4728c81449c3ddbdf9034c51d63b93fa125f13a3fe6c8a35f10d65" [label=""];
  "sha256:0ca85a3dbe4728c81449c3ddbdf9034c51d63b93fa125f13a3fe6c8a35f10d65" -> "sha256:aa547434f006c7ceb08828c8287b4993ec52eb973c536ff76ba97945d9b4769e" [label=""];
  "sha256:aa547434f006c7ceb08828c8287b4993ec52eb973c536ff76ba97945d9b4769e" -> "sha256:0465ab475a6623171676a42a2aa67c700844d159106325c1abd39ce2fa5d6034" [label=""];
  "sha256:b8f5dc52ed05b9872c0136b444b9a5a7751fbfd506ff5ab3a7d5062d3650e43f" -> "sha256:0465ab475a6623171676a42a2aa67c700844d159106325c1abd39ce2fa5d6034" [label=""];
  "sha256:0465ab475a6623171676a42a2aa67c700844d159106325c1abd39ce2fa5d6034" -> "sha256:3211696e7f83d881050176fc915b4bc927da0b4bd6405489f5113747b56e82ae" [label=""];
  "sha256:b8f5dc52ed05b9872c0136b444b9a5a7751fbfd506ff5ab3a7d5062d3650e43f" -> "sha256:3211696e7f83d881050176fc915b4bc927da0b4bd6405489f5113747b56e82ae" [label=""];
  "sha256:3211696e7f83d881050176fc915b4bc927da0b4bd6405489f5113747b56e82ae" -> "sha256:4993871902bfb62a9358ce96a914f72d75123946b28c61ddcb6f13c2fcebfb76" [label=""];
  "sha256:4993871902bfb62a9358ce96a914f72d75123946b28c61ddcb6f13c2fcebfb76" -> "sha256:e5ec79d2278f6de1ff9157372d5c274ded76dc9ddccb0c54c93471a0e468181c" [label=""];
}

