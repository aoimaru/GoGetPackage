[app/sources/252784487.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6834c0beed32e809692bdbdcaaacf351a775b4bf3e2059259d3c7f962750c7bf" [label="/bin/sh -c apt-get -y update && apt-get -y full-upgrade && apt-get -y install git python-pip && pip install --upgrade pip && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aa4ba85a87de11cdc2c6acce946f97d9008c28d0ffd051c4d1dedf0f0ee61319" [label="local://context" shape="ellipse"];
  "sha256:3ec807a93100935167a48209a7350e10a4d3a541dd4b48e9a7cb7677ef7fb04d" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:2e78a8bcf33dbff9143fffd0e09b212caaac6a78859beb536b19f2f68aa36e4e" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ea9c77a1caff25e39885fa2aa31303b4c47abc3476846f5409ff2fac326e304e" [label="sha256:ea9c77a1caff25e39885fa2aa31303b4c47abc3476846f5409ff2fac326e304e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6834c0beed32e809692bdbdcaaacf351a775b4bf3e2059259d3c7f962750c7bf" [label=""];
  "sha256:6834c0beed32e809692bdbdcaaacf351a775b4bf3e2059259d3c7f962750c7bf" -> "sha256:3ec807a93100935167a48209a7350e10a4d3a541dd4b48e9a7cb7677ef7fb04d" [label=""];
  "sha256:aa4ba85a87de11cdc2c6acce946f97d9008c28d0ffd051c4d1dedf0f0ee61319" -> "sha256:3ec807a93100935167a48209a7350e10a4d3a541dd4b48e9a7cb7677ef7fb04d" [label=""];
  "sha256:3ec807a93100935167a48209a7350e10a4d3a541dd4b48e9a7cb7677ef7fb04d" -> "sha256:2e78a8bcf33dbff9143fffd0e09b212caaac6a78859beb536b19f2f68aa36e4e" [label=""];
  "sha256:2e78a8bcf33dbff9143fffd0e09b212caaac6a78859beb536b19f2f68aa36e4e" -> "sha256:ea9c77a1caff25e39885fa2aa31303b4c47abc3476846f5409ff2fac326e304e" [label=""];
}

