[app/sources/252786069.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:6057fa839fbbd86fb490fe00fe96898c78130495e019022b1f34cf037f29e2fe" [label="/bin/sh -c sed -i 's%archive.ubuntu.com%mirror.network32.net%' /etc/apt/sources.list" shape="box"];
  "sha256:c9ae247d5ac77b0597751cf8f51fd8b82c9a01994ea7ae377e8941143b1921bc" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:40b21001b04a758c8d68db0daa9389d2746136836994481909406b62c101b462" [label="/bin/sh -c mkdir -p /local_environment&& mkdir -p /scripts/remote_environment&& mkdir -p /remote_environment&& mkdir -p /scripts/setup" shape="box"];
  "sha256:524923c200d0abde6027412850c2fdb53f8dbd9da90fe62d30d4752138585d91" [label="local://context" shape="ellipse"];
  "sha256:66567b3309ae1f713b37f1a461e4e2770a8fa965869b04f42600402fee595695" [label="copy{src=/roles/base, dest=/roles/base}" shape="note"];
  "sha256:1d493aa8e667b8a0c95cd008af69828cadc4a3cecc09d4581e1c90cb4ba4b84c" [label="copy{src=/roles/confd, dest=/roles/confd}" shape="note"];
  "sha256:0fe8028bcb02629c41c7e1ad33a850732a12a88e824ea4635fadd0bdf20657f0" [label="/bin/sh -c /roles/confd/install.sh" shape="box"];
  "sha256:b3e34c75c07ea612bd085129cfca89ed76ce45b9d1db4268a6e92aed7fbe44e1" [label="mkdir{path=/mnt/workdir}" shape="note"];
  "sha256:4b134eab956b779d93243b9ed0b769c80acb8f83994ba9b37c3121f36feae571" [label="sha256:4b134eab956b779d93243b9ed0b769c80acb8f83994ba9b37c3121f36feae571" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:6057fa839fbbd86fb490fe00fe96898c78130495e019022b1f34cf037f29e2fe" [label=""];
  "sha256:6057fa839fbbd86fb490fe00fe96898c78130495e019022b1f34cf037f29e2fe" -> "sha256:c9ae247d5ac77b0597751cf8f51fd8b82c9a01994ea7ae377e8941143b1921bc" [label=""];
  "sha256:c9ae247d5ac77b0597751cf8f51fd8b82c9a01994ea7ae377e8941143b1921bc" -> "sha256:40b21001b04a758c8d68db0daa9389d2746136836994481909406b62c101b462" [label=""];
  "sha256:40b21001b04a758c8d68db0daa9389d2746136836994481909406b62c101b462" -> "sha256:66567b3309ae1f713b37f1a461e4e2770a8fa965869b04f42600402fee595695" [label=""];
  "sha256:524923c200d0abde6027412850c2fdb53f8dbd9da90fe62d30d4752138585d91" -> "sha256:66567b3309ae1f713b37f1a461e4e2770a8fa965869b04f42600402fee595695" [label=""];
  "sha256:66567b3309ae1f713b37f1a461e4e2770a8fa965869b04f42600402fee595695" -> "sha256:1d493aa8e667b8a0c95cd008af69828cadc4a3cecc09d4581e1c90cb4ba4b84c" [label=""];
  "sha256:524923c200d0abde6027412850c2fdb53f8dbd9da90fe62d30d4752138585d91" -> "sha256:1d493aa8e667b8a0c95cd008af69828cadc4a3cecc09d4581e1c90cb4ba4b84c" [label=""];
  "sha256:1d493aa8e667b8a0c95cd008af69828cadc4a3cecc09d4581e1c90cb4ba4b84c" -> "sha256:0fe8028bcb02629c41c7e1ad33a850732a12a88e824ea4635fadd0bdf20657f0" [label=""];
  "sha256:0fe8028bcb02629c41c7e1ad33a850732a12a88e824ea4635fadd0bdf20657f0" -> "sha256:b3e34c75c07ea612bd085129cfca89ed76ce45b9d1db4268a6e92aed7fbe44e1" [label=""];
  "sha256:b3e34c75c07ea612bd085129cfca89ed76ce45b9d1db4268a6e92aed7fbe44e1" -> "sha256:4b134eab956b779d93243b9ed0b769c80acb8f83994ba9b37c3121f36feae571" [label=""];
}

