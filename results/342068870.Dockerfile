[app/sources/342068870.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4f18c8dc39bc29e1482efb98dbe2de03e3ea1201822efc5e97a071d4752a7e0e" [label="local://context" shape="ellipse"];
  "sha256:7d93814efddbbbb6fea0f9a3831cd9f9b9e241122860a54739fee5fc6ae20495" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:1e8754ff94de22becbbeba8501969157a85cf590ff15706738f4d7bebbfba115" [label="pip install bs4" shape="box"];
  "sha256:838f0531dae85f455b470631650d46ac94f0ef224146e78453e579f1d52a0c52" [label="pip install lxml" shape="box"];
  "sha256:418af025d29efe02f7ec002d1155cf59fa44e8ffd18be8524adb8f5092dbd4b1" [label="sha256:418af025d29efe02f7ec002d1155cf59fa44e8ffd18be8524adb8f5092dbd4b1" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7d93814efddbbbb6fea0f9a3831cd9f9b9e241122860a54739fee5fc6ae20495" [label=""];
  "sha256:4f18c8dc39bc29e1482efb98dbe2de03e3ea1201822efc5e97a071d4752a7e0e" -> "sha256:7d93814efddbbbb6fea0f9a3831cd9f9b9e241122860a54739fee5fc6ae20495" [label=""];
  "sha256:7d93814efddbbbb6fea0f9a3831cd9f9b9e241122860a54739fee5fc6ae20495" -> "sha256:1e8754ff94de22becbbeba8501969157a85cf590ff15706738f4d7bebbfba115" [label=""];
  "sha256:1e8754ff94de22becbbeba8501969157a85cf590ff15706738f4d7bebbfba115" -> "sha256:838f0531dae85f455b470631650d46ac94f0ef224146e78453e579f1d52a0c52" [label=""];
  "sha256:838f0531dae85f455b470631650d46ac94f0ef224146e78453e579f1d52a0c52" -> "sha256:418af025d29efe02f7ec002d1155cf59fa44e8ffd18be8524adb8f5092dbd4b1" [label=""];
}

