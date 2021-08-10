[app/sources/222585509.Dockerfile]
digraph {
  "sha256:6ffbd0eb053058c9ea9efd011d8bd99001e04a795a955faab8212d4bd6ecb513" [label="local://context" shape="ellipse"];
  "sha256:59913e9146b59fe7f92ef29d3fb996d49dbfed4143771c5522b11a12e90cf77c" [label="docker-image://quay.io/enmasse/java-base:11-1@sha256:50fa3478d11d0ab5aef0f44ab00813d738dff445f402c76be9ca0ebb174ecc89" shape="ellipse"];
  "sha256:554310b7d0d88e1c5b22e84e664873acbd90b054dc3c8663555b628662813f6c" [label="/bin/sh -c yum -y install openssl && yum -y clean all" shape="box"];
  "sha256:a32aa5892efcdc641327c97e1d67e4ce2040b17e1afc85c0532696db10b0e28d" [label="copy{src=/target/address-space-controller--dist.tar.gz, dest=/}" shape="note"];
  "sha256:0c531d8e291d12682cb74771398f035eb006863c4818188790b990da8661638b" [label="sha256:0c531d8e291d12682cb74771398f035eb006863c4818188790b990da8661638b" shape="plaintext"];
  "sha256:59913e9146b59fe7f92ef29d3fb996d49dbfed4143771c5522b11a12e90cf77c" -> "sha256:554310b7d0d88e1c5b22e84e664873acbd90b054dc3c8663555b628662813f6c" [label=""];
  "sha256:554310b7d0d88e1c5b22e84e664873acbd90b054dc3c8663555b628662813f6c" -> "sha256:a32aa5892efcdc641327c97e1d67e4ce2040b17e1afc85c0532696db10b0e28d" [label=""];
  "sha256:6ffbd0eb053058c9ea9efd011d8bd99001e04a795a955faab8212d4bd6ecb513" -> "sha256:a32aa5892efcdc641327c97e1d67e4ce2040b17e1afc85c0532696db10b0e28d" [label=""];
  "sha256:a32aa5892efcdc641327c97e1d67e4ce2040b17e1afc85c0532696db10b0e28d" -> "sha256:0c531d8e291d12682cb74771398f035eb006863c4818188790b990da8661638b" [label=""];
}

