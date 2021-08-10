[app/sources/480511356.Dockerfile]
digraph {
  "sha256:82ef21914ff75d896d3d8ea36e79a4667a59491f6818c7395c1ee7cccff477ae" [label="docker-image://docker.io/nfnty/arch-mini:latest" shape="ellipse"];
  "sha256:2d7506a36657ce2860159591164592f4f3262464c828874b42d5a94f9668c646" [label="local://context" shape="ellipse"];
  "sha256:d6d09c59ad220387ef483aff7d347c2ae91041da97594506b496d058bdc43906" [label="copy{src=/etc/pacman.conf, dest=/etc/}" shape="note"];
  "sha256:b7a2aa808641c60224280d3f83024079303765b07bb13a72eaf3706d4b68cca5" [label="copy{src=/scripts, dest=/opt/bootstrap/}" shape="note"];
  "sha256:bc68a53d820024cba13f8f1084cef9f788fee98066bda58abe6bb71ca7c52cd6" [label="/bin/sh -c chmod 'u=rw,g=r,o=r' /etc/pacman.conf &&     pacman --sync --clean --clean --noconfirm &&         chmod --recursive 'u=rX,g=,o=' /opt/bootstrap &&         pacman --sync --noconfirm --refresh --sysupgrade &&     pacman --sync --noconfirm arch-install-scripts &&     find /var/cache/pacman/pkg -mindepth 1 -delete &&     perl -p -i -e 's|^(chroot_setup )|#\\1|' /usr/bin/pacstrap &&         install --directory --owner=root --group=root --mode=700 /var/lib/bootstrap/{,archive}" shape="box"];
  "sha256:3eb4cc27f8d79ddab76bbb1b5660c90befc17c24e763758905cfce49f414f47c" [label="sha256:3eb4cc27f8d79ddab76bbb1b5660c90befc17c24e763758905cfce49f414f47c" shape="plaintext"];
  "sha256:82ef21914ff75d896d3d8ea36e79a4667a59491f6818c7395c1ee7cccff477ae" -> "sha256:d6d09c59ad220387ef483aff7d347c2ae91041da97594506b496d058bdc43906" [label=""];
  "sha256:2d7506a36657ce2860159591164592f4f3262464c828874b42d5a94f9668c646" -> "sha256:d6d09c59ad220387ef483aff7d347c2ae91041da97594506b496d058bdc43906" [label=""];
  "sha256:d6d09c59ad220387ef483aff7d347c2ae91041da97594506b496d058bdc43906" -> "sha256:b7a2aa808641c60224280d3f83024079303765b07bb13a72eaf3706d4b68cca5" [label=""];
  "sha256:2d7506a36657ce2860159591164592f4f3262464c828874b42d5a94f9668c646" -> "sha256:b7a2aa808641c60224280d3f83024079303765b07bb13a72eaf3706d4b68cca5" [label=""];
  "sha256:b7a2aa808641c60224280d3f83024079303765b07bb13a72eaf3706d4b68cca5" -> "sha256:bc68a53d820024cba13f8f1084cef9f788fee98066bda58abe6bb71ca7c52cd6" [label=""];
  "sha256:bc68a53d820024cba13f8f1084cef9f788fee98066bda58abe6bb71ca7c52cd6" -> "sha256:3eb4cc27f8d79ddab76bbb1b5660c90befc17c24e763758905cfce49f414f47c" [label=""];
}

