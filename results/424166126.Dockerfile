[app/sources/424166126.Dockerfile]
digraph {
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" [label="docker-image://docker.io/library/base:latest" shape="ellipse"];
  "sha256:e0acea6d85d9dde32aa51fc5267b0c3df1abb4c42045cb6bf3540eb6e869b6f6" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0df3a502d372dc111410ecf9265dcf320e14203e3c401434071ac67f8775db75" [label="/bin/sh -c apt-get install -y haproxy python" shape="box"];
  "sha256:3f46d7b5396a370af35c5600a55fbd24e704f8fc74a4d0ad4646f50e4788ba01" [label="local://context" shape="ellipse"];
  "sha256:42c1b475961924ef90ae9b44bd6ed13425529044285a875039a3ebcc4b112b90" [label="copy{src=/haproxy_config.py, dest=/usr/local/bin/haproxy_config}" shape="note"];
  "sha256:c9784c3f1601061a0472780c8cc2c5a4b5c40545bcccdb8094082312942efb35" [label="/bin/sh -c chmod +x /usr/local/bin/haproxy_config" shape="box"];
  "sha256:f649ba121b62c443b93bf118ad1fd21c1ce9b0960f80788081afc30b8dbf361b" [label="copy{src=/run.sh, dest=/usr/local/bin/run}" shape="note"];
  "sha256:bd678480393524a66e2ec2793cd4aa48a1e07ebabcd307931d77e6e2193c79d6" [label="/bin/sh -c chmod +x /usr/local/bin/run" shape="box"];
  "sha256:e65645f130501d0ee848ae6d025b17a303d5292195bfa90e8cf4e728409652db" [label="sha256:e65645f130501d0ee848ae6d025b17a303d5292195bfa90e8cf4e728409652db" shape="plaintext"];
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" -> "sha256:e0acea6d85d9dde32aa51fc5267b0c3df1abb4c42045cb6bf3540eb6e869b6f6" [label=""];
  "sha256:e0acea6d85d9dde32aa51fc5267b0c3df1abb4c42045cb6bf3540eb6e869b6f6" -> "sha256:0df3a502d372dc111410ecf9265dcf320e14203e3c401434071ac67f8775db75" [label=""];
  "sha256:0df3a502d372dc111410ecf9265dcf320e14203e3c401434071ac67f8775db75" -> "sha256:42c1b475961924ef90ae9b44bd6ed13425529044285a875039a3ebcc4b112b90" [label=""];
  "sha256:3f46d7b5396a370af35c5600a55fbd24e704f8fc74a4d0ad4646f50e4788ba01" -> "sha256:42c1b475961924ef90ae9b44bd6ed13425529044285a875039a3ebcc4b112b90" [label=""];
  "sha256:42c1b475961924ef90ae9b44bd6ed13425529044285a875039a3ebcc4b112b90" -> "sha256:c9784c3f1601061a0472780c8cc2c5a4b5c40545bcccdb8094082312942efb35" [label=""];
  "sha256:c9784c3f1601061a0472780c8cc2c5a4b5c40545bcccdb8094082312942efb35" -> "sha256:f649ba121b62c443b93bf118ad1fd21c1ce9b0960f80788081afc30b8dbf361b" [label=""];
  "sha256:3f46d7b5396a370af35c5600a55fbd24e704f8fc74a4d0ad4646f50e4788ba01" -> "sha256:f649ba121b62c443b93bf118ad1fd21c1ce9b0960f80788081afc30b8dbf361b" [label=""];
  "sha256:f649ba121b62c443b93bf118ad1fd21c1ce9b0960f80788081afc30b8dbf361b" -> "sha256:bd678480393524a66e2ec2793cd4aa48a1e07ebabcd307931d77e6e2193c79d6" [label=""];
  "sha256:bd678480393524a66e2ec2793cd4aa48a1e07ebabcd307931d77e6e2193c79d6" -> "sha256:e65645f130501d0ee848ae6d025b17a303d5292195bfa90e8cf4e728409652db" [label=""];
}

