[app/sources/340054711.Dockerfile]
digraph {
  "sha256:bebcb8c09e4579a8c0143d2a8f4800b54b571f0411b0131a7709e16ae6742338" [label="docker-image://docker.io/opensuse/amd64:tumbleweed" shape="ellipse"];
  "sha256:593f308de18d6a2297aa0c1fa1c688270df495f753f30ab6076275f797e56109" [label="/bin/sh -c zypper --non-interactive al dbus-1 kbd kmod systemd systemd-presets-branding-openSUSE udev openSUSE-release-ftp  && zypper --non-interactive in --no-recommends \tqemu-linux-user  && rpm -e --nodeps --allmatches --noscripts \t`rpm -qa | grep aaa_base` \t`rpm -qa | grep acl | grep -v lib` \t`rpm -qa | grep branding-openSUSE` \t`rpm -qa | grep cpio` \t`rpm -qa | grep cryptsetup` \t`rpm -qa | grep dracut` \t`rpm -qa | grep fipscheck` \t`rpm -qa | grep kbd` \t`rpm -qa | grep kmod` \t`rpm -qa | grep mapper` \t`rpm -qa | grep ncurses-utils` \t`rpm -qa | grep openSUSE-release` \t`rpm -qa | grep perl` \t`rpm -qa | grep pigz` \t`rpm -qa | grep pinentry` \t`rpm -qa | grep pkg-config` \t`rpm -qa | grep qrencode` \t`rpm -qa | grep sg3_utils`  && zypper cc --all  && rm -rf /var/cache/zypp*  && rm -rf /tmp/*  && rm -rf /var/log/*" shape="box"];
  "sha256:4c66fe1adb3d1a6647ef880d7524852dd2f69ddd87c08a27c071c275e51fa4c7" [label="local://context" shape="ellipse"];
  "sha256:c669eb38fa7564dcd50f88cbd3e98b9c1f6c615cae2551a535af25686d473394" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:34982fe1d5d85e59ae065604161f4ec4306e8fbb7d821e9293258651ec7107c0" [label="sha256:34982fe1d5d85e59ae065604161f4ec4306e8fbb7d821e9293258651ec7107c0" shape="plaintext"];
  "sha256:bebcb8c09e4579a8c0143d2a8f4800b54b571f0411b0131a7709e16ae6742338" -> "sha256:593f308de18d6a2297aa0c1fa1c688270df495f753f30ab6076275f797e56109" [label=""];
  "sha256:593f308de18d6a2297aa0c1fa1c688270df495f753f30ab6076275f797e56109" -> "sha256:c669eb38fa7564dcd50f88cbd3e98b9c1f6c615cae2551a535af25686d473394" [label=""];
  "sha256:4c66fe1adb3d1a6647ef880d7524852dd2f69ddd87c08a27c071c275e51fa4c7" -> "sha256:c669eb38fa7564dcd50f88cbd3e98b9c1f6c615cae2551a535af25686d473394" [label=""];
  "sha256:c669eb38fa7564dcd50f88cbd3e98b9c1f6c615cae2551a535af25686d473394" -> "sha256:34982fe1d5d85e59ae065604161f4ec4306e8fbb7d821e9293258651ec7107c0" [label=""];
}

