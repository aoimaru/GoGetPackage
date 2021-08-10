[app/sources/182098377.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:b520d17f8e5fce1a8207884f8a90571a74197efb0519159c88ace1db5e68f327" [label="/bin/sh -c rpm -Uvh http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/pgdg-centos94-9.4-1.noarch.rpm" shape="box"];
  "sha256:54843df754599d3032e3fbe59fad400484cdca614d41c0bca558dd6360ad6a5e" [label="/bin/sh -c yum install -y procps-ng postgresql94 libxslt unzip openssh-clients hostname bind-utils  && yum clean all -y" shape="box"];
  "sha256:5f9ef471f55e8b3ab1d8e14673d914ccb8f103efee7554af37771b8323def39f" [label="/bin/sh -c mkdir -p /var/cpm/bin" shape="box"];
  "sha256:4adafcf315fa481e474c37d76d67e186ea44acc45e7132257db00ead52a5b0e2" [label="/bin/sh -c mkdir -p /var/cpm/conf" shape="box"];
  "sha256:438fcfc5e3833636fe1681c1895d5215745faaa75a6cd86d071a70c0c71bd83b" [label="local://context" shape="ellipse"];
  "sha256:0be5b35a93315992d1414b0e54a0709967f01eedccbeb2eb0316f58c0a986170" [label="copy{src=/conf/.bash_profile, dest=/var/lib/pgsql/}" shape="note"];
  "sha256:ba69416341dfea139e886502b02cdd52c882768e75083aabc113ceee585ca00d" [label="copy{src=/sbin, dest=/var/cpm/bin}" shape="note"];
  "sha256:3077d9d05ada811cedf66410533fb24796916336f4b41ad6398e3d900eadccac" [label="copy{src=/bin, dest=/var/cpm/bin}" shape="note"];
  "sha256:0582448d58884a57ee7c510b1df4e4af0b71112e39eaba059ea7c6f0998f6b5f" [label="copy{src=/conf, dest=/var/cpm/conf}" shape="note"];
  "sha256:724c76e9513c9aca05ed6d0df29b86f0bc3e1e6dc3f0fd4527a2a579ecdd9590" [label="sha256:724c76e9513c9aca05ed6d0df29b86f0bc3e1e6dc3f0fd4527a2a579ecdd9590" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:b520d17f8e5fce1a8207884f8a90571a74197efb0519159c88ace1db5e68f327" [label=""];
  "sha256:b520d17f8e5fce1a8207884f8a90571a74197efb0519159c88ace1db5e68f327" -> "sha256:54843df754599d3032e3fbe59fad400484cdca614d41c0bca558dd6360ad6a5e" [label=""];
  "sha256:54843df754599d3032e3fbe59fad400484cdca614d41c0bca558dd6360ad6a5e" -> "sha256:5f9ef471f55e8b3ab1d8e14673d914ccb8f103efee7554af37771b8323def39f" [label=""];
  "sha256:5f9ef471f55e8b3ab1d8e14673d914ccb8f103efee7554af37771b8323def39f" -> "sha256:4adafcf315fa481e474c37d76d67e186ea44acc45e7132257db00ead52a5b0e2" [label=""];
  "sha256:4adafcf315fa481e474c37d76d67e186ea44acc45e7132257db00ead52a5b0e2" -> "sha256:0be5b35a93315992d1414b0e54a0709967f01eedccbeb2eb0316f58c0a986170" [label=""];
  "sha256:438fcfc5e3833636fe1681c1895d5215745faaa75a6cd86d071a70c0c71bd83b" -> "sha256:0be5b35a93315992d1414b0e54a0709967f01eedccbeb2eb0316f58c0a986170" [label=""];
  "sha256:0be5b35a93315992d1414b0e54a0709967f01eedccbeb2eb0316f58c0a986170" -> "sha256:ba69416341dfea139e886502b02cdd52c882768e75083aabc113ceee585ca00d" [label=""];
  "sha256:438fcfc5e3833636fe1681c1895d5215745faaa75a6cd86d071a70c0c71bd83b" -> "sha256:ba69416341dfea139e886502b02cdd52c882768e75083aabc113ceee585ca00d" [label=""];
  "sha256:ba69416341dfea139e886502b02cdd52c882768e75083aabc113ceee585ca00d" -> "sha256:3077d9d05ada811cedf66410533fb24796916336f4b41ad6398e3d900eadccac" [label=""];
  "sha256:438fcfc5e3833636fe1681c1895d5215745faaa75a6cd86d071a70c0c71bd83b" -> "sha256:3077d9d05ada811cedf66410533fb24796916336f4b41ad6398e3d900eadccac" [label=""];
  "sha256:3077d9d05ada811cedf66410533fb24796916336f4b41ad6398e3d900eadccac" -> "sha256:0582448d58884a57ee7c510b1df4e4af0b71112e39eaba059ea7c6f0998f6b5f" [label=""];
  "sha256:438fcfc5e3833636fe1681c1895d5215745faaa75a6cd86d071a70c0c71bd83b" -> "sha256:0582448d58884a57ee7c510b1df4e4af0b71112e39eaba059ea7c6f0998f6b5f" [label=""];
  "sha256:0582448d58884a57ee7c510b1df4e4af0b71112e39eaba059ea7c6f0998f6b5f" -> "sha256:724c76e9513c9aca05ed6d0df29b86f0bc3e1e6dc3f0fd4527a2a579ecdd9590" [label=""];
}

