[app/sources/252775549.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:4dcbc6afcbee97a261f0755781932a93b8cf714e97c90573b36407349cd573ce" [label="local://context" shape="ellipse"];
  "sha256:403da26eb630011868b33bda381c998f9b01701ee71f6dc322844c9b489563ad" [label="copy{src=/src, dest=/home/root/javahelloworld/src}" shape="note"];
  "sha256:cf348f14425aeb1995784971acfbdc16a92a8561db647ff78011d3f471e20f1a" [label="mkdir{path=/home/root/javahelloworld}" shape="note"];
  "sha256:9cc3f8bb96fc38e0fc8c09130c7db780746b7a350fa5794164ca616295a4b646" [label="/bin/sh -c mkdir bin" shape="box"];
  "sha256:e6231d6235db2bdaff14d4e7f05de2708c189a3be540fa942ee0735a6e2198ae" [label="/bin/sh -c javac -d bin src/HelloWorld.java" shape="box"];
  "sha256:b7ad5eb69468fabb7feeb7f35303afe67e5c247e74dc6e3b9787c2a7faf8e2ff" [label="/bin/sh -c touch abcd.txt" shape="box"];
  "sha256:705ebd1bb87dcf0bcbcdb622450c9bbf8391244baf4bbc01217572d838a99445" [label="sha256:705ebd1bb87dcf0bcbcdb622450c9bbf8391244baf4bbc01217572d838a99445" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:403da26eb630011868b33bda381c998f9b01701ee71f6dc322844c9b489563ad" [label=""];
  "sha256:4dcbc6afcbee97a261f0755781932a93b8cf714e97c90573b36407349cd573ce" -> "sha256:403da26eb630011868b33bda381c998f9b01701ee71f6dc322844c9b489563ad" [label=""];
  "sha256:403da26eb630011868b33bda381c998f9b01701ee71f6dc322844c9b489563ad" -> "sha256:cf348f14425aeb1995784971acfbdc16a92a8561db647ff78011d3f471e20f1a" [label=""];
  "sha256:cf348f14425aeb1995784971acfbdc16a92a8561db647ff78011d3f471e20f1a" -> "sha256:9cc3f8bb96fc38e0fc8c09130c7db780746b7a350fa5794164ca616295a4b646" [label=""];
  "sha256:9cc3f8bb96fc38e0fc8c09130c7db780746b7a350fa5794164ca616295a4b646" -> "sha256:e6231d6235db2bdaff14d4e7f05de2708c189a3be540fa942ee0735a6e2198ae" [label=""];
  "sha256:e6231d6235db2bdaff14d4e7f05de2708c189a3be540fa942ee0735a6e2198ae" -> "sha256:b7ad5eb69468fabb7feeb7f35303afe67e5c247e74dc6e3b9787c2a7faf8e2ff" [label=""];
  "sha256:b7ad5eb69468fabb7feeb7f35303afe67e5c247e74dc6e3b9787c2a7faf8e2ff" -> "sha256:705ebd1bb87dcf0bcbcdb622450c9bbf8391244baf4bbc01217572d838a99445" [label=""];
}

