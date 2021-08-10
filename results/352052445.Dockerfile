[app/sources/352052445.Dockerfile]
digraph {
  "sha256:bef4ef33b616c5a86e76617c7edc2a683fe15b59491fc10016340446c89c6129" [label="docker-image://docker.io/library/haproxy:1.6.1" shape="ellipse"];
  "sha256:ace317052186a126fc54d8bf4d55c3bb7d83477d781a6f82c36ab6896f49c859" [label="local://context" shape="ellipse"];
  "sha256:8ae63d66fbe6509e037958f3590d327612a3d3709f000e5d4fc858e5feb327a1" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:9239d49cffea5a9606b5a9a1ee861d72e1ec11c5dcf056614f60661dc5e47b42" [label="copy{src=/script, dest=/script}" shape="note"];
  "sha256:5e9f2c94396491b52c4bccda3f90ca73da8872e3981acfbd840287b20b300c48" [label="/bin/sh -c chmod -R 500 /script &&     chmod -R 400 /config; sync &&     /script/init_image.sh" shape="box"];
  "sha256:dbc9585e29ef7a43b3a80dfa988e67baec426673eec19926a680105f69370b64" [label="sha256:dbc9585e29ef7a43b3a80dfa988e67baec426673eec19926a680105f69370b64" shape="plaintext"];
  "sha256:bef4ef33b616c5a86e76617c7edc2a683fe15b59491fc10016340446c89c6129" -> "sha256:8ae63d66fbe6509e037958f3590d327612a3d3709f000e5d4fc858e5feb327a1" [label=""];
  "sha256:ace317052186a126fc54d8bf4d55c3bb7d83477d781a6f82c36ab6896f49c859" -> "sha256:8ae63d66fbe6509e037958f3590d327612a3d3709f000e5d4fc858e5feb327a1" [label=""];
  "sha256:8ae63d66fbe6509e037958f3590d327612a3d3709f000e5d4fc858e5feb327a1" -> "sha256:9239d49cffea5a9606b5a9a1ee861d72e1ec11c5dcf056614f60661dc5e47b42" [label=""];
  "sha256:ace317052186a126fc54d8bf4d55c3bb7d83477d781a6f82c36ab6896f49c859" -> "sha256:9239d49cffea5a9606b5a9a1ee861d72e1ec11c5dcf056614f60661dc5e47b42" [label=""];
  "sha256:9239d49cffea5a9606b5a9a1ee861d72e1ec11c5dcf056614f60661dc5e47b42" -> "sha256:5e9f2c94396491b52c4bccda3f90ca73da8872e3981acfbd840287b20b300c48" [label=""];
  "sha256:5e9f2c94396491b52c4bccda3f90ca73da8872e3981acfbd840287b20b300c48" -> "sha256:dbc9585e29ef7a43b3a80dfa988e67baec426673eec19926a680105f69370b64" [label=""];
}

