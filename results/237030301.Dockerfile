[app/sources/237030301.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" [label="/bin/sh -c apk add -v iptables sudo" shape="box"];
  "sha256:8af4a52965bc6a2e8b87a5c98e2caf49e5278d73ac776698fb62442d3fbd2f6a" [label="local://context" shape="ellipse"];
  "sha256:4bef1e7b15d7ab1d6213709c56cbf3b75b9589e93e4236de4ed0054c3011def6" [label="copy{src=/bin/etcd-agent, dest=/}" shape="note"];
  "sha256:4903e6d0584bb91bb365257711a9601f81e0348b866a3e26bf7bc478855291d6" [label="copy{src=/bin/etcd, dest=/}" shape="note"];
  "sha256:63c81bb0622ecd519e553bc0dc1d8e2b3055a2e929ca2ca166ec67e96add41ae" [label="copy{src=/bin/etcd-tester, dest=/}" shape="note"];
  "sha256:bee5ca57c7b2cc9d34128a010bf65c1554a39cad725ae42b20116f6f7b12c007" [label="/bin/sh -c mkdir /failure_archive" shape="box"];
  "sha256:700eab6a29436e66177224ddaa10f5311aa2cf78e0850165a28e1ad85bb0b210" [label="sha256:700eab6a29436e66177224ddaa10f5311aa2cf78e0850165a28e1ad85bb0b210" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" [label=""];
  "sha256:312d5ded8b67f92997bc0d28d3a9e232be9e8642662bf6f973de21ad88d78216" -> "sha256:4bef1e7b15d7ab1d6213709c56cbf3b75b9589e93e4236de4ed0054c3011def6" [label=""];
  "sha256:8af4a52965bc6a2e8b87a5c98e2caf49e5278d73ac776698fb62442d3fbd2f6a" -> "sha256:4bef1e7b15d7ab1d6213709c56cbf3b75b9589e93e4236de4ed0054c3011def6" [label=""];
  "sha256:4bef1e7b15d7ab1d6213709c56cbf3b75b9589e93e4236de4ed0054c3011def6" -> "sha256:4903e6d0584bb91bb365257711a9601f81e0348b866a3e26bf7bc478855291d6" [label=""];
  "sha256:8af4a52965bc6a2e8b87a5c98e2caf49e5278d73ac776698fb62442d3fbd2f6a" -> "sha256:4903e6d0584bb91bb365257711a9601f81e0348b866a3e26bf7bc478855291d6" [label=""];
  "sha256:4903e6d0584bb91bb365257711a9601f81e0348b866a3e26bf7bc478855291d6" -> "sha256:63c81bb0622ecd519e553bc0dc1d8e2b3055a2e929ca2ca166ec67e96add41ae" [label=""];
  "sha256:8af4a52965bc6a2e8b87a5c98e2caf49e5278d73ac776698fb62442d3fbd2f6a" -> "sha256:63c81bb0622ecd519e553bc0dc1d8e2b3055a2e929ca2ca166ec67e96add41ae" [label=""];
  "sha256:63c81bb0622ecd519e553bc0dc1d8e2b3055a2e929ca2ca166ec67e96add41ae" -> "sha256:bee5ca57c7b2cc9d34128a010bf65c1554a39cad725ae42b20116f6f7b12c007" [label=""];
  "sha256:bee5ca57c7b2cc9d34128a010bf65c1554a39cad725ae42b20116f6f7b12c007" -> "sha256:700eab6a29436e66177224ddaa10f5311aa2cf78e0850165a28e1ad85bb0b210" [label=""];
}

