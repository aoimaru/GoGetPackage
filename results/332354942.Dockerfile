[app/sources/332354942.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:67f2331ae0848d5dfaaa75be27bbd63719e67e9eca3776537b5751004d2408b6" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:4961c1961c2b2627b564a0ff3945607db0e1bcced11e80537d8497ab5dff4afd" [label="/bin/sh -c apt-get install -y     wget     parted     sudo     udev" shape="box"];
  "sha256:935ff151c546052147fad1e826d3604ddc419741a9ba940081110604b0a85c0d" [label="/bin/sh -c wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh &&     chmod +x pishrink.sh &&     mv pishrink.sh /usr/local/bin/pishrink" shape="box"];
  "sha256:5a52c17ea82ec82a9bbcbd383ddec595c88dcc6f312899c6ddf5be583b19438e" [label="/bin/sh -c wget https://raw.githubusercontent.com/gmenezesg/fix_orphaned_inode_list/master/fix_orphaned_inode_list.sh &&     chmod +x fix_orphaned_inode_list.sh &&     mv fix_orphaned_inode_list.sh /usr/local/bin/fix_orphaned_inode_list" shape="box"];
  "sha256:dab0e2d88c7ad636eb5353b7b317d50e3042386e1a5294f334f2d9933abc18d0" [label="mkdir{path=/root}" shape="note"];
  "sha256:10b641e05c89ae57003659952c14e20a284bdfdba328817da43571650dd39eba" [label="sha256:10b641e05c89ae57003659952c14e20a284bdfdba328817da43571650dd39eba" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:67f2331ae0848d5dfaaa75be27bbd63719e67e9eca3776537b5751004d2408b6" [label=""];
  "sha256:67f2331ae0848d5dfaaa75be27bbd63719e67e9eca3776537b5751004d2408b6" -> "sha256:4961c1961c2b2627b564a0ff3945607db0e1bcced11e80537d8497ab5dff4afd" [label=""];
  "sha256:4961c1961c2b2627b564a0ff3945607db0e1bcced11e80537d8497ab5dff4afd" -> "sha256:935ff151c546052147fad1e826d3604ddc419741a9ba940081110604b0a85c0d" [label=""];
  "sha256:935ff151c546052147fad1e826d3604ddc419741a9ba940081110604b0a85c0d" -> "sha256:5a52c17ea82ec82a9bbcbd383ddec595c88dcc6f312899c6ddf5be583b19438e" [label=""];
  "sha256:5a52c17ea82ec82a9bbcbd383ddec595c88dcc6f312899c6ddf5be583b19438e" -> "sha256:dab0e2d88c7ad636eb5353b7b317d50e3042386e1a5294f334f2d9933abc18d0" [label=""];
  "sha256:dab0e2d88c7ad636eb5353b7b317d50e3042386e1a5294f334f2d9933abc18d0" -> "sha256:10b641e05c89ae57003659952c14e20a284bdfdba328817da43571650dd39eba" [label=""];
}

