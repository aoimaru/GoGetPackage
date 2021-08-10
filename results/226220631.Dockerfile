[app/sources/226220631.Dockerfile]
digraph {
  "sha256:5482dd9656efd7f9e74ae24513c53ec9409d5903043b5462e5ab38cc0e8f136d" [label="docker-image://docker.io/fellah/gitbook:2.6.7" shape="ellipse"];
  "sha256:6098b94201b7cab45cf47fa73fbd89594b231df0dc49d66ae9a1c4dd17fbdf16" [label="local://context" shape="ellipse"];
  "sha256:7c6feb2a2ffd0871973f4fc36f18636c48b8ce94826afc1e75225b320df4bcd8" [label="docker-image://docker.io/opencontrolorg/compliance-masonry:latest" shape="ellipse"];
  "sha256:12d7b465260dda488ac22635dfd016364e7091a7b533df5fca243f301dd2175a" [label="mkdir{path=/opencontrol}" shape="note"];
  "sha256:6dd02e492f0d0f512c039f4915eb1b87d19fa2395e99906d4630a16e641d674c" [label="copy{src=/, dest=/opencontrol/}" shape="note"];
  "sha256:2661c556c443534430f7139a97108e458b188e0703f5e0cacc0834071af9e290" [label="/bin/sh -c compliance-masonry get &&     compliance-masonry docs gitbook FedRAMP-moderate" shape="box"];
  "sha256:0f5c675a9c78f8eb4073dd8b4c53f610802a782cccef3c950b5697f798d56a74" [label="copy{src=/opencontrol/exports, dest=/srv/gitbook/}" shape="note"];
  "sha256:374ab3b548b86d830762089936329e1a83b55c0943d7441e4deedbc13a9a3c4f" [label="sha256:374ab3b548b86d830762089936329e1a83b55c0943d7441e4deedbc13a9a3c4f" shape="plaintext"];
  "sha256:7c6feb2a2ffd0871973f4fc36f18636c48b8ce94826afc1e75225b320df4bcd8" -> "sha256:12d7b465260dda488ac22635dfd016364e7091a7b533df5fca243f301dd2175a" [label=""];
  "sha256:12d7b465260dda488ac22635dfd016364e7091a7b533df5fca243f301dd2175a" -> "sha256:6dd02e492f0d0f512c039f4915eb1b87d19fa2395e99906d4630a16e641d674c" [label=""];
  "sha256:6098b94201b7cab45cf47fa73fbd89594b231df0dc49d66ae9a1c4dd17fbdf16" -> "sha256:6dd02e492f0d0f512c039f4915eb1b87d19fa2395e99906d4630a16e641d674c" [label=""];
  "sha256:6dd02e492f0d0f512c039f4915eb1b87d19fa2395e99906d4630a16e641d674c" -> "sha256:2661c556c443534430f7139a97108e458b188e0703f5e0cacc0834071af9e290" [label=""];
  "sha256:5482dd9656efd7f9e74ae24513c53ec9409d5903043b5462e5ab38cc0e8f136d" -> "sha256:0f5c675a9c78f8eb4073dd8b4c53f610802a782cccef3c950b5697f798d56a74" [label=""];
  "sha256:2661c556c443534430f7139a97108e458b188e0703f5e0cacc0834071af9e290" -> "sha256:0f5c675a9c78f8eb4073dd8b4c53f610802a782cccef3c950b5697f798d56a74" [label=""];
  "sha256:0f5c675a9c78f8eb4073dd8b4c53f610802a782cccef3c950b5697f798d56a74" -> "sha256:374ab3b548b86d830762089936329e1a83b55c0943d7441e4deedbc13a9a3c4f" [label=""];
}

