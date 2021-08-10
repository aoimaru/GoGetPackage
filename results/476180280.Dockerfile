[app/sources/476180280.Dockerfile]
digraph {
  "sha256:ca0dce5fa31af5f93c9a5affa6fe361b027c0b48a7057d48bb9051547cb92754" [label="docker-image://docker.io/library/centos:centos7@sha256:0f4ec88e21daf75124b8a9e5ca03c37a5e937e0e108a255d890492430789b60e" shape="ellipse"];
  "sha256:fff03a38c677056e67c4bc7058afeb797d30e7bc6b473ed821bb2623d43adaf3" [label="/bin/sh -c rpm -ivh https://s3.amazonaws.com/influxdb/influxdb-0.8.8-1.x86_64.rpm" shape="box"];
  "sha256:da0169f90194a86522d562bcd1c3646901284a04f6439d6da2937df62458656c" [label="sha256:da0169f90194a86522d562bcd1c3646901284a04f6439d6da2937df62458656c" shape="plaintext"];
  "sha256:ca0dce5fa31af5f93c9a5affa6fe361b027c0b48a7057d48bb9051547cb92754" -> "sha256:fff03a38c677056e67c4bc7058afeb797d30e7bc6b473ed821bb2623d43adaf3" [label=""];
  "sha256:fff03a38c677056e67c4bc7058afeb797d30e7bc6b473ed821bb2623d43adaf3" -> "sha256:da0169f90194a86522d562bcd1c3646901284a04f6439d6da2937df62458656c" [label=""];
}

