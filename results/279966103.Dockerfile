[app/sources/279966103.Dockerfile]
digraph {
  "sha256:41c04391c01c5be8d6134a460db716925301bce3b66383d8dea796f38b2ad1e4" [label="docker-image://docker.io/library/debian:8@sha256:32ad5050caffb2c7e969dac873bce2c370015c2256ff984b70c1c08b3a2816a0" shape="ellipse"];
  "sha256:cbc22c262df5f72602c63ca37fd96c8ecd8fd1abfa6ed78cd252daec9ec05e39" [label="/bin/sh -c systemctl mask --     -.mount     dev-mqueue.mount     dev-hugepages.mount     etc-hosts.mount     etc-hostname.mount     etc-resolv.conf.mount     proc-bus.mount     proc-irq.mount     proc-kcore.mount     proc-sys-fs-binfmt_misc.mount     proc-sysrq\\\\\\\\x2dtrigger.mount     sys-fs-fuse-connections.mount     sys-kernel-config.mount     sys-kernel-debug.mount     tmp.mount   && systemctl mask --     console-getty.service     display-manager.service     getty-static.service     getty\\@tty1.service     hwclock-save.service     ondemand.service     systemd-logind.service     systemd-remount-fs.service   && ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target  && ln -sf /lib/systemd/system/halt.target /etc/systemd/system/sigpwr.target" shape="box"];
  "sha256:1ae1215fae6f0895bc9b2b80bab06fdb7dd5dfda7b48729a5187ff2cc692dcb8" [label="/bin/sh -c apt-get update -qq -y" shape="box"];
  "sha256:3269e8511a42b37b9bfa985ea81f3fb0cafd6066f16385487742626e75cd6a3a" [label="/bin/sh -c apt-get install -qq -y git python-pip python-dev libssl-dev \tlibffi-dev rsyslog systemd systemd-cron sudo" shape="box"];
  "sha256:03d95a96dae28747c7d82c088de5c0b2d0cf528f0ab82c511eaefa8096684d36" [label="/bin/sh -c sed -i 's/^\\($ModLoad imklog\\)/#\\1/' /etc/rsyslog.conf" shape="box"];
  "sha256:3dd07a4f3a11955f6393fb1f650d802aa6d3f7dabdbe3eeebf1e9254d8a0ff20" [label="/bin/sh -c pip install --upgrade ansible" shape="box"];
  "sha256:4b6b376e6440ca7f452f031ca582e125453f92dd36a126b9670a2a16a4ec8af1" [label="/bin/sh -c bash -c 'mkdir -p /etc/ansible'" shape="box"];
  "sha256:4e620a472e43033039dd6f73e0118d65af35dfe3e118e241ac46fa72eda541a4" [label="/bin/sh -c echo \"[local]\\nlocalhost ansible_connection=local\" > /etc/ansible/hosts" shape="box"];
  "sha256:bc12e294f4926cf20ce7f709bec8a28142872964a09c8e63652a14c010ddc53e" [label="sha256:bc12e294f4926cf20ce7f709bec8a28142872964a09c8e63652a14c010ddc53e" shape="plaintext"];
  "sha256:41c04391c01c5be8d6134a460db716925301bce3b66383d8dea796f38b2ad1e4" -> "sha256:cbc22c262df5f72602c63ca37fd96c8ecd8fd1abfa6ed78cd252daec9ec05e39" [label=""];
  "sha256:cbc22c262df5f72602c63ca37fd96c8ecd8fd1abfa6ed78cd252daec9ec05e39" -> "sha256:1ae1215fae6f0895bc9b2b80bab06fdb7dd5dfda7b48729a5187ff2cc692dcb8" [label=""];
  "sha256:1ae1215fae6f0895bc9b2b80bab06fdb7dd5dfda7b48729a5187ff2cc692dcb8" -> "sha256:3269e8511a42b37b9bfa985ea81f3fb0cafd6066f16385487742626e75cd6a3a" [label=""];
  "sha256:3269e8511a42b37b9bfa985ea81f3fb0cafd6066f16385487742626e75cd6a3a" -> "sha256:03d95a96dae28747c7d82c088de5c0b2d0cf528f0ab82c511eaefa8096684d36" [label=""];
  "sha256:03d95a96dae28747c7d82c088de5c0b2d0cf528f0ab82c511eaefa8096684d36" -> "sha256:3dd07a4f3a11955f6393fb1f650d802aa6d3f7dabdbe3eeebf1e9254d8a0ff20" [label=""];
  "sha256:3dd07a4f3a11955f6393fb1f650d802aa6d3f7dabdbe3eeebf1e9254d8a0ff20" -> "sha256:4b6b376e6440ca7f452f031ca582e125453f92dd36a126b9670a2a16a4ec8af1" [label=""];
  "sha256:4b6b376e6440ca7f452f031ca582e125453f92dd36a126b9670a2a16a4ec8af1" -> "sha256:4e620a472e43033039dd6f73e0118d65af35dfe3e118e241ac46fa72eda541a4" [label=""];
  "sha256:4e620a472e43033039dd6f73e0118d65af35dfe3e118e241ac46fa72eda541a4" -> "sha256:bc12e294f4926cf20ce7f709bec8a28142872964a09c8e63652a14c010ddc53e" [label=""];
}

