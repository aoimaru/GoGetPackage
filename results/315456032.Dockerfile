[app/sources/315456032.Dockerfile]
digraph {
  "sha256:330a31b1de02f2717690daa938bdc4a9205b8c0d6b0cea90159d337df8677f12" [label="docker-image://docker.io/library/node:lts" shape="ellipse"];
  "sha256:8584d381810484cfca17e2b8fcfd3ac13f17f178aa35de055e389495464354e3" [label="mkdir{path=/app}" shape="note"];
  "sha256:2019a3ec7542fe849dd591061dedf47154fa3fa14d41304952f50d9b7a2503fa" [label="local://context" shape="ellipse"];
  "sha256:a77a3bf7d37f5f4a6b3b843c859d6e6668b75c879b4b1c4a72f4f3edbb027e60" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:52aaa893c9b0e9de9e3e7a66d058dcfd7ea7877e22c4b402808876a10abeb892" [label="/bin/sh -c npm install" shape="box"];
  "sha256:08a253b821b3ca953887212cecb4a108e9ae2dc581aab8869e3a02fef8fa6efc" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:26a67f830e29b42258e6f60ca5b70fbe56e46485b86618b6431c6e98d254da73" [label="sha256:26a67f830e29b42258e6f60ca5b70fbe56e46485b86618b6431c6e98d254da73" shape="plaintext"];
  "sha256:330a31b1de02f2717690daa938bdc4a9205b8c0d6b0cea90159d337df8677f12" -> "sha256:8584d381810484cfca17e2b8fcfd3ac13f17f178aa35de055e389495464354e3" [label=""];
  "sha256:8584d381810484cfca17e2b8fcfd3ac13f17f178aa35de055e389495464354e3" -> "sha256:a77a3bf7d37f5f4a6b3b843c859d6e6668b75c879b4b1c4a72f4f3edbb027e60" [label=""];
  "sha256:2019a3ec7542fe849dd591061dedf47154fa3fa14d41304952f50d9b7a2503fa" -> "sha256:a77a3bf7d37f5f4a6b3b843c859d6e6668b75c879b4b1c4a72f4f3edbb027e60" [label=""];
  "sha256:a77a3bf7d37f5f4a6b3b843c859d6e6668b75c879b4b1c4a72f4f3edbb027e60" -> "sha256:52aaa893c9b0e9de9e3e7a66d058dcfd7ea7877e22c4b402808876a10abeb892" [label=""];
  "sha256:52aaa893c9b0e9de9e3e7a66d058dcfd7ea7877e22c4b402808876a10abeb892" -> "sha256:08a253b821b3ca953887212cecb4a108e9ae2dc581aab8869e3a02fef8fa6efc" [label=""];
  "sha256:2019a3ec7542fe849dd591061dedf47154fa3fa14d41304952f50d9b7a2503fa" -> "sha256:08a253b821b3ca953887212cecb4a108e9ae2dc581aab8869e3a02fef8fa6efc" [label=""];
  "sha256:08a253b821b3ca953887212cecb4a108e9ae2dc581aab8869e3a02fef8fa6efc" -> "sha256:26a67f830e29b42258e6f60ca5b70fbe56e46485b86618b6431c6e98d254da73" [label=""];
}

