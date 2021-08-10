[app/sources/430118248.Dockerfile]
digraph {
  "sha256:a27ba87424a9f5dba90ed2a0c03ffd0879ef6a307bc5ebc817c9ceb26196a243" [label="docker-image://docker.io/portworx/lcfs-plugin-base:latest@sha256:350e0bc9cb8f673b05586f4ebdfd772c37af31f5c47d1e1093a771018b04a454" shape="ellipse"];
  "sha256:dda77b4894d086eddf0ee875d9a70ba75328b08f5148a33b372c05415682490b" [label="local://context" shape="ellipse"];
  "sha256:ae36e9560aaac381c52faf6c438e30512cbb422f035e3ecedddd7d16269269fa" [label="copy{src=/lcfs_plugin, dest=/}" shape="note"];
  "sha256:8d53c8cd6e378e5e23c6b3a58ee0ecc7911cc75637da6f07017e8b16374ada55" [label="sha256:8d53c8cd6e378e5e23c6b3a58ee0ecc7911cc75637da6f07017e8b16374ada55" shape="plaintext"];
  "sha256:a27ba87424a9f5dba90ed2a0c03ffd0879ef6a307bc5ebc817c9ceb26196a243" -> "sha256:ae36e9560aaac381c52faf6c438e30512cbb422f035e3ecedddd7d16269269fa" [label=""];
  "sha256:dda77b4894d086eddf0ee875d9a70ba75328b08f5148a33b372c05415682490b" -> "sha256:ae36e9560aaac381c52faf6c438e30512cbb422f035e3ecedddd7d16269269fa" [label=""];
  "sha256:ae36e9560aaac381c52faf6c438e30512cbb422f035e3ecedddd7d16269269fa" -> "sha256:8d53c8cd6e378e5e23c6b3a58ee0ecc7911cc75637da6f07017e8b16374ada55" [label=""];
}

