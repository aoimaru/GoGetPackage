[app/sources/248828640.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:aa8af3a8495d5874dafddc8d4a2e56f83c4b5e409f27c09d142820f014826760" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends     gcc libc6-dev qemu-user-static ca-certificates     gcc-powerpc-linux-gnu libc6-dev-powerpc-cross     qemu-system-ppc" shape="box"];
  "sha256:be1cc10122abd3b8495c81cec0e3e5f2ab3a46af2da3819d9a75516e521f320f" [label="sha256:be1cc10122abd3b8495c81cec0e3e5f2ab3a46af2da3819d9a75516e521f320f" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:aa8af3a8495d5874dafddc8d4a2e56f83c4b5e409f27c09d142820f014826760" [label=""];
  "sha256:aa8af3a8495d5874dafddc8d4a2e56f83c4b5e409f27c09d142820f014826760" -> "sha256:be1cc10122abd3b8495c81cec0e3e5f2ab3a46af2da3819d9a75516e521f320f" [label=""];
}

