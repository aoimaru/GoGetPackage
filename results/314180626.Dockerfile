[app/sources/314180626.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label="mkdir{path=/app}" shape="note"];
  "sha256:e406b2609c7499f677cac2fc86b52cabee8fd67a360a95fa7f0fb0be1679c2dd" [label="local://context" shape="ellipse"];
  "sha256:ffe657d23a131bb88491a56e9a683c3173c3f5e7677c5a1b36284ea935a715b7" [label="copy{src=/requirements.txt, dest=/app}" shape="note"];
  "sha256:707d316356dfd503125072d8b5c4a20158e757524aac2b8e692d6af60245fe56" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:5b97b432e3e2e581c7ece8c3051c72f9761c6b62bc0003ee4669e2c62b41f4e3" [label="copy{src=/app.py, dest=/app}" shape="note"];
  "sha256:ee90819302d7e26bed5c16860977e9738457a3fa95ad699628ca4a7041014463" [label="sha256:ee90819302d7e26bed5c16860977e9738457a3fa95ad699628ca4a7041014463" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label=""];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" -> "sha256:ffe657d23a131bb88491a56e9a683c3173c3f5e7677c5a1b36284ea935a715b7" [label=""];
  "sha256:e406b2609c7499f677cac2fc86b52cabee8fd67a360a95fa7f0fb0be1679c2dd" -> "sha256:ffe657d23a131bb88491a56e9a683c3173c3f5e7677c5a1b36284ea935a715b7" [label=""];
  "sha256:ffe657d23a131bb88491a56e9a683c3173c3f5e7677c5a1b36284ea935a715b7" -> "sha256:707d316356dfd503125072d8b5c4a20158e757524aac2b8e692d6af60245fe56" [label=""];
  "sha256:707d316356dfd503125072d8b5c4a20158e757524aac2b8e692d6af60245fe56" -> "sha256:5b97b432e3e2e581c7ece8c3051c72f9761c6b62bc0003ee4669e2c62b41f4e3" [label=""];
  "sha256:e406b2609c7499f677cac2fc86b52cabee8fd67a360a95fa7f0fb0be1679c2dd" -> "sha256:5b97b432e3e2e581c7ece8c3051c72f9761c6b62bc0003ee4669e2c62b41f4e3" [label=""];
  "sha256:5b97b432e3e2e581c7ece8c3051c72f9761c6b62bc0003ee4669e2c62b41f4e3" -> "sha256:ee90819302d7e26bed5c16860977e9738457a3fa95ad699628ca4a7041014463" [label=""];
}

