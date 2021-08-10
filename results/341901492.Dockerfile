[app/sources/341901492.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:2b64cd4341a9e73cac2a4fdb186e459e06a293ab515e88a652aabfc18755ac78" [label="local://context" shape="ellipse"];
  "sha256:e80b8ee70d807ce2d3380c9f129a27d0b139460b2ce3d3593de03c33f27ad441" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7c965cd1de3f8b29cab158429a29d998a22f51e2b6a04b3ec8d6eecaa3bda891" [label="pip install cherrypy" shape="box"];
  "sha256:76526a51579a58a010fe68698b5b2eb4e806fb62432c8fbdebf9e0677632d8d8" [label="pip install cherrypy" shape="box"];
  "sha256:821528934b23cf2572d6253a27519f9868284392c6cc88f1fe7819102f21d15c" [label="pip install django" shape="box"];
  "sha256:f6500cb1e284c3c99125cf78ce0b1cbc7da65bbcb723997830aef46f61cd5fac" [label="pip install translogger" shape="box"];
  "sha256:4844510e2c56a9a6ed43d09e9d81ee951acbecfa92115b7591182804f73745a1" [label="pip install django" shape="box"];
  "sha256:6186cd94a9e3710f984e45d4a50b4de87de98f7557d1cfdabff468b1b6980b73" [label="pip install cherrypy" shape="box"];
  "sha256:e8276da7ca3731f7e189d17910a308c616d23c9f40100a1e2b0a6eb10b2cbd7d" [label="sha256:e8276da7ca3731f7e189d17910a308c616d23c9f40100a1e2b0a6eb10b2cbd7d" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e80b8ee70d807ce2d3380c9f129a27d0b139460b2ce3d3593de03c33f27ad441" [label=""];
  "sha256:2b64cd4341a9e73cac2a4fdb186e459e06a293ab515e88a652aabfc18755ac78" -> "sha256:e80b8ee70d807ce2d3380c9f129a27d0b139460b2ce3d3593de03c33f27ad441" [label=""];
  "sha256:e80b8ee70d807ce2d3380c9f129a27d0b139460b2ce3d3593de03c33f27ad441" -> "sha256:7c965cd1de3f8b29cab158429a29d998a22f51e2b6a04b3ec8d6eecaa3bda891" [label=""];
  "sha256:7c965cd1de3f8b29cab158429a29d998a22f51e2b6a04b3ec8d6eecaa3bda891" -> "sha256:76526a51579a58a010fe68698b5b2eb4e806fb62432c8fbdebf9e0677632d8d8" [label=""];
  "sha256:76526a51579a58a010fe68698b5b2eb4e806fb62432c8fbdebf9e0677632d8d8" -> "sha256:821528934b23cf2572d6253a27519f9868284392c6cc88f1fe7819102f21d15c" [label=""];
  "sha256:821528934b23cf2572d6253a27519f9868284392c6cc88f1fe7819102f21d15c" -> "sha256:f6500cb1e284c3c99125cf78ce0b1cbc7da65bbcb723997830aef46f61cd5fac" [label=""];
  "sha256:f6500cb1e284c3c99125cf78ce0b1cbc7da65bbcb723997830aef46f61cd5fac" -> "sha256:4844510e2c56a9a6ed43d09e9d81ee951acbecfa92115b7591182804f73745a1" [label=""];
  "sha256:4844510e2c56a9a6ed43d09e9d81ee951acbecfa92115b7591182804f73745a1" -> "sha256:6186cd94a9e3710f984e45d4a50b4de87de98f7557d1cfdabff468b1b6980b73" [label=""];
  "sha256:6186cd94a9e3710f984e45d4a50b4de87de98f7557d1cfdabff468b1b6980b73" -> "sha256:e8276da7ca3731f7e189d17910a308c616d23c9f40100a1e2b0a6eb10b2cbd7d" [label=""];
}

