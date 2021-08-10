[app/sources/352143824.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:2171c3827f5fe73971b72f4030bf7424a45b2b053c907d2332a9f7ad27cf216b" [label="/bin/sh -c [ -n $SHA1SUM ] && echo $SHA1SUM > /sha1sum.txt" shape="box"];
  "sha256:e400c70a99af3a500a5224a11807656664af1249e2e9616dbeac4781c75df26d" [label="local://context" shape="ellipse"];
  "sha256:393cb030dc28433f4cd5dad5b8d0427a4d31ca4b9caad774b7701764800acc60" [label="copy{src=/*.sh, dest=/tmp/}" shape="note"];
  "sha256:a39d95fc5397716744d148c01eb47a30a79efc9cc795ba89596102e2ef6529c6" [label="/bin/sh -c /tmp/bootstrap.sh && /tmp/locale.sh" shape="box"];
  "sha256:f5aafed1dd4fa6df2b08e015fe4b527439b5785b4bd2dd85ffcaf87b64787fef" [label="/bin/sh -c set -x; LD=$(which ld); LD_GOLD=$(which ld.gold); test -x $LD_GOLD && ln -sf $LD_GOLD $LD && test -x $LD && echo \"$LD is now $LD_GOLD\"" shape="box"];
  "sha256:1ed256027f5fb8e30b22095afaa6fadb065aed78d83c49461d1eb1ebb53de71d" [label="/bin/sh -c useradd -m -U -s /bin/bash samba &&     mkdir -p /etc/sudoers.d &&     echo \"samba ALL=(ALL) NOPASSWD:ALL\" > /etc/sudoers.d/samba" shape="box"];
  "sha256:d711905a539f3f738ca99b3b7c5fdbce66e451d31e978f0210e2a259b51115d4" [label="mkdir{path=/home/samba}" shape="note"];
  "sha256:f4aa815db667658c62f4a117fa2e732d836367ce1d0796f4e4abb7ce338a097c" [label="sha256:f4aa815db667658c62f4a117fa2e732d836367ce1d0796f4e4abb7ce338a097c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2171c3827f5fe73971b72f4030bf7424a45b2b053c907d2332a9f7ad27cf216b" [label=""];
  "sha256:2171c3827f5fe73971b72f4030bf7424a45b2b053c907d2332a9f7ad27cf216b" -> "sha256:393cb030dc28433f4cd5dad5b8d0427a4d31ca4b9caad774b7701764800acc60" [label=""];
  "sha256:e400c70a99af3a500a5224a11807656664af1249e2e9616dbeac4781c75df26d" -> "sha256:393cb030dc28433f4cd5dad5b8d0427a4d31ca4b9caad774b7701764800acc60" [label=""];
  "sha256:393cb030dc28433f4cd5dad5b8d0427a4d31ca4b9caad774b7701764800acc60" -> "sha256:a39d95fc5397716744d148c01eb47a30a79efc9cc795ba89596102e2ef6529c6" [label=""];
  "sha256:a39d95fc5397716744d148c01eb47a30a79efc9cc795ba89596102e2ef6529c6" -> "sha256:f5aafed1dd4fa6df2b08e015fe4b527439b5785b4bd2dd85ffcaf87b64787fef" [label=""];
  "sha256:f5aafed1dd4fa6df2b08e015fe4b527439b5785b4bd2dd85ffcaf87b64787fef" -> "sha256:1ed256027f5fb8e30b22095afaa6fadb065aed78d83c49461d1eb1ebb53de71d" [label=""];
  "sha256:1ed256027f5fb8e30b22095afaa6fadb065aed78d83c49461d1eb1ebb53de71d" -> "sha256:d711905a539f3f738ca99b3b7c5fdbce66e451d31e978f0210e2a259b51115d4" [label=""];
  "sha256:d711905a539f3f738ca99b3b7c5fdbce66e451d31e978f0210e2a259b51115d4" -> "sha256:f4aa815db667658c62f4a117fa2e732d836367ce1d0796f4e4abb7ce338a097c" [label=""];
}

