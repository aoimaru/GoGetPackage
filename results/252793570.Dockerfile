[app/sources/252793570.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f3d92b2ec3aad664dad1dff276d90d50a9bfd236aadcf71dde18bceb455e76b3" [label="local://context" shape="ellipse"];
  "sha256:985a4bf9b015a1ede9dba047606a5a5a1fd56f6bbdddfbb824072a69af6f2e54" [label="copy{src=/redis-server_2.8.19.deb, dest=/redis-server.deb}" shape="note"];
  "sha256:a696b3c6521ab0c3b27ccf1161060f26b332f1f47009b68ca77a7a786094783f" [label="/bin/sh -c dpkg -i redis-server.deb" shape="box"];
  "sha256:af0f81a309b2b7917ae34a05e824647fda233c9e9ab9929620262ecfbfc0cfbc" [label="sha256:af0f81a309b2b7917ae34a05e824647fda233c9e9ab9929620262ecfbfc0cfbc" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:985a4bf9b015a1ede9dba047606a5a5a1fd56f6bbdddfbb824072a69af6f2e54" [label=""];
  "sha256:f3d92b2ec3aad664dad1dff276d90d50a9bfd236aadcf71dde18bceb455e76b3" -> "sha256:985a4bf9b015a1ede9dba047606a5a5a1fd56f6bbdddfbb824072a69af6f2e54" [label=""];
  "sha256:985a4bf9b015a1ede9dba047606a5a5a1fd56f6bbdddfbb824072a69af6f2e54" -> "sha256:a696b3c6521ab0c3b27ccf1161060f26b332f1f47009b68ca77a7a786094783f" [label=""];
  "sha256:a696b3c6521ab0c3b27ccf1161060f26b332f1f47009b68ca77a7a786094783f" -> "sha256:af0f81a309b2b7917ae34a05e824647fda233c9e9ab9929620262ecfbfc0cfbc" [label=""];
}

