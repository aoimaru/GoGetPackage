[app/sources/341905371.Dockerfile]
digraph {
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" [label="docker-image://docker.io/library/python:2.7.13@sha256:ac21ec6277f7da89c32f977b25224abbbbb0f4d3d10ce37461210c14019bc955" shape="ellipse"];
  "sha256:096f077f4a9105345fb899e1af6bcd60d7ff5050890704c74460a36ff0611cb8" [label="local://context" shape="ellipse"];
  "sha256:4fc920bd8a3332dfa9a34b796aeb48db154c3df2e8a89d30b9e18f16f25934ff" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:833be0e01e38fe2bca3697728937f2a3684527c0ffb1e543e5b29aff88eea27c" [label="pip install ansible" shape="box"];
  "sha256:6f2912f67d92b1cb8418b1c87b81aa65cd9e51f99ed64bed48c6fb55a35d6203" [label="pip install boto" shape="box"];
  "sha256:77418fc56a4388932f06d569c4f939636127edad915bbc707586b1f70a860a37" [label="pip install boto" shape="box"];
  "sha256:459ed0e890fb1b9a657a9ac6dba209e93e392375da0fbabf3c9a44d61a54706f" [label="sha256:459ed0e890fb1b9a657a9ac6dba209e93e392375da0fbabf3c9a44d61a54706f" shape="plaintext"];
  "sha256:3322836ed235966d459871466d8ce082a50654fa4ee46d775c6f476ffd5b2443" -> "sha256:4fc920bd8a3332dfa9a34b796aeb48db154c3df2e8a89d30b9e18f16f25934ff" [label=""];
  "sha256:096f077f4a9105345fb899e1af6bcd60d7ff5050890704c74460a36ff0611cb8" -> "sha256:4fc920bd8a3332dfa9a34b796aeb48db154c3df2e8a89d30b9e18f16f25934ff" [label=""];
  "sha256:4fc920bd8a3332dfa9a34b796aeb48db154c3df2e8a89d30b9e18f16f25934ff" -> "sha256:833be0e01e38fe2bca3697728937f2a3684527c0ffb1e543e5b29aff88eea27c" [label=""];
  "sha256:833be0e01e38fe2bca3697728937f2a3684527c0ffb1e543e5b29aff88eea27c" -> "sha256:6f2912f67d92b1cb8418b1c87b81aa65cd9e51f99ed64bed48c6fb55a35d6203" [label=""];
  "sha256:6f2912f67d92b1cb8418b1c87b81aa65cd9e51f99ed64bed48c6fb55a35d6203" -> "sha256:77418fc56a4388932f06d569c4f939636127edad915bbc707586b1f70a860a37" [label=""];
  "sha256:77418fc56a4388932f06d569c4f939636127edad915bbc707586b1f70a860a37" -> "sha256:459ed0e890fb1b9a657a9ac6dba209e93e392375da0fbabf3c9a44d61a54706f" [label=""];
}

