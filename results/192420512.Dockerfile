[app/sources/192420512.Dockerfile]
digraph {
  "sha256:45f92a63787ca1934d8f1eec8baa0fbfbbf6b2d39dac900cf46d889a1acdb98d" [label="local://context" shape="ellipse"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" [label="docker-image://docker.io/library/fedora:29" shape="ellipse"];
  "sha256:435986fc34e68b33558b866fac6ac6965e2e03e74a3337f00f192a48c3deef5f" [label="/bin/sh -c dnf -y install gmp-devel libffi-devel openssl-devel python-crypto     python-devel python-dnf python-pip python-setuptools python-virtualenv     redhat-rpm-config systemd &&     dnf -y group install \"C Development Tools and Libraries\"" shape="box"];
  "sha256:d4a785ec9f6412055459b7b50d8ded5f12fc8501441fdc20440385a2e37bb388" [label="/bin/sh -c (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done);     rm -f /lib/systemd/system/multi-user.target.wants/*;    rm -f /etc/systemd/system/*.wants/*;    rm -f /lib/systemd/system/local-fs.target.wants/*;     rm -f /lib/systemd/system/sockets.target.wants/*udev*;     rm -f /lib/systemd/system/sockets.target.wants/*initctl*;     rm -f /lib/systemd/system/basic.target.wants/*;    rm -f /lib/systemd/system/anaconda.target.wants/*;" shape="box"];
  "sha256:f80205a07136e0f8c743d078a54148528e72e8ed95174104ee45173491fd780b" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:d75ad116bf532271b37c0aaa8c18f160eee2d9ad7c24a767ed2b0de0fc717dfd" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:73d9b702b0f2897542b388cc4169846768c5df6775109670a92c00bbc5c51e3d" [label="sha256:73d9b702b0f2897542b388cc4169846768c5df6775109670a92c00bbc5c51e3d" shape="plaintext"];
  "sha256:104ead44baf63ed5dc19b5b736e1eb701a1c4156842a79a68cf592a94cc892fb" -> "sha256:435986fc34e68b33558b866fac6ac6965e2e03e74a3337f00f192a48c3deef5f" [label=""];
  "sha256:435986fc34e68b33558b866fac6ac6965e2e03e74a3337f00f192a48c3deef5f" -> "sha256:d4a785ec9f6412055459b7b50d8ded5f12fc8501441fdc20440385a2e37bb388" [label=""];
  "sha256:d4a785ec9f6412055459b7b50d8ded5f12fc8501441fdc20440385a2e37bb388" -> "sha256:f80205a07136e0f8c743d078a54148528e72e8ed95174104ee45173491fd780b" [label=""];
  "sha256:f80205a07136e0f8c743d078a54148528e72e8ed95174104ee45173491fd780b" -> "sha256:d75ad116bf532271b37c0aaa8c18f160eee2d9ad7c24a767ed2b0de0fc717dfd" [label=""];
  "sha256:45f92a63787ca1934d8f1eec8baa0fbfbbf6b2d39dac900cf46d889a1acdb98d" -> "sha256:d75ad116bf532271b37c0aaa8c18f160eee2d9ad7c24a767ed2b0de0fc717dfd" [label=""];
  "sha256:d75ad116bf532271b37c0aaa8c18f160eee2d9ad7c24a767ed2b0de0fc717dfd" -> "sha256:73d9b702b0f2897542b388cc4169846768c5df6775109670a92c00bbc5c51e3d" [label=""];
}

