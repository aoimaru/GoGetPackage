[app/sources/192476036.Dockerfile]
digraph {
  "sha256:5d123d0063e75ab6d70815aad6c47d968c4a255db5762d94785114f7f3e4d578" [label="local://context" shape="ellipse"];
  "sha256:72c168e478a5bff2a1f0bb21798cb9b933641990f8ba9d3a9648a7d48e59cc8d" [label="copy{src=/engine, dest=/engine}" shape="note"];
  "sha256:3271c14a8c60b2b348819ccfa97ce5b02f9e9c8fc937d377db0947a5c4a197a4" [label="sha256:3271c14a8c60b2b348819ccfa97ce5b02f9e9c8fc937d377db0947a5c4a197a4" shape="plaintext"];
  "sha256:5d123d0063e75ab6d70815aad6c47d968c4a255db5762d94785114f7f3e4d578" -> "sha256:72c168e478a5bff2a1f0bb21798cb9b933641990f8ba9d3a9648a7d48e59cc8d" [label=""];
  "sha256:72c168e478a5bff2a1f0bb21798cb9b933641990f8ba9d3a9648a7d48e59cc8d" -> "sha256:3271c14a8c60b2b348819ccfa97ce5b02f9e9c8fc937d377db0947a5c4a197a4" [label=""];
}

