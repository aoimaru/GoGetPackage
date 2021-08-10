[app/sources/228387791.Dockerfile]
digraph {
  "sha256:46b2579f6be1d8bc549f85de2db61e7b716e7f4214c3c6afd2fefbe561b52350" [label="local://context" shape="ellipse"];
  "sha256:762b680038de44699bfad9050ed06ff63be0ef0bffd1b75520d3e54c20ef574c" [label="docker-image://docker.io/nvidia/cuda@sha256:362e4e25aa46a18dfa834360140e91b61cdb0a3a2796c8e09dadb268b9de3f6b" shape="ellipse"];
  "sha256:d656b11d03b587019ec64649fed3d00ce7ee9dfa462463725a31bd21abadc136" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends sudo lsb-release make build-essential" shape="box"];
  "sha256:7f15f390fe383aac28f292c943d59c8ad5b84047e56e89251964d20292638bf1" [label="/bin/sh -c adduser --gecos \"Test User\" --disabled-password testuser && test -d /home/testuser" shape="box"];
  "sha256:69ebc121e0951fda3c28f4a40f651e959dc3d57c7382b8c675acc3adf9e2df67" [label="copy{src=/visudo-helper.sh, dest=/root/},copy{src=/prep-run-test.sh, dest=/root/}" shape="note"];
  "sha256:b67fe1c0bb4f756089d1d211c837b2c220c1f6d6bbe741bb809d86e2e677435c" [label="/bin/sh -c VISUAL=/root/visudo-helper.sh visudo" shape="box"];
  "sha256:e331ea9e5dd174d73f5daa348e8d0fb52ac7d5d40d1468c82c12b9a6a5165b3a" [label="copy{src=/test_wrapper.sh, dest=/home/testuser}" shape="note"];
  "sha256:68c894516ded240a9e7a94c64c6f1c2bfc1b4595219828c2add7eedce6c46ba1" [label="copy{src=/BinaryDrop.tar.gz, dest=/home/testuser}" shape="note"];
  "sha256:b01a7f2596be34355f59a8ebbd665953940fd8af5e71319719676f00a752dac1" [label="copy{src=/GPU, dest=/home/testuser/GPU/}" shape="note"];
  "sha256:524d6979cfefadb936ed5b37b55e6adb4357bb5ae811e6fced377dc06c72256d" [label="/bin/sh -c chown -R testuser:testuser /home/testuser" shape="box"];
  "sha256:970b676966db5cc00c040f2ba11bd40e47529ba9b862246c9001e4d2a0118c56" [label="/bin/sh -c su - testuser -c \"./test_wrapper.sh BinaryDrop.tar.gz $PY_VERSION $WHEEL_BASE_URL\"" shape="box"];
  "sha256:fb685cd62d4217794bb0291631d73dd1f0ff042a90748666dd16aa724fded0f8" [label="/bin/sh -c /root/prep-run-test.sh" shape="box"];
  "sha256:bdb8a4ea0749fb7e0b5eb7ee189dc64aae6bd1ab5f1c3209c97b63a5c85ebe11" [label="sha256:bdb8a4ea0749fb7e0b5eb7ee189dc64aae6bd1ab5f1c3209c97b63a5c85ebe11" shape="plaintext"];
  "sha256:762b680038de44699bfad9050ed06ff63be0ef0bffd1b75520d3e54c20ef574c" -> "sha256:d656b11d03b587019ec64649fed3d00ce7ee9dfa462463725a31bd21abadc136" [label=""];
  "sha256:d656b11d03b587019ec64649fed3d00ce7ee9dfa462463725a31bd21abadc136" -> "sha256:7f15f390fe383aac28f292c943d59c8ad5b84047e56e89251964d20292638bf1" [label=""];
  "sha256:7f15f390fe383aac28f292c943d59c8ad5b84047e56e89251964d20292638bf1" -> "sha256:69ebc121e0951fda3c28f4a40f651e959dc3d57c7382b8c675acc3adf9e2df67" [label=""];
  "sha256:46b2579f6be1d8bc549f85de2db61e7b716e7f4214c3c6afd2fefbe561b52350" -> "sha256:69ebc121e0951fda3c28f4a40f651e959dc3d57c7382b8c675acc3adf9e2df67" [label=""];
  "sha256:69ebc121e0951fda3c28f4a40f651e959dc3d57c7382b8c675acc3adf9e2df67" -> "sha256:b67fe1c0bb4f756089d1d211c837b2c220c1f6d6bbe741bb809d86e2e677435c" [label=""];
  "sha256:b67fe1c0bb4f756089d1d211c837b2c220c1f6d6bbe741bb809d86e2e677435c" -> "sha256:e331ea9e5dd174d73f5daa348e8d0fb52ac7d5d40d1468c82c12b9a6a5165b3a" [label=""];
  "sha256:46b2579f6be1d8bc549f85de2db61e7b716e7f4214c3c6afd2fefbe561b52350" -> "sha256:e331ea9e5dd174d73f5daa348e8d0fb52ac7d5d40d1468c82c12b9a6a5165b3a" [label=""];
  "sha256:e331ea9e5dd174d73f5daa348e8d0fb52ac7d5d40d1468c82c12b9a6a5165b3a" -> "sha256:68c894516ded240a9e7a94c64c6f1c2bfc1b4595219828c2add7eedce6c46ba1" [label=""];
  "sha256:46b2579f6be1d8bc549f85de2db61e7b716e7f4214c3c6afd2fefbe561b52350" -> "sha256:68c894516ded240a9e7a94c64c6f1c2bfc1b4595219828c2add7eedce6c46ba1" [label=""];
  "sha256:68c894516ded240a9e7a94c64c6f1c2bfc1b4595219828c2add7eedce6c46ba1" -> "sha256:b01a7f2596be34355f59a8ebbd665953940fd8af5e71319719676f00a752dac1" [label=""];
  "sha256:46b2579f6be1d8bc549f85de2db61e7b716e7f4214c3c6afd2fefbe561b52350" -> "sha256:b01a7f2596be34355f59a8ebbd665953940fd8af5e71319719676f00a752dac1" [label=""];
  "sha256:b01a7f2596be34355f59a8ebbd665953940fd8af5e71319719676f00a752dac1" -> "sha256:524d6979cfefadb936ed5b37b55e6adb4357bb5ae811e6fced377dc06c72256d" [label=""];
  "sha256:524d6979cfefadb936ed5b37b55e6adb4357bb5ae811e6fced377dc06c72256d" -> "sha256:970b676966db5cc00c040f2ba11bd40e47529ba9b862246c9001e4d2a0118c56" [label=""];
  "sha256:970b676966db5cc00c040f2ba11bd40e47529ba9b862246c9001e4d2a0118c56" -> "sha256:fb685cd62d4217794bb0291631d73dd1f0ff042a90748666dd16aa724fded0f8" [label=""];
  "sha256:fb685cd62d4217794bb0291631d73dd1f0ff042a90748666dd16aa724fded0f8" -> "sha256:bdb8a4ea0749fb7e0b5eb7ee189dc64aae6bd1ab5f1c3209c97b63a5c85ebe11" [label=""];
}

