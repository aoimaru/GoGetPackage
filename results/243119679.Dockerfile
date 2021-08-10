[app/sources/243119679.Dockerfile]
digraph {
  "sha256:2c405ca6a1389ee32bcdfd238b9f539f2f0bd9bac8e38bfafff793ebaec8ed47" [label="docker-image://gcr.io/tensorflow/tensorflow:1.0.0-gpu-py3" shape="ellipse"];
  "sha256:b9f6ce0de857b538d2d65095d5dd47106527a1e827c63b35511c1ac1f85782db" [label="/bin/sh -c mkdir -p ${deepspell_dir}" shape="box"];
  "sha256:3d75f271231b7872a7cd6ae83f81272e774fbaac14984501e8bd3edd3b476234" [label="/bin/sh -c apt-get update && apt-get install -y git" shape="box"];
  "sha256:bb5e4e0d4be48b8089a2a7b41cd99bb354f952e7a84b72929aaf9dcd03d9dc24" [label="/bin/sh -c pip3 --no-cache-dir install --no-dependencies git+https://github.com/fchollet/keras.git@${KERAS_VERSION}" shape="box"];
  "sha256:8043836af219f9495768ae6a6cce28c08d92ea44eba6e8ffad22cdf45ffeac9b" [label="/bin/sh -c pip3 --no-cache-dir install h5py" shape="box"];
  "sha256:bf1d34c2ea4adc348523ff913c3f0c1907d425903c40e75f5a0c99f15b504324" [label="/bin/sh -c dpkg-query -l > /dpkg-query-l.txt  && pip3 freeze > /pip3-freeze.txt" shape="box"];
  "sha256:9b9d70fc22aa25c345110bef7e5073c9addae8b6374da7217dee6774e8ca3524" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:67d26f3cff79a42830c1eaac288cc37eaa7d2d24054bf1de79b28f2fb3877e56" [label="local://context" shape="ellipse"];
  "sha256:8fc1c0c300611ef1f5b7438d235ef73f92820c4a223898a09a587addf2aff0f0" [label="copy{src=/, dest=/opt/deepspell}" shape="note"];
  "sha256:265791c9b7a2d318025225b7e45121fe7dfae194e7c199782be8def60aa68f71" [label="/bin/sh -c useradd -m -s /bin/bash -N -u ${deepspell_uid} ${deepspell_user} &&     chown ${deepspell_user} ${deepspell_dir} -R" shape="box"];
  "sha256:df7791a7d6c47aa45140de1ca3ac0bcdee95396aabad11d025d51348a18cec29" [label="mkdir{path=/opt/deepspell}" shape="note"];
  "sha256:c01d86d0ef6034969590d31f994b34757a686f7fa665b95b45833601c710df78" [label="sha256:c01d86d0ef6034969590d31f994b34757a686f7fa665b95b45833601c710df78" shape="plaintext"];
  "sha256:2c405ca6a1389ee32bcdfd238b9f539f2f0bd9bac8e38bfafff793ebaec8ed47" -> "sha256:b9f6ce0de857b538d2d65095d5dd47106527a1e827c63b35511c1ac1f85782db" [label=""];
  "sha256:b9f6ce0de857b538d2d65095d5dd47106527a1e827c63b35511c1ac1f85782db" -> "sha256:3d75f271231b7872a7cd6ae83f81272e774fbaac14984501e8bd3edd3b476234" [label=""];
  "sha256:3d75f271231b7872a7cd6ae83f81272e774fbaac14984501e8bd3edd3b476234" -> "sha256:bb5e4e0d4be48b8089a2a7b41cd99bb354f952e7a84b72929aaf9dcd03d9dc24" [label=""];
  "sha256:bb5e4e0d4be48b8089a2a7b41cd99bb354f952e7a84b72929aaf9dcd03d9dc24" -> "sha256:8043836af219f9495768ae6a6cce28c08d92ea44eba6e8ffad22cdf45ffeac9b" [label=""];
  "sha256:8043836af219f9495768ae6a6cce28c08d92ea44eba6e8ffad22cdf45ffeac9b" -> "sha256:bf1d34c2ea4adc348523ff913c3f0c1907d425903c40e75f5a0c99f15b504324" [label=""];
  "sha256:bf1d34c2ea4adc348523ff913c3f0c1907d425903c40e75f5a0c99f15b504324" -> "sha256:9b9d70fc22aa25c345110bef7e5073c9addae8b6374da7217dee6774e8ca3524" [label=""];
  "sha256:9b9d70fc22aa25c345110bef7e5073c9addae8b6374da7217dee6774e8ca3524" -> "sha256:8fc1c0c300611ef1f5b7438d235ef73f92820c4a223898a09a587addf2aff0f0" [label=""];
  "sha256:67d26f3cff79a42830c1eaac288cc37eaa7d2d24054bf1de79b28f2fb3877e56" -> "sha256:8fc1c0c300611ef1f5b7438d235ef73f92820c4a223898a09a587addf2aff0f0" [label=""];
  "sha256:8fc1c0c300611ef1f5b7438d235ef73f92820c4a223898a09a587addf2aff0f0" -> "sha256:265791c9b7a2d318025225b7e45121fe7dfae194e7c199782be8def60aa68f71" [label=""];
  "sha256:265791c9b7a2d318025225b7e45121fe7dfae194e7c199782be8def60aa68f71" -> "sha256:df7791a7d6c47aa45140de1ca3ac0bcdee95396aabad11d025d51348a18cec29" [label=""];
  "sha256:df7791a7d6c47aa45140de1ca3ac0bcdee95396aabad11d025d51348a18cec29" -> "sha256:c01d86d0ef6034969590d31f994b34757a686f7fa665b95b45833601c710df78" [label=""];
}

