[app/sources/342067432.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b881ff6012a9cc909c175d001d6540ff59af5ec1faab2cbe36f2519534b62f60" [label="local://context" shape="ellipse"];
  "sha256:6dbcaee27a5d42804f12584a0735e8a5e8bc1a052ee62169e054de61aab7e43d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:b284aaf929dcb12c94f07b49959834bababbd6514115f9e9aa855b1246a85774" [label="pip install boto" shape="box"];
  "sha256:d61712d08e511becacde89715c5ed1368ce5f2e3ac8596cbe34b8a50c119b340" [label="pip install boto" shape="box"];
  "sha256:38f92211eea30ecf9c0bf97e6f5a66547669684ac8fb0d1cf86eefb9446c57e9" [label="sha256:38f92211eea30ecf9c0bf97e6f5a66547669684ac8fb0d1cf86eefb9446c57e9" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:6dbcaee27a5d42804f12584a0735e8a5e8bc1a052ee62169e054de61aab7e43d" [label=""];
  "sha256:b881ff6012a9cc909c175d001d6540ff59af5ec1faab2cbe36f2519534b62f60" -> "sha256:6dbcaee27a5d42804f12584a0735e8a5e8bc1a052ee62169e054de61aab7e43d" [label=""];
  "sha256:6dbcaee27a5d42804f12584a0735e8a5e8bc1a052ee62169e054de61aab7e43d" -> "sha256:b284aaf929dcb12c94f07b49959834bababbd6514115f9e9aa855b1246a85774" [label=""];
  "sha256:b284aaf929dcb12c94f07b49959834bababbd6514115f9e9aa855b1246a85774" -> "sha256:d61712d08e511becacde89715c5ed1368ce5f2e3ac8596cbe34b8a50c119b340" [label=""];
  "sha256:d61712d08e511becacde89715c5ed1368ce5f2e3ac8596cbe34b8a50c119b340" -> "sha256:38f92211eea30ecf9c0bf97e6f5a66547669684ac8fb0d1cf86eefb9446c57e9" [label=""];
}

