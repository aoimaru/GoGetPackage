[app/sources/349084258.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:ec37171c8762dca966ce0a1248c1d78dfbb0722fd46b05bd3a27852d5d155c07" [label="/bin/sh -c apt-get update -y && apt-get install -y unzip curl make git" shape="box"];
  "sha256:4bb6f8e1b7dd3a729dee46b03d601a0bd6dcc843bc108d98c804214274c11f52" [label="/bin/sh -c apt-get install -y lua${lua_ver} liblua${lua_ver} liblua${lua_ver}-dev" shape="box"];
  "sha256:a9b153593ec51af3785d01bafbe6b0264b6b60eda0eac915d958ef566ef820bf" [label="/bin/sh -c apt-get install -y libsqlite3-dev sqlite3" shape="box"];
  "sha256:83a7f28865c02c23fc15fed31a645bd37c790805df53379588f3508bfde05c47" [label="/bin/sh -c cd /tmp &&     curl -L -O http://luajit.org/download/LuaJIT-2.0.4.tar.gz &&     tar zxpf LuaJIT-2.0.4.tar.gz &&     rm LuaJIT-2.0.4.tar.gz &&     cd LuaJIT-2.0.4 &&     make install" shape="box"];
  "sha256:2dd1fa7255092e8e987b7c869a73cd63ae0154829a9a656ad15e2f683c1f9b19" [label="/bin/sh -c cd /tmp &&     curl -L -O http://luarocks.org/releases/luarocks-${luarocks_ver}.tar.gz &&     tar zxpf luarocks-${luarocks_ver}.tar.gz &&     rm luarocks-${luarocks_ver}.tar.gz &&     cd luarocks-${luarocks_ver} &&     ./configure --prefix=/usr &&     make bootstrap &&     cd /tmp &&     rm -r /tmp/luarocks-${luarocks_ver}" shape="box"];
  "sha256:7ba8186b8b1089da35f0db463ae84cd676e631bfc282c4d0b3d7f5f089f44a0c" [label="/bin/sh -c cd /tmp &&     curl -L -O https://github.com/LMDB/lmdb/archive/LMDB_${lmdb_ver}.tar.gz &&     tar -xzf LMDB_${lmdb_ver}.tar.gz &&     rm LMDB_${lmdb_ver}.tar.gz &&     cd lmdb-LMDB_${lmdb_ver}/libraries/liblmdb &&     make all install &&     ldconfig &&     cd /tmp &&     rm -r /tmp/lmdb-LMDB_${lmdb_ver}" shape="box"];
  "sha256:27162602266d54961ed58fd2ed3023acf90d980371e96f34809ae006d69fc5be" [label="/bin/sh -c luarocks install bit32" shape="box"];
  "sha256:333d1371346e934cb658da796ceb99a0c27f9c271fb1441eba75a2c116b47d78" [label="/bin/sh -c luarocks install copas" shape="box"];
  "sha256:3734bc9f58879d1808867bbe17f965348661f6fa5ccd220f243956f6b43ce428" [label="/bin/sh -c luarocks install lightningmdb ${lightningmdb_ver}" shape="box"];
  "sha256:1b20944f18b2b4263f5f6a25b0467193ffecfde921a7e6719784493873ef7e22" [label="/bin/sh -c luarocks install luaposix" shape="box"];
  "sha256:05e6e10c5b032ef0af521cfe7d80ecbc2403d47c10d2a78deff04a620e71b843" [label="/bin/sh -c luarocks install lunitx" shape="box"];
  "sha256:25c57f6dc31df5a85df936b68d90b794d68e985f8ef1226c63e8e426aa9cd770" [label="/bin/sh -c luarocks install lsqlite3" shape="box"];
  "sha256:db43cbb44e691abc7ced3452fd26a3062f0cd00d9929f11992d194508b791fa1" [label="/bin/sh -c luarocks install xxhash" shape="box"];
  "sha256:e0fc0e88742f8db9c2dea270e6f1edd49bb243640a40df600d31115207c07740" [label="mkdir{path=/root}" shape="note"];
  "sha256:e706f3e1271c85f3bff0403c73a0ea95447b7ac366545d1faf463ed2cb283e57" [label="local://context" shape="ellipse"];
  "sha256:f9c4d09a8c7e627035f37c3d0acf99c4f8d3cd834ce277b9f1f9002eec7cdc82" [label="copy{src=/*.lua, dest=/root/}" shape="note"];
  "sha256:6a01971b83034d4539f011cacda576bec9b5523fac23912c3d3332a285f6cbab" [label="copy{src=/tests, dest=/root/tests}" shape="note"];
  "sha256:9c70a6e17c302c919234f3e8af088644b70e222cc79a2e520a85cc1a207e5331" [label="copy{src=/fdi, dest=/root/fdi/}" shape="note"];
  "sha256:063af4616aa3b6c2ae64dd527828d2b1164d1378688f2f4c882ae86744387d4e" [label="/bin/sh -c mkdir -p $HOME/tests/temp" shape="box"];
  "sha256:e94cbaf850ddf606501a3c7dc8144dc5a3ee4cd9129ea2ec184fca3f9647b988" [label="sha256:e94cbaf850ddf606501a3c7dc8144dc5a3ee4cd9129ea2ec184fca3f9647b988" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:ec37171c8762dca966ce0a1248c1d78dfbb0722fd46b05bd3a27852d5d155c07" [label=""];
  "sha256:ec37171c8762dca966ce0a1248c1d78dfbb0722fd46b05bd3a27852d5d155c07" -> "sha256:4bb6f8e1b7dd3a729dee46b03d601a0bd6dcc843bc108d98c804214274c11f52" [label=""];
  "sha256:4bb6f8e1b7dd3a729dee46b03d601a0bd6dcc843bc108d98c804214274c11f52" -> "sha256:a9b153593ec51af3785d01bafbe6b0264b6b60eda0eac915d958ef566ef820bf" [label=""];
  "sha256:a9b153593ec51af3785d01bafbe6b0264b6b60eda0eac915d958ef566ef820bf" -> "sha256:83a7f28865c02c23fc15fed31a645bd37c790805df53379588f3508bfde05c47" [label=""];
  "sha256:83a7f28865c02c23fc15fed31a645bd37c790805df53379588f3508bfde05c47" -> "sha256:2dd1fa7255092e8e987b7c869a73cd63ae0154829a9a656ad15e2f683c1f9b19" [label=""];
  "sha256:2dd1fa7255092e8e987b7c869a73cd63ae0154829a9a656ad15e2f683c1f9b19" -> "sha256:7ba8186b8b1089da35f0db463ae84cd676e631bfc282c4d0b3d7f5f089f44a0c" [label=""];
  "sha256:7ba8186b8b1089da35f0db463ae84cd676e631bfc282c4d0b3d7f5f089f44a0c" -> "sha256:27162602266d54961ed58fd2ed3023acf90d980371e96f34809ae006d69fc5be" [label=""];
  "sha256:27162602266d54961ed58fd2ed3023acf90d980371e96f34809ae006d69fc5be" -> "sha256:333d1371346e934cb658da796ceb99a0c27f9c271fb1441eba75a2c116b47d78" [label=""];
  "sha256:333d1371346e934cb658da796ceb99a0c27f9c271fb1441eba75a2c116b47d78" -> "sha256:3734bc9f58879d1808867bbe17f965348661f6fa5ccd220f243956f6b43ce428" [label=""];
  "sha256:3734bc9f58879d1808867bbe17f965348661f6fa5ccd220f243956f6b43ce428" -> "sha256:1b20944f18b2b4263f5f6a25b0467193ffecfde921a7e6719784493873ef7e22" [label=""];
  "sha256:1b20944f18b2b4263f5f6a25b0467193ffecfde921a7e6719784493873ef7e22" -> "sha256:05e6e10c5b032ef0af521cfe7d80ecbc2403d47c10d2a78deff04a620e71b843" [label=""];
  "sha256:05e6e10c5b032ef0af521cfe7d80ecbc2403d47c10d2a78deff04a620e71b843" -> "sha256:25c57f6dc31df5a85df936b68d90b794d68e985f8ef1226c63e8e426aa9cd770" [label=""];
  "sha256:25c57f6dc31df5a85df936b68d90b794d68e985f8ef1226c63e8e426aa9cd770" -> "sha256:db43cbb44e691abc7ced3452fd26a3062f0cd00d9929f11992d194508b791fa1" [label=""];
  "sha256:db43cbb44e691abc7ced3452fd26a3062f0cd00d9929f11992d194508b791fa1" -> "sha256:e0fc0e88742f8db9c2dea270e6f1edd49bb243640a40df600d31115207c07740" [label=""];
  "sha256:e0fc0e88742f8db9c2dea270e6f1edd49bb243640a40df600d31115207c07740" -> "sha256:f9c4d09a8c7e627035f37c3d0acf99c4f8d3cd834ce277b9f1f9002eec7cdc82" [label=""];
  "sha256:e706f3e1271c85f3bff0403c73a0ea95447b7ac366545d1faf463ed2cb283e57" -> "sha256:f9c4d09a8c7e627035f37c3d0acf99c4f8d3cd834ce277b9f1f9002eec7cdc82" [label=""];
  "sha256:f9c4d09a8c7e627035f37c3d0acf99c4f8d3cd834ce277b9f1f9002eec7cdc82" -> "sha256:6a01971b83034d4539f011cacda576bec9b5523fac23912c3d3332a285f6cbab" [label=""];
  "sha256:e706f3e1271c85f3bff0403c73a0ea95447b7ac366545d1faf463ed2cb283e57" -> "sha256:6a01971b83034d4539f011cacda576bec9b5523fac23912c3d3332a285f6cbab" [label=""];
  "sha256:6a01971b83034d4539f011cacda576bec9b5523fac23912c3d3332a285f6cbab" -> "sha256:9c70a6e17c302c919234f3e8af088644b70e222cc79a2e520a85cc1a207e5331" [label=""];
  "sha256:e706f3e1271c85f3bff0403c73a0ea95447b7ac366545d1faf463ed2cb283e57" -> "sha256:9c70a6e17c302c919234f3e8af088644b70e222cc79a2e520a85cc1a207e5331" [label=""];
  "sha256:9c70a6e17c302c919234f3e8af088644b70e222cc79a2e520a85cc1a207e5331" -> "sha256:063af4616aa3b6c2ae64dd527828d2b1164d1378688f2f4c882ae86744387d4e" [label=""];
  "sha256:063af4616aa3b6c2ae64dd527828d2b1164d1378688f2f4c882ae86744387d4e" -> "sha256:e94cbaf850ddf606501a3c7dc8144dc5a3ee4cd9129ea2ec184fca3f9647b988" [label=""];
}

