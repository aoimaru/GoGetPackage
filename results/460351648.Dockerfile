[app/sources/460351648.Dockerfile]
digraph {
  "sha256:83fff21aadf4cc6e2ed797112b2617c9fd3a1e7dc5ad1c684816bd45da0aea29" [label="docker-image://docker.io/dataquestio/ubuntu-base:latest" shape="ellipse"];
  "sha256:50aa4fb8abcb19689b5da970e9c24aa883083e3ded16ef2c6082ea917c64bf19" [label="/bin/sh -c apt-get update -y && apt-get install build-essential -y" shape="box"];
  "sha256:33b147fc062fb7c2b068f7e6ebb870e02361f96b6dc65e0880df8f610ed6bd1a" [label="local://context" shape="ellipse"];
  "sha256:e3ea9b3a55a35697815ab6610892a1b1d1f74e3956597980a5bf6964142f1ffb" [label="copy{src=/apt-packages.txt, dest=/tmp/apt-packages.txt}" shape="note"];
  "sha256:a072fedf7c5083686dabe890e6360cb23dca83ebc14e53e826c71cbb85931e84" [label="/bin/sh -c xargs -a /tmp/apt-packages.txt apt-get install -y" shape="box"];
  "sha256:3e8cc7f776273c8b58ddc298a02a7e005484c9b71f93a6b108c59abaeea78ad2" [label="/bin/sh -c pip install virtualenv" shape="box"];
  "sha256:2ab4dbc84cc02c4612d0036b2a619e7f36cbd82ae9966cbc45eb42756f225f03" [label="/bin/sh -c /usr/local/bin/virtualenv /opt/ds --distribute" shape="box"];
  "sha256:f25fc46cba4da20b218373e9d9f568b1ab9bf659d7bafe706f1188fe6f315843" [label="copy{src=/requirements, dest=/tmp/requirements}" shape="note"];
  "sha256:22c4380a66b0c0f6932c08d8b0e75877767051c37c4e5e3e429140f9276405f3" [label="copy{src=/python2/requirements.txt, dest=/tmp/requirements/additional-reqs.txt}" shape="note"];
  "sha256:86152dc06f57b6ab30e171fc7d27d7297eea4df822c58ac3be32d7b9827be8a2" [label="/bin/sh -c /opt/ds/bin/pip install -r /tmp/requirements/pre-requirements.txt" shape="box"];
  "sha256:30d06a155ebbb2d98dca57218ba81b0b993854fc181d0f0388e2794e035bee8b" [label="/bin/sh -c /opt/ds/bin/pip install -r /tmp/requirements/requirements.txt" shape="box"];
  "sha256:e6e0b7753ae552e80686c4e1b32f62c0caf3e9da5f81beaa2cfebe799c5363c1" [label="/bin/sh -c /opt/ds/bin/pip install -r /tmp/requirements/additional-reqs.txt" shape="box"];
  "sha256:f1953c91e96692900f2f9cb478551da376aa8d1a035fcb83d100143eea4d58e8" [label="/bin/sh -c useradd --create-home --home-dir /home/ds --shell /bin/bash ds" shape="box"];
  "sha256:4bfb688009f35c38c46f7217ff741953946c4179f8b589facec57f25afbfb9bf" [label="/bin/sh -c chown -R ds /opt/ds" shape="box"];
  "sha256:755b3791acd767ecfb7cde52920b1314859f6354fa42383bb8e0a699684ccbe4" [label="/bin/sh -c adduser ds sudo" shape="box"];
  "sha256:129b5fa06a0b19526f5a698a110fc39afbdbc2b8cbcf0d7cd87540406ac28cd3" [label="copy{src=/run_ipython.sh, dest=/home/ds}" shape="note"];
  "sha256:1f3c0ed42cf4f22f6ba95cefe6a8dc89f3d2fbc58bc7c6c46ce1bdd6622d3148" [label="/bin/sh -c chmod +x /home/ds/run_ipython.sh" shape="box"];
  "sha256:b769a520dbc9825ace4b1f13ea12e6fd9ccf964f0204399e1f3be784ffa20ad8" [label="/bin/sh -c chown ds /home/ds/run_ipython.sh" shape="box"];
  "sha256:6774e785494df5684fb3a423aa6ef091560e7afb16b40508434ecb9519452fc2" [label="copy{src=/.bashrc.template, dest=/home/ds/.bashrc}" shape="note"];
  "sha256:46558a7cef911b8d0fc15a506125c3a01535556f95157c868e025a1a2c366e1e" [label="/bin/sh -c usermod -a -G sudo ds" shape="box"];
  "sha256:46c64ade311551c0edb84cb4cc48da22badc5240d54c797f37e513fd87c046da" [label="/bin/sh -c echo \"ds ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers" shape="box"];
  "sha256:76998cd54aceaa42a5b00e7cdbad73948143d5377bdff3024fb15e9b5e4006a7" [label="/bin/sh -c mkdir -p /home/ds/notebooks" shape="box"];
  "sha256:99122ef01d0b9fa45e7e08078e6323e2fe6a05963e341ffef89b28b3b7eccde2" [label="mkdir{path=/home/ds/notebooks}" shape="note"];
  "sha256:255dd7d46a45d879cd893ffd6fe14cf3aab5b457f9ba632ce585acd5d1af61de" [label="sha256:255dd7d46a45d879cd893ffd6fe14cf3aab5b457f9ba632ce585acd5d1af61de" shape="plaintext"];
  "sha256:83fff21aadf4cc6e2ed797112b2617c9fd3a1e7dc5ad1c684816bd45da0aea29" -> "sha256:50aa4fb8abcb19689b5da970e9c24aa883083e3ded16ef2c6082ea917c64bf19" [label=""];
  "sha256:50aa4fb8abcb19689b5da970e9c24aa883083e3ded16ef2c6082ea917c64bf19" -> "sha256:e3ea9b3a55a35697815ab6610892a1b1d1f74e3956597980a5bf6964142f1ffb" [label=""];
  "sha256:33b147fc062fb7c2b068f7e6ebb870e02361f96b6dc65e0880df8f610ed6bd1a" -> "sha256:e3ea9b3a55a35697815ab6610892a1b1d1f74e3956597980a5bf6964142f1ffb" [label=""];
  "sha256:e3ea9b3a55a35697815ab6610892a1b1d1f74e3956597980a5bf6964142f1ffb" -> "sha256:a072fedf7c5083686dabe890e6360cb23dca83ebc14e53e826c71cbb85931e84" [label=""];
  "sha256:a072fedf7c5083686dabe890e6360cb23dca83ebc14e53e826c71cbb85931e84" -> "sha256:3e8cc7f776273c8b58ddc298a02a7e005484c9b71f93a6b108c59abaeea78ad2" [label=""];
  "sha256:3e8cc7f776273c8b58ddc298a02a7e005484c9b71f93a6b108c59abaeea78ad2" -> "sha256:2ab4dbc84cc02c4612d0036b2a619e7f36cbd82ae9966cbc45eb42756f225f03" [label=""];
  "sha256:2ab4dbc84cc02c4612d0036b2a619e7f36cbd82ae9966cbc45eb42756f225f03" -> "sha256:f25fc46cba4da20b218373e9d9f568b1ab9bf659d7bafe706f1188fe6f315843" [label=""];
  "sha256:33b147fc062fb7c2b068f7e6ebb870e02361f96b6dc65e0880df8f610ed6bd1a" -> "sha256:f25fc46cba4da20b218373e9d9f568b1ab9bf659d7bafe706f1188fe6f315843" [label=""];
  "sha256:f25fc46cba4da20b218373e9d9f568b1ab9bf659d7bafe706f1188fe6f315843" -> "sha256:22c4380a66b0c0f6932c08d8b0e75877767051c37c4e5e3e429140f9276405f3" [label=""];
  "sha256:33b147fc062fb7c2b068f7e6ebb870e02361f96b6dc65e0880df8f610ed6bd1a" -> "sha256:22c4380a66b0c0f6932c08d8b0e75877767051c37c4e5e3e429140f9276405f3" [label=""];
  "sha256:22c4380a66b0c0f6932c08d8b0e75877767051c37c4e5e3e429140f9276405f3" -> "sha256:86152dc06f57b6ab30e171fc7d27d7297eea4df822c58ac3be32d7b9827be8a2" [label=""];
  "sha256:86152dc06f57b6ab30e171fc7d27d7297eea4df822c58ac3be32d7b9827be8a2" -> "sha256:30d06a155ebbb2d98dca57218ba81b0b993854fc181d0f0388e2794e035bee8b" [label=""];
  "sha256:30d06a155ebbb2d98dca57218ba81b0b993854fc181d0f0388e2794e035bee8b" -> "sha256:e6e0b7753ae552e80686c4e1b32f62c0caf3e9da5f81beaa2cfebe799c5363c1" [label=""];
  "sha256:e6e0b7753ae552e80686c4e1b32f62c0caf3e9da5f81beaa2cfebe799c5363c1" -> "sha256:f1953c91e96692900f2f9cb478551da376aa8d1a035fcb83d100143eea4d58e8" [label=""];
  "sha256:f1953c91e96692900f2f9cb478551da376aa8d1a035fcb83d100143eea4d58e8" -> "sha256:4bfb688009f35c38c46f7217ff741953946c4179f8b589facec57f25afbfb9bf" [label=""];
  "sha256:4bfb688009f35c38c46f7217ff741953946c4179f8b589facec57f25afbfb9bf" -> "sha256:755b3791acd767ecfb7cde52920b1314859f6354fa42383bb8e0a699684ccbe4" [label=""];
  "sha256:755b3791acd767ecfb7cde52920b1314859f6354fa42383bb8e0a699684ccbe4" -> "sha256:129b5fa06a0b19526f5a698a110fc39afbdbc2b8cbcf0d7cd87540406ac28cd3" [label=""];
  "sha256:33b147fc062fb7c2b068f7e6ebb870e02361f96b6dc65e0880df8f610ed6bd1a" -> "sha256:129b5fa06a0b19526f5a698a110fc39afbdbc2b8cbcf0d7cd87540406ac28cd3" [label=""];
  "sha256:129b5fa06a0b19526f5a698a110fc39afbdbc2b8cbcf0d7cd87540406ac28cd3" -> "sha256:1f3c0ed42cf4f22f6ba95cefe6a8dc89f3d2fbc58bc7c6c46ce1bdd6622d3148" [label=""];
  "sha256:1f3c0ed42cf4f22f6ba95cefe6a8dc89f3d2fbc58bc7c6c46ce1bdd6622d3148" -> "sha256:b769a520dbc9825ace4b1f13ea12e6fd9ccf964f0204399e1f3be784ffa20ad8" [label=""];
  "sha256:b769a520dbc9825ace4b1f13ea12e6fd9ccf964f0204399e1f3be784ffa20ad8" -> "sha256:6774e785494df5684fb3a423aa6ef091560e7afb16b40508434ecb9519452fc2" [label=""];
  "sha256:33b147fc062fb7c2b068f7e6ebb870e02361f96b6dc65e0880df8f610ed6bd1a" -> "sha256:6774e785494df5684fb3a423aa6ef091560e7afb16b40508434ecb9519452fc2" [label=""];
  "sha256:6774e785494df5684fb3a423aa6ef091560e7afb16b40508434ecb9519452fc2" -> "sha256:46558a7cef911b8d0fc15a506125c3a01535556f95157c868e025a1a2c366e1e" [label=""];
  "sha256:46558a7cef911b8d0fc15a506125c3a01535556f95157c868e025a1a2c366e1e" -> "sha256:46c64ade311551c0edb84cb4cc48da22badc5240d54c797f37e513fd87c046da" [label=""];
  "sha256:46c64ade311551c0edb84cb4cc48da22badc5240d54c797f37e513fd87c046da" -> "sha256:76998cd54aceaa42a5b00e7cdbad73948143d5377bdff3024fb15e9b5e4006a7" [label=""];
  "sha256:76998cd54aceaa42a5b00e7cdbad73948143d5377bdff3024fb15e9b5e4006a7" -> "sha256:99122ef01d0b9fa45e7e08078e6323e2fe6a05963e341ffef89b28b3b7eccde2" [label=""];
  "sha256:99122ef01d0b9fa45e7e08078e6323e2fe6a05963e341ffef89b28b3b7eccde2" -> "sha256:255dd7d46a45d879cd893ffd6fe14cf3aab5b457f9ba632ce585acd5d1af61de" [label=""];
}

