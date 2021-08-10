[app/sources/327457100.Dockerfile]
digraph {
  "sha256:5f02e43a732111d6b90c7a0e23dea330df8961e69e2c05f95cd6a05d77990808" [label="docker-image://docker.io/nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:fe9f297bc2448455101ca85cc9a988adc1731184ef88d963e71c6ca60204468c" [label="/bin/sh -c apt-get update && apt-get install -y locales software-properties-common git" shape="box"];
  "sha256:cbd67ae1372384390869234cbfa8f255fb44b45cd8c181ae81c37d1b4812f4fa" [label="/bin/sh -c add-apt-repository -y ppa:deadsnakes/ppa &&       apt-get update &&       apt-get upgrade -y &&       apt-get install -y python3.6 python3.6-dev build-essential cmake libgtk2.0-dev python3.6-tk &&       curl https://bootstrap.pypa.io/get-pip.py | python3.6" shape="box"];
  "sha256:733e87015a2d2b4643805586fd6025bb1ab3794b71bf7c651ba306851f7d31b4" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     dpkg-reconfigure --frontend=noninteractive locales &&     update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:aa0ec80e3e4251eed1dbecae834b2fa9a9172aece23654d019fd69ebe04163d8" [label="https://raw.githubusercontent.com/OpenNMT/OpenNMT-py/master/requirements.txt" shape="ellipse"];
  "sha256:2cae0daed173b7ea47e84dbce4f71e06329f545920bb43a2d6e9f09ccfc6f0de" [label="copy{src=/requirements.txt, dest=/opennmt_requirements.txt}" shape="note"];
  "sha256:10bff5dfdd5c2095f6fbf1ed59423dc7dd6303a494d26708ea6a878d45a0b72b" [label="/bin/sh -c apt-get install -y git default-jre && pip3.6 install -r opennmt_requirements.txt && pip3.6 install numpy -I" shape="box"];
  "sha256:e37a60b76604d8dd1419f8ffd76fa16158874e7ff90e7493cf628caaa7e24951" [label="https://github.com/singnet/nlp-services/raw/master/translation/requirements.txt" shape="ellipse"];
  "sha256:c4a28be9eccc0425164dc7769f159ffd0ea9e664305a404c02807cf11728b584" [label="copy{src=/requirements.txt, dest=/tmp/service_requirements.txt}" shape="note"];
  "sha256:95997bb221b3c44c6f87295d9604804e1305bad23c2667d11a3a0a6b180c2600" [label="/bin/sh -c pip3.6 install -r /tmp/service_requirements.txt" shape="box"];
  "sha256:4360dd6b335a3697789a1a57542d8cb8116135b730b876fb734e488c03925541" [label="https://api.github.com/repos/singnet/nlp-services/compare/master...HEAD" shape="ellipse"];
  "sha256:56b535a91bca79473ab2d35d99d3939268fd058306995262fa500495e1bfe479" [label="copy{src=/master...HEAD, dest=/dev/null}" shape="note"];
  "sha256:37987bff1a08dd0789856507e7e01dd16c3e7c579002ce78ce0ac55723d20d02" [label="/bin/sh -c git clone -b ${GITHUB_BRANCH} https://github.com/${GITHUB_ACCOUNT}/${GITHUB_REPO}.git &&     cd ${GITHUB_REPO}/${SERVICE_FOLDER} &&     python3.6 ../fetch_models.py &&     git submodule update --init -- opennmt-py &&     cd .. && mv ${SERVICE_FOLDER}/ /${SERVICE_FOLDER} &&     rm -rf /${GITHUB_REPO}" shape="box"];
  "sha256:8c05864d8d94838ea3e18206c80cdfd8112dff793db9c4ef2d1af195b449f031" [label="https://github.com/singnet/snet-daemon/releases/download/v0.1.8/snet-daemon-v0.1.8-linux-amd64.tar.gz" shape="ellipse"];
  "sha256:52bfac63e83ae55b7c3329750e3f85f08710765e9d7ab129263e370de25ffb1a" [label="copy{src=/snet-daemon-v0.1.8-linux-amd64.tar.gz, dest=/tmp/snet-daemon-v0.1.8-linux-amd64.tar.gz}" shape="note"];
  "sha256:55915b33337a8d45d64ce440021e06cf833cdf5ae2979060ec64b0518edeab95" [label="/bin/sh -c cd /tmp &&     tar -xvf snet-daemon-${SNETD_VERSION}-linux-amd64.tar.gz &&     mv snet-daemon-${SNETD_VERSION}-linux-amd64/snetd /usr/bin/snetd &&     rm -rf snet-daemon-${SNETD_VERSION}-linux-amd64*" shape="box"];
  "sha256:0f9780092c061e8974a488f7096ba1d6e0cebda1185dd696ececf47cf8f00937" [label="mkdir{path=/translation}" shape="note"];
  "sha256:a2b23ce735eed736e0b8078cdf258d4da91f9e8b5dcfc03ee4899866eea7bc63" [label="/bin/sh -c bash buildproto.sh" shape="box"];
  "sha256:5d1d87ca219205ae6967aa3bce360b893b9879fb86d7af888f8a1c1552448939" [label="sha256:5d1d87ca219205ae6967aa3bce360b893b9879fb86d7af888f8a1c1552448939" shape="plaintext"];
  "sha256:5f02e43a732111d6b90c7a0e23dea330df8961e69e2c05f95cd6a05d77990808" -> "sha256:fe9f297bc2448455101ca85cc9a988adc1731184ef88d963e71c6ca60204468c" [label=""];
  "sha256:fe9f297bc2448455101ca85cc9a988adc1731184ef88d963e71c6ca60204468c" -> "sha256:cbd67ae1372384390869234cbfa8f255fb44b45cd8c181ae81c37d1b4812f4fa" [label=""];
  "sha256:cbd67ae1372384390869234cbfa8f255fb44b45cd8c181ae81c37d1b4812f4fa" -> "sha256:733e87015a2d2b4643805586fd6025bb1ab3794b71bf7c651ba306851f7d31b4" [label=""];
  "sha256:733e87015a2d2b4643805586fd6025bb1ab3794b71bf7c651ba306851f7d31b4" -> "sha256:2cae0daed173b7ea47e84dbce4f71e06329f545920bb43a2d6e9f09ccfc6f0de" [label=""];
  "sha256:aa0ec80e3e4251eed1dbecae834b2fa9a9172aece23654d019fd69ebe04163d8" -> "sha256:2cae0daed173b7ea47e84dbce4f71e06329f545920bb43a2d6e9f09ccfc6f0de" [label=""];
  "sha256:2cae0daed173b7ea47e84dbce4f71e06329f545920bb43a2d6e9f09ccfc6f0de" -> "sha256:10bff5dfdd5c2095f6fbf1ed59423dc7dd6303a494d26708ea6a878d45a0b72b" [label=""];
  "sha256:10bff5dfdd5c2095f6fbf1ed59423dc7dd6303a494d26708ea6a878d45a0b72b" -> "sha256:c4a28be9eccc0425164dc7769f159ffd0ea9e664305a404c02807cf11728b584" [label=""];
  "sha256:e37a60b76604d8dd1419f8ffd76fa16158874e7ff90e7493cf628caaa7e24951" -> "sha256:c4a28be9eccc0425164dc7769f159ffd0ea9e664305a404c02807cf11728b584" [label=""];
  "sha256:c4a28be9eccc0425164dc7769f159ffd0ea9e664305a404c02807cf11728b584" -> "sha256:95997bb221b3c44c6f87295d9604804e1305bad23c2667d11a3a0a6b180c2600" [label=""];
  "sha256:95997bb221b3c44c6f87295d9604804e1305bad23c2667d11a3a0a6b180c2600" -> "sha256:56b535a91bca79473ab2d35d99d3939268fd058306995262fa500495e1bfe479" [label=""];
  "sha256:4360dd6b335a3697789a1a57542d8cb8116135b730b876fb734e488c03925541" -> "sha256:56b535a91bca79473ab2d35d99d3939268fd058306995262fa500495e1bfe479" [label=""];
  "sha256:56b535a91bca79473ab2d35d99d3939268fd058306995262fa500495e1bfe479" -> "sha256:37987bff1a08dd0789856507e7e01dd16c3e7c579002ce78ce0ac55723d20d02" [label=""];
  "sha256:37987bff1a08dd0789856507e7e01dd16c3e7c579002ce78ce0ac55723d20d02" -> "sha256:52bfac63e83ae55b7c3329750e3f85f08710765e9d7ab129263e370de25ffb1a" [label=""];
  "sha256:8c05864d8d94838ea3e18206c80cdfd8112dff793db9c4ef2d1af195b449f031" -> "sha256:52bfac63e83ae55b7c3329750e3f85f08710765e9d7ab129263e370de25ffb1a" [label=""];
  "sha256:52bfac63e83ae55b7c3329750e3f85f08710765e9d7ab129263e370de25ffb1a" -> "sha256:55915b33337a8d45d64ce440021e06cf833cdf5ae2979060ec64b0518edeab95" [label=""];
  "sha256:55915b33337a8d45d64ce440021e06cf833cdf5ae2979060ec64b0518edeab95" -> "sha256:0f9780092c061e8974a488f7096ba1d6e0cebda1185dd696ececf47cf8f00937" [label=""];
  "sha256:0f9780092c061e8974a488f7096ba1d6e0cebda1185dd696ececf47cf8f00937" -> "sha256:a2b23ce735eed736e0b8078cdf258d4da91f9e8b5dcfc03ee4899866eea7bc63" [label=""];
  "sha256:a2b23ce735eed736e0b8078cdf258d4da91f9e8b5dcfc03ee4899866eea7bc63" -> "sha256:5d1d87ca219205ae6967aa3bce360b893b9879fb86d7af888f8a1c1552448939" [label=""];
}

