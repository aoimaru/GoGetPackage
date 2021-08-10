[app/sources/271339512.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0a2457418d409e4fcc94f8f21b920848114e6ff3060911da5ed7c99885bb7255" [label="/bin/sh -c useradd -m -d /home/$user/ -s /bin/bash $user" shape="box"];
  "sha256:614714ac80a869d61dc63e4ca17de9372663b4e3f1028cdf925a645c0f7041bd" [label="/bin/sh -c echo \"$user     hard    nproc   20\" >> /etc/security/limits.conf" shape="box"];
  "sha256:3ab50cafc98e2c11bbf16ce0d8a7e5b351a70fc2ae65a891f5b6ffd3febab3ce" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:37c941c83f34b2d202fee94bf74f300cf68f6b1b2540fb961d05c46e96e42ee8" [label="/bin/sh -c apt-get install -y xinetd python" shape="box"];
  "sha256:0e243d0a41e9446a86d52b40d5eef62fc25ea984132b52ddc64c468c014f4da0" [label="local://context" shape="ellipse"];
  "sha256:07f8c05e53bb4f013e9aa241813ef924b2363994ad9cd376934ac7edfc2d4bcb" [label="copy{src=/challenge.py, dest=/home/pygoblin/challenge.py}" shape="note"];
  "sha256:f10d55e5042486d91db2680827b5cfb409451703616aa7e24de17cf2d4e1f043" [label="copy{src=/flag, dest=/home/pygoblin/flag}" shape="note"];
  "sha256:dc1b03737579dea5f0c47d156c1a5597b997a74fdf54dcedda889f6d7121d500" [label="copy{src=/xinetd_conf, dest=/etc/xinetd.d/xinetd_conf}" shape="note"];
  "sha256:64ba574efa400dde24503eb833e29a3c3cf55b4f4be4b4b3cc99d1bd74a88a65" [label="/bin/sh -c chown -R root:$user /home/$user" shape="box"];
  "sha256:e313d36174e1e6095196144e330469d36c23df0671ed40cc3fca58a82dee1618" [label="/bin/sh -c chmod -R 750 /home/$user" shape="box"];
  "sha256:70ccaec7642e91b935e2bf56649fce7fab1922df2eae04ea07859b3d62d5fd00" [label="/bin/sh -c chmod 440 /home/$user/flag" shape="box"];
  "sha256:c977984b7218eab4165b3731cb4ca9dc78d1faaf19ce5269b3dfcec7be35be50" [label="sha256:c977984b7218eab4165b3731cb4ca9dc78d1faaf19ce5269b3dfcec7be35be50" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0a2457418d409e4fcc94f8f21b920848114e6ff3060911da5ed7c99885bb7255" [label=""];
  "sha256:0a2457418d409e4fcc94f8f21b920848114e6ff3060911da5ed7c99885bb7255" -> "sha256:614714ac80a869d61dc63e4ca17de9372663b4e3f1028cdf925a645c0f7041bd" [label=""];
  "sha256:614714ac80a869d61dc63e4ca17de9372663b4e3f1028cdf925a645c0f7041bd" -> "sha256:3ab50cafc98e2c11bbf16ce0d8a7e5b351a70fc2ae65a891f5b6ffd3febab3ce" [label=""];
  "sha256:3ab50cafc98e2c11bbf16ce0d8a7e5b351a70fc2ae65a891f5b6ffd3febab3ce" -> "sha256:37c941c83f34b2d202fee94bf74f300cf68f6b1b2540fb961d05c46e96e42ee8" [label=""];
  "sha256:37c941c83f34b2d202fee94bf74f300cf68f6b1b2540fb961d05c46e96e42ee8" -> "sha256:07f8c05e53bb4f013e9aa241813ef924b2363994ad9cd376934ac7edfc2d4bcb" [label=""];
  "sha256:0e243d0a41e9446a86d52b40d5eef62fc25ea984132b52ddc64c468c014f4da0" -> "sha256:07f8c05e53bb4f013e9aa241813ef924b2363994ad9cd376934ac7edfc2d4bcb" [label=""];
  "sha256:07f8c05e53bb4f013e9aa241813ef924b2363994ad9cd376934ac7edfc2d4bcb" -> "sha256:f10d55e5042486d91db2680827b5cfb409451703616aa7e24de17cf2d4e1f043" [label=""];
  "sha256:0e243d0a41e9446a86d52b40d5eef62fc25ea984132b52ddc64c468c014f4da0" -> "sha256:f10d55e5042486d91db2680827b5cfb409451703616aa7e24de17cf2d4e1f043" [label=""];
  "sha256:f10d55e5042486d91db2680827b5cfb409451703616aa7e24de17cf2d4e1f043" -> "sha256:dc1b03737579dea5f0c47d156c1a5597b997a74fdf54dcedda889f6d7121d500" [label=""];
  "sha256:0e243d0a41e9446a86d52b40d5eef62fc25ea984132b52ddc64c468c014f4da0" -> "sha256:dc1b03737579dea5f0c47d156c1a5597b997a74fdf54dcedda889f6d7121d500" [label=""];
  "sha256:dc1b03737579dea5f0c47d156c1a5597b997a74fdf54dcedda889f6d7121d500" -> "sha256:64ba574efa400dde24503eb833e29a3c3cf55b4f4be4b4b3cc99d1bd74a88a65" [label=""];
  "sha256:64ba574efa400dde24503eb833e29a3c3cf55b4f4be4b4b3cc99d1bd74a88a65" -> "sha256:e313d36174e1e6095196144e330469d36c23df0671ed40cc3fca58a82dee1618" [label=""];
  "sha256:e313d36174e1e6095196144e330469d36c23df0671ed40cc3fca58a82dee1618" -> "sha256:70ccaec7642e91b935e2bf56649fce7fab1922df2eae04ea07859b3d62d5fd00" [label=""];
  "sha256:70ccaec7642e91b935e2bf56649fce7fab1922df2eae04ea07859b3d62d5fd00" -> "sha256:c977984b7218eab4165b3731cb4ca9dc78d1faaf19ce5269b3dfcec7be35be50" [label=""];
}

