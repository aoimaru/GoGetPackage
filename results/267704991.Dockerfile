[app/sources/267704991.Dockerfile]
digraph {
  "sha256:6703b3e9978f76f13c39a8bec869c077e0260fc9d7279c031ce6d03696bf574e" [label="local://context" shape="ellipse"];
  "sha256:3250a80f970c73638896090134c0acfa2d690ebe3d4ecf0a85ccd43d4af182e0" [label="docker-image://docker.io/phusion/baseimage:0.11" shape="ellipse"];
  "sha256:cdf4018e32bb613f60a43f6fd5d7c2ce907545b0aa9031b8323e98225041ea67" [label="mkdir{path=/reddit-karma-bot}" shape="note"];
  "sha256:5627ea9935d233a96b682a01631ddab393a56bb0cb50641c5bd446c8bcec6ffe" [label="/bin/bash -c apt-get update &&     apt-get install -y --no-install-recommends       g++       gcc       golang-go       libc6-dev       make       pkg-config       wget       tmux       python2.7       python-pip       python-setuptools       python-dev       git       ca-certificates &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:eb9c1f9f960146f8ff495638c53bca64705e8b840c17210fdaf857e81ff37a95" [label="copy{src=/src/requirements.txt, dest=/reddit-karma-bot/requirements.txt}" shape="note"];
  "sha256:3f8f36b2c1afb08a9b89fa1b23c43945dc6ec5d7c701797deb05f2bc76257af0" [label="/bin/bash -c pip install wheel" shape="box"];
  "sha256:443d2a9fbd605de5062909c860383ba0be0432a8c9b6f563adcc6b668471379e" [label="/bin/bash -c pip install --upgrade pip wheel -r requirements.txt" shape="box"];
  "sha256:0c3f8009c801a3374dd1bf25dfbeb92333307a3386df66f92b0eeb60ad5cb69a" [label="copy{src=/src, dest=/reddit-karma-bot-src}" shape="note"];
  "sha256:b8b0863383061b4900fdaed3b2560f5a7073dbe1924b69abc12919cabfe55e6f" [label="sha256:b8b0863383061b4900fdaed3b2560f5a7073dbe1924b69abc12919cabfe55e6f" shape="plaintext"];
  "sha256:3250a80f970c73638896090134c0acfa2d690ebe3d4ecf0a85ccd43d4af182e0" -> "sha256:cdf4018e32bb613f60a43f6fd5d7c2ce907545b0aa9031b8323e98225041ea67" [label=""];
  "sha256:cdf4018e32bb613f60a43f6fd5d7c2ce907545b0aa9031b8323e98225041ea67" -> "sha256:5627ea9935d233a96b682a01631ddab393a56bb0cb50641c5bd446c8bcec6ffe" [label=""];
  "sha256:5627ea9935d233a96b682a01631ddab393a56bb0cb50641c5bd446c8bcec6ffe" -> "sha256:eb9c1f9f960146f8ff495638c53bca64705e8b840c17210fdaf857e81ff37a95" [label=""];
  "sha256:6703b3e9978f76f13c39a8bec869c077e0260fc9d7279c031ce6d03696bf574e" -> "sha256:eb9c1f9f960146f8ff495638c53bca64705e8b840c17210fdaf857e81ff37a95" [label=""];
  "sha256:eb9c1f9f960146f8ff495638c53bca64705e8b840c17210fdaf857e81ff37a95" -> "sha256:3f8f36b2c1afb08a9b89fa1b23c43945dc6ec5d7c701797deb05f2bc76257af0" [label=""];
  "sha256:3f8f36b2c1afb08a9b89fa1b23c43945dc6ec5d7c701797deb05f2bc76257af0" -> "sha256:443d2a9fbd605de5062909c860383ba0be0432a8c9b6f563adcc6b668471379e" [label=""];
  "sha256:443d2a9fbd605de5062909c860383ba0be0432a8c9b6f563adcc6b668471379e" -> "sha256:0c3f8009c801a3374dd1bf25dfbeb92333307a3386df66f92b0eeb60ad5cb69a" [label=""];
  "sha256:6703b3e9978f76f13c39a8bec869c077e0260fc9d7279c031ce6d03696bf574e" -> "sha256:0c3f8009c801a3374dd1bf25dfbeb92333307a3386df66f92b0eeb60ad5cb69a" [label=""];
  "sha256:0c3f8009c801a3374dd1bf25dfbeb92333307a3386df66f92b0eeb60ad5cb69a" -> "sha256:b8b0863383061b4900fdaed3b2560f5a7073dbe1924b69abc12919cabfe55e6f" [label=""];
}

