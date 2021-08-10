[app/sources/273508124.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:eaea0df5884ce98a9a22d8ee3900fd1a6b555e0d01af7ff22d2f31520068f963" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:9ab86716203abf48b98fa0907addf78b0d0e5ef2d60b5406a08836bc51159709" [label="/bin/sh -c apt-get -qq install ruby-dev git libcurl4-openssl-dev curl build-essential python" shape="box"];
  "sha256:557f1a142a89b9326c65ad6a5b1de739f4c7eff7996fd73612a91804562100c2" [label="/bin/sh -c gem install --no-ri --no-rdoc uwsgi sinatra" shape="box"];
  "sha256:3721789fe60fe8dbd127807b35a824770b35c16f54336388c50b9e2af8bd3eea" [label="/bin/sh -c mkdir -p /opt/distributed_app" shape="box"];
  "sha256:82f759a2e69f4df75b996d376d9393436e4cc1d8762933f4dcd79df6b90cdfcf" [label="mkdir{path=/opt/distributed_app}" shape="note"];
  "sha256:ab695fe027ca57f60e114b505384c9fdac8d60c06186ab5745855b79bd562eab" [label="/bin/sh -c uwsgi --build-plugin https://github.com/unbit/uwsgi-consul" shape="box"];
  "sha256:5ed4e2ceeca685f42d59706584b30c93e4c228ebfcfc2c3765f2a032141e24e6" [label="local://context" shape="ellipse"];
  "sha256:c3f8b1d2eaddd53ad4d3fd1b477f7abbf904d197b12acaf6a1de6e43bd82776e" [label="copy{src=/uwsgi-consul.ini, dest=/opt/distributed_app/}" shape="note"];
  "sha256:eb261474058ab25f39feb38e7dde5c8dff8eebc6edf84be5f204b7f24d075da3" [label="copy{src=/config.ru, dest=/opt/distributed_app/}" shape="note"];
  "sha256:045295eab7f8cb0843715c1325f723fbe552223f1b2acbc73520cca0ee66949e" [label="sha256:045295eab7f8cb0843715c1325f723fbe552223f1b2acbc73520cca0ee66949e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:eaea0df5884ce98a9a22d8ee3900fd1a6b555e0d01af7ff22d2f31520068f963" [label=""];
  "sha256:eaea0df5884ce98a9a22d8ee3900fd1a6b555e0d01af7ff22d2f31520068f963" -> "sha256:9ab86716203abf48b98fa0907addf78b0d0e5ef2d60b5406a08836bc51159709" [label=""];
  "sha256:9ab86716203abf48b98fa0907addf78b0d0e5ef2d60b5406a08836bc51159709" -> "sha256:557f1a142a89b9326c65ad6a5b1de739f4c7eff7996fd73612a91804562100c2" [label=""];
  "sha256:557f1a142a89b9326c65ad6a5b1de739f4c7eff7996fd73612a91804562100c2" -> "sha256:3721789fe60fe8dbd127807b35a824770b35c16f54336388c50b9e2af8bd3eea" [label=""];
  "sha256:3721789fe60fe8dbd127807b35a824770b35c16f54336388c50b9e2af8bd3eea" -> "sha256:82f759a2e69f4df75b996d376d9393436e4cc1d8762933f4dcd79df6b90cdfcf" [label=""];
  "sha256:82f759a2e69f4df75b996d376d9393436e4cc1d8762933f4dcd79df6b90cdfcf" -> "sha256:ab695fe027ca57f60e114b505384c9fdac8d60c06186ab5745855b79bd562eab" [label=""];
  "sha256:ab695fe027ca57f60e114b505384c9fdac8d60c06186ab5745855b79bd562eab" -> "sha256:c3f8b1d2eaddd53ad4d3fd1b477f7abbf904d197b12acaf6a1de6e43bd82776e" [label=""];
  "sha256:5ed4e2ceeca685f42d59706584b30c93e4c228ebfcfc2c3765f2a032141e24e6" -> "sha256:c3f8b1d2eaddd53ad4d3fd1b477f7abbf904d197b12acaf6a1de6e43bd82776e" [label=""];
  "sha256:c3f8b1d2eaddd53ad4d3fd1b477f7abbf904d197b12acaf6a1de6e43bd82776e" -> "sha256:eb261474058ab25f39feb38e7dde5c8dff8eebc6edf84be5f204b7f24d075da3" [label=""];
  "sha256:5ed4e2ceeca685f42d59706584b30c93e4c228ebfcfc2c3765f2a032141e24e6" -> "sha256:eb261474058ab25f39feb38e7dde5c8dff8eebc6edf84be5f204b7f24d075da3" [label=""];
  "sha256:eb261474058ab25f39feb38e7dde5c8dff8eebc6edf84be5f204b7f24d075da3" -> "sha256:045295eab7f8cb0843715c1325f723fbe552223f1b2acbc73520cca0ee66949e" [label=""];
}

