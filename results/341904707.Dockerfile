[app/sources/341904707.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:76cc37c7960feb2f37102d06b6510500c88632d2433ab931b3a23f77dbc4d920" [label="local://context" shape="ellipse"];
  "sha256:e6a1da2a1f539ccc13c148183ea0f293cf5be27c09cd6f664a8bb339c4363c36" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e344c675dfacb1028168c0bca58bcaa4a7ea1e835ac0d11a1ebd6f5b2cb3a5a2" [label="pip install lxml" shape="box"];
  "sha256:be4ed09dc3c1c3ab02863648677c0ef70a3ce917546eb01a1350844abc1c01c7" [label="pip install httplib2" shape="box"];
  "sha256:5e069bdd26fa961a96154c2997068a29c79907850d919dc245a59fb6a179a84d" [label="pip install lxml" shape="box"];
  "sha256:f62a9af9355a184be225863966c38ec986a62373ba40bb59ae7385d2ec6b6d45" [label="sha256:f62a9af9355a184be225863966c38ec986a62373ba40bb59ae7385d2ec6b6d45" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e6a1da2a1f539ccc13c148183ea0f293cf5be27c09cd6f664a8bb339c4363c36" [label=""];
  "sha256:76cc37c7960feb2f37102d06b6510500c88632d2433ab931b3a23f77dbc4d920" -> "sha256:e6a1da2a1f539ccc13c148183ea0f293cf5be27c09cd6f664a8bb339c4363c36" [label=""];
  "sha256:e6a1da2a1f539ccc13c148183ea0f293cf5be27c09cd6f664a8bb339c4363c36" -> "sha256:e344c675dfacb1028168c0bca58bcaa4a7ea1e835ac0d11a1ebd6f5b2cb3a5a2" [label=""];
  "sha256:e344c675dfacb1028168c0bca58bcaa4a7ea1e835ac0d11a1ebd6f5b2cb3a5a2" -> "sha256:be4ed09dc3c1c3ab02863648677c0ef70a3ce917546eb01a1350844abc1c01c7" [label=""];
  "sha256:be4ed09dc3c1c3ab02863648677c0ef70a3ce917546eb01a1350844abc1c01c7" -> "sha256:5e069bdd26fa961a96154c2997068a29c79907850d919dc245a59fb6a179a84d" [label=""];
  "sha256:5e069bdd26fa961a96154c2997068a29c79907850d919dc245a59fb6a179a84d" -> "sha256:f62a9af9355a184be225863966c38ec986a62373ba40bb59ae7385d2ec6b6d45" [label=""];
}

