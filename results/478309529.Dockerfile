[app/sources/478309529.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:14bd5c6991491bb51fe2cedb298697c6b2c2dca80baddfdf03d192c7275f9a71" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl" shape="box"];
  "sha256:931eb8e2fdde995b5076562b620450d5c2105ed92ca34e0df0927419fe786aa0" [label="/bin/sh -c ln -sf /bin/true /sbin/initctl" shape="box"];
  "sha256:823603a986af9076e047f0b1bd2091fd76520f8f78f0fcb98644d5e7218d50eb" [label="/bin/sh -c apt-get update --fix-missing" shape="box"];
  "sha256:462dd98cbfc4ad6653c2ebbae77a32589de837987dc093a3952061e84dfc5f9e" [label="/bin/sh -c apt-get install -y build-essential git" shape="box"];
  "sha256:d6a0efb9e283d70fc3770bff6c1179cdec044f26594f596aff10a15f1c214ed0" [label="/bin/sh -c apt-get install -y python python-dev python-setuptools" shape="box"];
  "sha256:18795d3921d2a415e9d3b9945dadbaf79c635a1040576062aba0b85f55b4934e" [label="/bin/sh -c apt-get install -y python-pip python-virtualenv" shape="box"];
  "sha256:a575402148e855fa6c281144f6e1e2df4aacdadc7860f49270d47cf5bb6496e8" [label="/bin/sh -c apt-get install -y nginx supervisor" shape="box"];
  "sha256:ed992364501b98bcacbbb1808fa905667a508f52aacaf2e6446f3e79e899a99b" [label="/bin/sh -c service supervisor stop" shape="box"];
  "sha256:1ccd4a5c9883826d4c14e7f2d847fff8f759ee61704584f8bb9eef4fcfa2505f" [label="/bin/sh -c apt-get build-dep -y python-imaging python-psycopg2" shape="box"];
  "sha256:a6f2225026dd0187ef81b72714413ad8f48c6b61edddb2b34e58d99cf4900640" [label="/bin/sh -c virtualenv /opt/venv" shape="box"];
  "sha256:ebd5f677d804f75269a2be53c11a1d5b178a3b842b03d724825866c2b93e55a4" [label="local://context" shape="ellipse"];
  "sha256:77237dec5deafdfa6d6824540c5686b55b3890e06e5831072f731fb4c0f07796" [label="copy{src=/requirements.txt, dest=/opt/venv/requirements.txt}" shape="note"];
  "sha256:858b2c646244b93361402deef062d50f235894528c1a57e6a88c11d0e18c993d" [label="/bin/sh -c /opt/venv/bin/pip install -r /opt/venv/requirements.txt" shape="box"];
  "sha256:224f412e527ce12cfbe978f59c2554c7328c37709adb58bd975acbcfe110a45f" [label="sha256:224f412e527ce12cfbe978f59c2554c7328c37709adb58bd975acbcfe110a45f" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:14bd5c6991491bb51fe2cedb298697c6b2c2dca80baddfdf03d192c7275f9a71" [label=""];
  "sha256:14bd5c6991491bb51fe2cedb298697c6b2c2dca80baddfdf03d192c7275f9a71" -> "sha256:931eb8e2fdde995b5076562b620450d5c2105ed92ca34e0df0927419fe786aa0" [label=""];
  "sha256:931eb8e2fdde995b5076562b620450d5c2105ed92ca34e0df0927419fe786aa0" -> "sha256:823603a986af9076e047f0b1bd2091fd76520f8f78f0fcb98644d5e7218d50eb" [label=""];
  "sha256:823603a986af9076e047f0b1bd2091fd76520f8f78f0fcb98644d5e7218d50eb" -> "sha256:462dd98cbfc4ad6653c2ebbae77a32589de837987dc093a3952061e84dfc5f9e" [label=""];
  "sha256:462dd98cbfc4ad6653c2ebbae77a32589de837987dc093a3952061e84dfc5f9e" -> "sha256:d6a0efb9e283d70fc3770bff6c1179cdec044f26594f596aff10a15f1c214ed0" [label=""];
  "sha256:d6a0efb9e283d70fc3770bff6c1179cdec044f26594f596aff10a15f1c214ed0" -> "sha256:18795d3921d2a415e9d3b9945dadbaf79c635a1040576062aba0b85f55b4934e" [label=""];
  "sha256:18795d3921d2a415e9d3b9945dadbaf79c635a1040576062aba0b85f55b4934e" -> "sha256:a575402148e855fa6c281144f6e1e2df4aacdadc7860f49270d47cf5bb6496e8" [label=""];
  "sha256:a575402148e855fa6c281144f6e1e2df4aacdadc7860f49270d47cf5bb6496e8" -> "sha256:ed992364501b98bcacbbb1808fa905667a508f52aacaf2e6446f3e79e899a99b" [label=""];
  "sha256:ed992364501b98bcacbbb1808fa905667a508f52aacaf2e6446f3e79e899a99b" -> "sha256:1ccd4a5c9883826d4c14e7f2d847fff8f759ee61704584f8bb9eef4fcfa2505f" [label=""];
  "sha256:1ccd4a5c9883826d4c14e7f2d847fff8f759ee61704584f8bb9eef4fcfa2505f" -> "sha256:a6f2225026dd0187ef81b72714413ad8f48c6b61edddb2b34e58d99cf4900640" [label=""];
  "sha256:a6f2225026dd0187ef81b72714413ad8f48c6b61edddb2b34e58d99cf4900640" -> "sha256:77237dec5deafdfa6d6824540c5686b55b3890e06e5831072f731fb4c0f07796" [label=""];
  "sha256:ebd5f677d804f75269a2be53c11a1d5b178a3b842b03d724825866c2b93e55a4" -> "sha256:77237dec5deafdfa6d6824540c5686b55b3890e06e5831072f731fb4c0f07796" [label=""];
  "sha256:77237dec5deafdfa6d6824540c5686b55b3890e06e5831072f731fb4c0f07796" -> "sha256:858b2c646244b93361402deef062d50f235894528c1a57e6a88c11d0e18c993d" [label=""];
  "sha256:858b2c646244b93361402deef062d50f235894528c1a57e6a88c11d0e18c993d" -> "sha256:224f412e527ce12cfbe978f59c2554c7328c37709adb58bd975acbcfe110a45f" [label=""];
}

