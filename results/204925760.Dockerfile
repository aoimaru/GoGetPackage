[app/sources/204925760.Dockerfile]
digraph {
  "sha256:6ecb367a5c4d0bec8d64ed6140c1f551a3411fa74b31574b6bdb8d54acff673b" [label="local://context" shape="ellipse"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" [label="docker-image://docker.io/library/java:8-jre-alpine" shape="ellipse"];
  "sha256:58096de5d5e77e6bd073d18894523458af567fe66ef1cad2ec226fc80106cf30" [label="copy{src=/@project.build.finalName@.jar, dest=/app.jar}" shape="note"];
  "sha256:1c5e0508fbe91252f83475ca1c3cde9731a2d512341c33dfcda7ac2ee89696b3" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:6c211e2d13f85db33a81b7653d695c7100c67f012946a1705998485caafc5383" [label="sha256:6c211e2d13f85db33a81b7653d695c7100c67f012946a1705998485caafc5383" shape="plaintext"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" -> "sha256:58096de5d5e77e6bd073d18894523458af567fe66ef1cad2ec226fc80106cf30" [label=""];
  "sha256:6ecb367a5c4d0bec8d64ed6140c1f551a3411fa74b31574b6bdb8d54acff673b" -> "sha256:58096de5d5e77e6bd073d18894523458af567fe66ef1cad2ec226fc80106cf30" [label=""];
  "sha256:58096de5d5e77e6bd073d18894523458af567fe66ef1cad2ec226fc80106cf30" -> "sha256:1c5e0508fbe91252f83475ca1c3cde9731a2d512341c33dfcda7ac2ee89696b3" [label=""];
  "sha256:1c5e0508fbe91252f83475ca1c3cde9731a2d512341c33dfcda7ac2ee89696b3" -> "sha256:6c211e2d13f85db33a81b7653d695c7100c67f012946a1705998485caafc5383" [label=""];
}

