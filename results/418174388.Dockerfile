[app/sources/418174388.Dockerfile]
digraph {
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" [label="docker-image://docker.io/microsoft/aspnetcore:2.0" shape="ellipse"];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label="mkdir{path=/app}" shape="note"];
  "sha256:98e1887cfdb39d8a89cead97b972781ade61cbedd12c62362d0c128bcabed3d0" [label="local://context" shape="ellipse"];
  "sha256:dd4ea8cd4b7f9e654c584f5c9519516eee5a68ebc7746c567f887f338739a0ad" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:0f3c092df8709a011bbc7ea60919178ec12954825985ae4cb93ac8af9da919d3" [label="sha256:0f3c092df8709a011bbc7ea60919178ec12954825985ae4cb93ac8af9da919d3" shape="plaintext"];
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" -> "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label=""];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" -> "sha256:dd4ea8cd4b7f9e654c584f5c9519516eee5a68ebc7746c567f887f338739a0ad" [label=""];
  "sha256:98e1887cfdb39d8a89cead97b972781ade61cbedd12c62362d0c128bcabed3d0" -> "sha256:dd4ea8cd4b7f9e654c584f5c9519516eee5a68ebc7746c567f887f338739a0ad" [label=""];
  "sha256:dd4ea8cd4b7f9e654c584f5c9519516eee5a68ebc7746c567f887f338739a0ad" -> "sha256:0f3c092df8709a011bbc7ea60919178ec12954825985ae4cb93ac8af9da919d3" [label=""];
}

