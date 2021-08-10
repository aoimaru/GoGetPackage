[app/sources/442640030.Dockerfile]
digraph {
  "sha256:38e74080a965d500ed5ee9610f963591bffb705993e6e0df03a7206eb7ef6e9e" [label="local://context" shape="ellipse"];
  "sha256:909f2bce864f3614e70d6f34a3f7690928aeb5ce38cda59f380a98e89690f870" [label="copy{src=/ubuntu-trusty-core-cloudimg-amd64-root.tar.gz, dest=/}" shape="note"];
  "sha256:7586b410186a20e5833dada1f1eefd0d8333b5675dc9cd94e14d67495700d00c" [label="/bin/sh -c set -xe \t\t&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d \t&& echo 'exit 101' >> /usr/sbin/policy-rc.d \t&& chmod +x /usr/sbin/policy-rc.d \t\t&& dpkg-divert --local --rename --add /sbin/initctl \t&& cp -a /usr/sbin/policy-rc.d /sbin/initctl \t&& sed -i 's/^exit.*/exit 0/' /sbin/initctl \t\t&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup \t\t&& echo 'DPkg::Post-Invoke { \"rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true\"; };' > /etc/apt/apt.conf.d/docker-clean \t&& echo 'APT::Update::Post-Invoke { \"rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true\"; };' >> /etc/apt/apt.conf.d/docker-clean \t&& echo 'Dir::Cache::pkgcache \"\"; Dir::Cache::srcpkgcache \"\";' >> /etc/apt/apt.conf.d/docker-clean \t\t&& echo 'Acquire::Languages \"none\";' > /etc/apt/apt.conf.d/docker-no-languages \t\t&& echo 'Acquire::GzipIndexes \"true\"; Acquire::CompressionTypes::Order:: \"gz\";' > /etc/apt/apt.conf.d/docker-gzip-indexes \t\t&& echo 'Apt::AutoRemove::SuggestsImportant \"false\";' > /etc/apt/apt.conf.d/docker-autoremove-suggests" shape="box"];
  "sha256:61be7a1ef00efde47ec0ec8d03d594827f572b8e7f5ce48c33b680c10fa4fc77" [label="/bin/sh -c sed -i 's/^#\\s*\\(deb.*universe\\)$/\\1/g' /etc/apt/sources.list" shape="box"];
  "sha256:e7f46bae61bf7a9937ee7852e6c8cfb5461b1c5b45537bb94e8ab19083ea8dba" [label="/bin/sh -c apt-get update -y && apt-get install -y python python-dev" shape="box"];
  "sha256:55067ad9ce3da9db1f49f96654c4887b137e106ac727d8cc5f5dd1b18ea6bd3d" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7d673c4d250f0ffd06e66f5c459351f392151f71179a7bf46a502126bb627b55" [label="/bin/sh -c mkdir -p /run/systemd && echo 'docker' > /run/systemd/container" shape="box"];
  "sha256:ce41ea783d26c5852d3d407628e25c9a6dcdc6265ca72c8b3004498ac41bf66b" [label="sha256:ce41ea783d26c5852d3d407628e25c9a6dcdc6265ca72c8b3004498ac41bf66b" shape="plaintext"];
  "sha256:38e74080a965d500ed5ee9610f963591bffb705993e6e0df03a7206eb7ef6e9e" -> "sha256:909f2bce864f3614e70d6f34a3f7690928aeb5ce38cda59f380a98e89690f870" [label=""];
  "sha256:909f2bce864f3614e70d6f34a3f7690928aeb5ce38cda59f380a98e89690f870" -> "sha256:7586b410186a20e5833dada1f1eefd0d8333b5675dc9cd94e14d67495700d00c" [label=""];
  "sha256:7586b410186a20e5833dada1f1eefd0d8333b5675dc9cd94e14d67495700d00c" -> "sha256:61be7a1ef00efde47ec0ec8d03d594827f572b8e7f5ce48c33b680c10fa4fc77" [label=""];
  "sha256:61be7a1ef00efde47ec0ec8d03d594827f572b8e7f5ce48c33b680c10fa4fc77" -> "sha256:e7f46bae61bf7a9937ee7852e6c8cfb5461b1c5b45537bb94e8ab19083ea8dba" [label=""];
  "sha256:e7f46bae61bf7a9937ee7852e6c8cfb5461b1c5b45537bb94e8ab19083ea8dba" -> "sha256:55067ad9ce3da9db1f49f96654c4887b137e106ac727d8cc5f5dd1b18ea6bd3d" [label=""];
  "sha256:55067ad9ce3da9db1f49f96654c4887b137e106ac727d8cc5f5dd1b18ea6bd3d" -> "sha256:7d673c4d250f0ffd06e66f5c459351f392151f71179a7bf46a502126bb627b55" [label=""];
  "sha256:7d673c4d250f0ffd06e66f5c459351f392151f71179a7bf46a502126bb627b55" -> "sha256:ce41ea783d26c5852d3d407628e25c9a6dcdc6265ca72c8b3004498ac41bf66b" [label=""];
}

