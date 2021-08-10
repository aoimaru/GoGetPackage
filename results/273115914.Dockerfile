[app/sources/273115914.Dockerfile]
digraph {
  "sha256:c4109fa5e25fe9e69273b16f341c214548d04bbb9122d7a337abb80e163911ae" [label="docker-image://docker.io/library/nginx:1.15-alpine" shape="ellipse"];
  "sha256:756ff2b325978c4b8a806ac4d785a00b0e1621b79a4c319dfa2d87871532032e" [label="docker-image://docker.io/library/node:11.6-slim" shape="ellipse"];
  "sha256:979b9b12636506e0d277eb87dc8d0cf83827887a7ceec0bdcba051e6c7e3f322" [label="local://context" shape="ellipse"];
  "sha256:38e3cabfd1b73aab5f64f54574f4d30ba490f50be67a41f1fdb233b0eef4ef5a" [label="copy{src=/Navigation, dest=/CBS/Source/Navigation}" shape="note"];
  "sha256:5e898e53acdb11cb52b64a36308fa6b959934f5c92f68020c50364885cc6b41c" [label="copy{src=/UserManagement/Web/package.json, dest=/CBS/Source/UserManagement/Web/package.json}" shape="note"];
  "sha256:578c7656a861bf1cd016f66bdaad0a2a6dffcf5c6096d63b9afbafbee95d55f8" [label="mkdir{path=/CBS/Source/UserManagement/Web}" shape="note"];
  "sha256:bab3306f2d0d99d54c7f0d63ac2fb71a85ab34b31857fe09e42633f933d4b8fc" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:e0f171bc64473b2959ca80642d5d6fadccddfc5d91e77d384f297c164850dd54" [label="copy{src=/UserManagement/Web, dest=/CBS/Source/UserManagement/Web}" shape="note"];
  "sha256:15c949156f6890b607f99ced8ddd40306162873a04db1a10a574cb46ed3e1c2c" [label="mkdir{path=/CBS/Source/UserManagement/Web}" shape="note"];
  "sha256:8cdac030ca9e04a1eaf964ebb0d85be2009b52bcc92d649c160683e2eb0488e6" [label="/bin/sh -c npm run ${mode}" shape="box"];
  "sha256:22a9a41ee6a678f8e3ee05534be5c9fd1870cbf48968c186b10d93588e65b1e5" [label="copy{src=/CBS/Source/UserManagement/Web/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:009f792c5c6f26bdc97bba2038bfc48413e0005a873151f0d93ad67a0406875e" [label="copy{src=/CBS/Source/UserManagement/Web/nginx-default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:9b8f10fd771dd6b7959e60514c55f6ef8e307cd5d3d0ff4a13f4eacb7ad68059" [label="sha256:9b8f10fd771dd6b7959e60514c55f6ef8e307cd5d3d0ff4a13f4eacb7ad68059" shape="plaintext"];
  "sha256:756ff2b325978c4b8a806ac4d785a00b0e1621b79a4c319dfa2d87871532032e" -> "sha256:38e3cabfd1b73aab5f64f54574f4d30ba490f50be67a41f1fdb233b0eef4ef5a" [label=""];
  "sha256:979b9b12636506e0d277eb87dc8d0cf83827887a7ceec0bdcba051e6c7e3f322" -> "sha256:38e3cabfd1b73aab5f64f54574f4d30ba490f50be67a41f1fdb233b0eef4ef5a" [label=""];
  "sha256:38e3cabfd1b73aab5f64f54574f4d30ba490f50be67a41f1fdb233b0eef4ef5a" -> "sha256:5e898e53acdb11cb52b64a36308fa6b959934f5c92f68020c50364885cc6b41c" [label=""];
  "sha256:979b9b12636506e0d277eb87dc8d0cf83827887a7ceec0bdcba051e6c7e3f322" -> "sha256:5e898e53acdb11cb52b64a36308fa6b959934f5c92f68020c50364885cc6b41c" [label=""];
  "sha256:5e898e53acdb11cb52b64a36308fa6b959934f5c92f68020c50364885cc6b41c" -> "sha256:578c7656a861bf1cd016f66bdaad0a2a6dffcf5c6096d63b9afbafbee95d55f8" [label=""];
  "sha256:578c7656a861bf1cd016f66bdaad0a2a6dffcf5c6096d63b9afbafbee95d55f8" -> "sha256:bab3306f2d0d99d54c7f0d63ac2fb71a85ab34b31857fe09e42633f933d4b8fc" [label=""];
  "sha256:bab3306f2d0d99d54c7f0d63ac2fb71a85ab34b31857fe09e42633f933d4b8fc" -> "sha256:e0f171bc64473b2959ca80642d5d6fadccddfc5d91e77d384f297c164850dd54" [label=""];
  "sha256:979b9b12636506e0d277eb87dc8d0cf83827887a7ceec0bdcba051e6c7e3f322" -> "sha256:e0f171bc64473b2959ca80642d5d6fadccddfc5d91e77d384f297c164850dd54" [label=""];
  "sha256:e0f171bc64473b2959ca80642d5d6fadccddfc5d91e77d384f297c164850dd54" -> "sha256:15c949156f6890b607f99ced8ddd40306162873a04db1a10a574cb46ed3e1c2c" [label=""];
  "sha256:15c949156f6890b607f99ced8ddd40306162873a04db1a10a574cb46ed3e1c2c" -> "sha256:8cdac030ca9e04a1eaf964ebb0d85be2009b52bcc92d649c160683e2eb0488e6" [label=""];
  "sha256:c4109fa5e25fe9e69273b16f341c214548d04bbb9122d7a337abb80e163911ae" -> "sha256:22a9a41ee6a678f8e3ee05534be5c9fd1870cbf48968c186b10d93588e65b1e5" [label=""];
  "sha256:8cdac030ca9e04a1eaf964ebb0d85be2009b52bcc92d649c160683e2eb0488e6" -> "sha256:22a9a41ee6a678f8e3ee05534be5c9fd1870cbf48968c186b10d93588e65b1e5" [label=""];
  "sha256:22a9a41ee6a678f8e3ee05534be5c9fd1870cbf48968c186b10d93588e65b1e5" -> "sha256:009f792c5c6f26bdc97bba2038bfc48413e0005a873151f0d93ad67a0406875e" [label=""];
  "sha256:8cdac030ca9e04a1eaf964ebb0d85be2009b52bcc92d649c160683e2eb0488e6" -> "sha256:009f792c5c6f26bdc97bba2038bfc48413e0005a873151f0d93ad67a0406875e" [label=""];
  "sha256:009f792c5c6f26bdc97bba2038bfc48413e0005a873151f0d93ad67a0406875e" -> "sha256:9b8f10fd771dd6b7959e60514c55f6ef8e307cd5d3d0ff4a13f4eacb7ad68059" [label=""];
}

