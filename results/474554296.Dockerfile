[app/sources/474554296.Dockerfile]
digraph {
  "sha256:56bd40041e666d4e73b7d73f47228939a8b9c7c4cb23441e3f1e5619b3dd0241" [label="docker-image://docker.io/library/fedora:21" shape="ellipse"];
  "sha256:29416aa8ff19fa3ada5d2f71d53369f4f1284218956f24ce7c2c4c8f64a6b981" [label="/bin/sh -c yum install -y @development-tools fedora-packager" shape="box"];
  "sha256:c201653a4460726dd19811f5738a10f0863d908bc64491523951ed527c52b620" [label="/bin/sh -c yum install -y btrfs-progs-devel device-mapper-devel glibc-static libselinux-devel sqlite-devel tar" shape="box"];
  "sha256:3891264ccd42b0257bd631122c8cd5e9a827a7d0cc0f1d986b7777fda6520ccd" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:4825a5aca58af57c4253e6bbfeb3695edde4521187a22aedb6b503de317564ca" [label="sha256:4825a5aca58af57c4253e6bbfeb3695edde4521187a22aedb6b503de317564ca" shape="plaintext"];
  "sha256:56bd40041e666d4e73b7d73f47228939a8b9c7c4cb23441e3f1e5619b3dd0241" -> "sha256:29416aa8ff19fa3ada5d2f71d53369f4f1284218956f24ce7c2c4c8f64a6b981" [label=""];
  "sha256:29416aa8ff19fa3ada5d2f71d53369f4f1284218956f24ce7c2c4c8f64a6b981" -> "sha256:c201653a4460726dd19811f5738a10f0863d908bc64491523951ed527c52b620" [label=""];
  "sha256:c201653a4460726dd19811f5738a10f0863d908bc64491523951ed527c52b620" -> "sha256:3891264ccd42b0257bd631122c8cd5e9a827a7d0cc0f1d986b7777fda6520ccd" [label=""];
  "sha256:3891264ccd42b0257bd631122c8cd5e9a827a7d0cc0f1d986b7777fda6520ccd" -> "sha256:4825a5aca58af57c4253e6bbfeb3695edde4521187a22aedb6b503de317564ca" [label=""];
}

