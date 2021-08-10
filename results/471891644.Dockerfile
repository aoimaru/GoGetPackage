[app/sources/471891644.Dockerfile]
digraph {
  "sha256:4c6158314ed4cd9e8d61448fdbaf195812ce2f30f8baf470f245e3bec3093028" [label="docker-image://docker.io/binhex/arch-int-openvpn:latest" shape="ellipse"];
  "sha256:6908e4cb05aecbf56c82f391c00a26b714786fa7c0e147d9751e59762a26c1c0" [label="local://context" shape="ellipse"];
  "sha256:50633d3841e15d5ef72753adc3043c46e228b2644a1e2ddc04aefabbe8d4fd21" [label="copy{src=/build/*.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:2fdd9bd8f8d0c8001dcf3fc0fa0989ff590278d093874ee5dffd66a28a494f2d" [label="copy{src=/build/root/*.sh, dest=/root/}" shape="note"];
  "sha256:be1d779c957e4a7e5b00172cdd2291d0fa00abad0238cdbf472e360767675bac" [label="copy{src=/run/root/*.sh, dest=/root/}" shape="note"];
  "sha256:eac74903453c9c7cf7d66793df45b44a881f4c9a9a3d0239b2159d4482bf6115" [label="copy{src=/run/nobody/*.sh, dest=/home/nobody/}" shape="note"];
  "sha256:fce451f76b1f8bba2e91ddc318b95035fd4c3cef57f848ff4c8ae4598b251464" [label="copy{src=/config/nobody, dest=/home/nobody/}" shape="note"];
  "sha256:f9aa1a4948ee7ef1112423034cecbc7ffd05ff3739b12ba7b9b0b5dca112ba21" [label="/bin/sh -c chmod +x /root/*.sh /home/nobody/*.sh && \t/bin/bash /root/install.sh" shape="box"];
  "sha256:c110f65f14575bca472afbdde2a92d87aabb1888922356de9814b5bb44061642" [label="sha256:c110f65f14575bca472afbdde2a92d87aabb1888922356de9814b5bb44061642" shape="plaintext"];
  "sha256:4c6158314ed4cd9e8d61448fdbaf195812ce2f30f8baf470f245e3bec3093028" -> "sha256:50633d3841e15d5ef72753adc3043c46e228b2644a1e2ddc04aefabbe8d4fd21" [label=""];
  "sha256:6908e4cb05aecbf56c82f391c00a26b714786fa7c0e147d9751e59762a26c1c0" -> "sha256:50633d3841e15d5ef72753adc3043c46e228b2644a1e2ddc04aefabbe8d4fd21" [label=""];
  "sha256:50633d3841e15d5ef72753adc3043c46e228b2644a1e2ddc04aefabbe8d4fd21" -> "sha256:2fdd9bd8f8d0c8001dcf3fc0fa0989ff590278d093874ee5dffd66a28a494f2d" [label=""];
  "sha256:6908e4cb05aecbf56c82f391c00a26b714786fa7c0e147d9751e59762a26c1c0" -> "sha256:2fdd9bd8f8d0c8001dcf3fc0fa0989ff590278d093874ee5dffd66a28a494f2d" [label=""];
  "sha256:2fdd9bd8f8d0c8001dcf3fc0fa0989ff590278d093874ee5dffd66a28a494f2d" -> "sha256:be1d779c957e4a7e5b00172cdd2291d0fa00abad0238cdbf472e360767675bac" [label=""];
  "sha256:6908e4cb05aecbf56c82f391c00a26b714786fa7c0e147d9751e59762a26c1c0" -> "sha256:be1d779c957e4a7e5b00172cdd2291d0fa00abad0238cdbf472e360767675bac" [label=""];
  "sha256:be1d779c957e4a7e5b00172cdd2291d0fa00abad0238cdbf472e360767675bac" -> "sha256:eac74903453c9c7cf7d66793df45b44a881f4c9a9a3d0239b2159d4482bf6115" [label=""];
  "sha256:6908e4cb05aecbf56c82f391c00a26b714786fa7c0e147d9751e59762a26c1c0" -> "sha256:eac74903453c9c7cf7d66793df45b44a881f4c9a9a3d0239b2159d4482bf6115" [label=""];
  "sha256:eac74903453c9c7cf7d66793df45b44a881f4c9a9a3d0239b2159d4482bf6115" -> "sha256:fce451f76b1f8bba2e91ddc318b95035fd4c3cef57f848ff4c8ae4598b251464" [label=""];
  "sha256:6908e4cb05aecbf56c82f391c00a26b714786fa7c0e147d9751e59762a26c1c0" -> "sha256:fce451f76b1f8bba2e91ddc318b95035fd4c3cef57f848ff4c8ae4598b251464" [label=""];
  "sha256:fce451f76b1f8bba2e91ddc318b95035fd4c3cef57f848ff4c8ae4598b251464" -> "sha256:f9aa1a4948ee7ef1112423034cecbc7ffd05ff3739b12ba7b9b0b5dca112ba21" [label=""];
  "sha256:f9aa1a4948ee7ef1112423034cecbc7ffd05ff3739b12ba7b9b0b5dca112ba21" -> "sha256:c110f65f14575bca472afbdde2a92d87aabb1888922356de9814b5bb44061642" [label=""];
}

