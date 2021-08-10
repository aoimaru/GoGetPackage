[app/sources/321545234.Dockerfile]
digraph {
  "sha256:3b74dcaec280b841e040b4cf635cafea9769ea2069b1587f7460de1edb32dd29" [label="local://context" shape="ellipse"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:7e8cbca7e0fa8a41aa4bda27b0713339568514aa1b94da617518028b089de65d" [label="/bin/sh -c apt-get update && apt-get install -y ca-certificates" shape="box"];
  "sha256:3b54230f29cc6ada7dcca9f26783ecf38959ac93c8b5de741f0119a3318e9109" [label="copy{src=/graphpipe-tf, dest=/}" shape="note"];
  "sha256:4aa72cd4d35a340313de356ad7b07da31cb601ddeeabf58277cc90f797673eb1" [label="copy{src=/lib/libiomp5.so, dest=/usr/local/lib}" shape="note"];
  "sha256:bfddc3de0274de91581ef568ad0caaac48a90d49a2fe2f26c17638a4b041c45a" [label="copy{src=/lib/libmklml_intel.so, dest=/usr/local/lib}" shape="note"];
  "sha256:fa8a9fa8058ddc1567e62c7aa3c131b05d8f195ff2d206860e4819e03547a63c" [label="copy{src=/lib/libtensorflow.so, dest=/usr/local/lib}" shape="note"];
  "sha256:8d8d111f251f24ccd0175c4f47238145120122c113bba5ec0ea3f0ee5719078b" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:11de725105238766eb4f2c7f1be1776f7ac05a28c6ef80774a80ec9e52f09cf4" [label="sha256:11de725105238766eb4f2c7f1be1776f7ac05a28c6ef80774a80ec9e52f09cf4" shape="plaintext"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" -> "sha256:7e8cbca7e0fa8a41aa4bda27b0713339568514aa1b94da617518028b089de65d" [label=""];
  "sha256:7e8cbca7e0fa8a41aa4bda27b0713339568514aa1b94da617518028b089de65d" -> "sha256:3b54230f29cc6ada7dcca9f26783ecf38959ac93c8b5de741f0119a3318e9109" [label=""];
  "sha256:3b74dcaec280b841e040b4cf635cafea9769ea2069b1587f7460de1edb32dd29" -> "sha256:3b54230f29cc6ada7dcca9f26783ecf38959ac93c8b5de741f0119a3318e9109" [label=""];
  "sha256:3b54230f29cc6ada7dcca9f26783ecf38959ac93c8b5de741f0119a3318e9109" -> "sha256:4aa72cd4d35a340313de356ad7b07da31cb601ddeeabf58277cc90f797673eb1" [label=""];
  "sha256:3b74dcaec280b841e040b4cf635cafea9769ea2069b1587f7460de1edb32dd29" -> "sha256:4aa72cd4d35a340313de356ad7b07da31cb601ddeeabf58277cc90f797673eb1" [label=""];
  "sha256:4aa72cd4d35a340313de356ad7b07da31cb601ddeeabf58277cc90f797673eb1" -> "sha256:bfddc3de0274de91581ef568ad0caaac48a90d49a2fe2f26c17638a4b041c45a" [label=""];
  "sha256:3b74dcaec280b841e040b4cf635cafea9769ea2069b1587f7460de1edb32dd29" -> "sha256:bfddc3de0274de91581ef568ad0caaac48a90d49a2fe2f26c17638a4b041c45a" [label=""];
  "sha256:bfddc3de0274de91581ef568ad0caaac48a90d49a2fe2f26c17638a4b041c45a" -> "sha256:fa8a9fa8058ddc1567e62c7aa3c131b05d8f195ff2d206860e4819e03547a63c" [label=""];
  "sha256:3b74dcaec280b841e040b4cf635cafea9769ea2069b1587f7460de1edb32dd29" -> "sha256:fa8a9fa8058ddc1567e62c7aa3c131b05d8f195ff2d206860e4819e03547a63c" [label=""];
  "sha256:fa8a9fa8058ddc1567e62c7aa3c131b05d8f195ff2d206860e4819e03547a63c" -> "sha256:8d8d111f251f24ccd0175c4f47238145120122c113bba5ec0ea3f0ee5719078b" [label=""];
  "sha256:8d8d111f251f24ccd0175c4f47238145120122c113bba5ec0ea3f0ee5719078b" -> "sha256:11de725105238766eb4f2c7f1be1776f7ac05a28c6ef80774a80ec9e52f09cf4" [label=""];
}

