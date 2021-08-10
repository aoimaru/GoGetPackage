[app/sources/357897627.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:51bf8532ed614cc074038901fd6da43cd59539d9bc1c1b4b09854bc103c58e11" [label="/bin/sh -c apt-get update   && apt-get install -y     subversion" shape="box"];
  "sha256:345fd0ba7674abbeb989d1e001785c4c84bca09ab730aa7dfeff912b982dbcbd" [label="sha256:345fd0ba7674abbeb989d1e001785c4c84bca09ab730aa7dfeff912b982dbcbd" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:51bf8532ed614cc074038901fd6da43cd59539d9bc1c1b4b09854bc103c58e11" [label=""];
  "sha256:51bf8532ed614cc074038901fd6da43cd59539d9bc1c1b4b09854bc103c58e11" -> "sha256:345fd0ba7674abbeb989d1e001785c4c84bca09ab730aa7dfeff912b982dbcbd" [label=""];
}

