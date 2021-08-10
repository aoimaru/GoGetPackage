[app/sources/242600291.Dockerfile]
digraph {
  "sha256:334692a0645a7c6ea081cdbaf460c64a1a785ee84bfbaf9dd6db05d4b2ac835c" [label="docker-image://docker.io/opensuse/s390x:tumbleweed" shape="ellipse"];
  "sha256:3c5f74171352146b0024644d4b59d5a69665215a5fef28cdc95a4577d21a6553" [label="/bin/sh -c zypper ar https://download.opensuse.org/ports/zsystems/tumbleweed/repo/oss/ tumbleweed" shape="box"];
  "sha256:b7b3b4a200c1b68311a6ae360ab9e0667d64b40d809fdb97fb04e33f4d73ffd5" [label="/bin/sh -c zypper --non-interactive install ca-certificates* curl gzip rpm-build" shape="box"];
  "sha256:95c8505ad303869075f2ad42ac712dac82532049be0891c07a23bddc8507c520" [label="/bin/sh -c zypper --non-interactive install libbtrfs-devel device-mapper-devel glibc-static  libselinux-devel libtool-ltdl-devel pkg-config selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim systemd-rpm-macros" shape="box"];
  "sha256:2e275652eabfb46fe85fc28125271c065cd436a07e875582e1a69625ed4a5da9" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:3436005ccaec05848cd3c29df3e34acb631585659928aeb1273b029bb0300d60" [label="/bin/sh -c ln -s /usr/bin/gcc /usr/bin/s390x-linux-gnu-gcc" shape="box"];
  "sha256:18c98328aee17241dcb5575d19ea311d5605c7860063f8384670788847fb1363" [label="sha256:18c98328aee17241dcb5575d19ea311d5605c7860063f8384670788847fb1363" shape="plaintext"];
  "sha256:334692a0645a7c6ea081cdbaf460c64a1a785ee84bfbaf9dd6db05d4b2ac835c" -> "sha256:3c5f74171352146b0024644d4b59d5a69665215a5fef28cdc95a4577d21a6553" [label=""];
  "sha256:3c5f74171352146b0024644d4b59d5a69665215a5fef28cdc95a4577d21a6553" -> "sha256:b7b3b4a200c1b68311a6ae360ab9e0667d64b40d809fdb97fb04e33f4d73ffd5" [label=""];
  "sha256:b7b3b4a200c1b68311a6ae360ab9e0667d64b40d809fdb97fb04e33f4d73ffd5" -> "sha256:95c8505ad303869075f2ad42ac712dac82532049be0891c07a23bddc8507c520" [label=""];
  "sha256:95c8505ad303869075f2ad42ac712dac82532049be0891c07a23bddc8507c520" -> "sha256:2e275652eabfb46fe85fc28125271c065cd436a07e875582e1a69625ed4a5da9" [label=""];
  "sha256:2e275652eabfb46fe85fc28125271c065cd436a07e875582e1a69625ed4a5da9" -> "sha256:3436005ccaec05848cd3c29df3e34acb631585659928aeb1273b029bb0300d60" [label=""];
  "sha256:3436005ccaec05848cd3c29df3e34acb631585659928aeb1273b029bb0300d60" -> "sha256:18c98328aee17241dcb5575d19ea311d5605c7860063f8384670788847fb1363" [label=""];
}

