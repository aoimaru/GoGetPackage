[app/sources/252821110.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:4751c08043ce22d6c35013cc71e1630f5848d04afac23ba4a73d0a207d11c215" [label="/bin/sh -c yum install -y curl    gcc     gmp-devel     pcre-devel     perl     tar     which     xz     zlib-devel     bzip2-devel     && yum clean all --releasever=6     && ln -s /lib64/libtinfo.so.5 /lib64/libtinfo.so" shape="box"];
  "sha256:99d99415a76802182ccbf082fc2e9c833c05b2924e6fd69f4f9c2bcce7286e2d" [label="/bin/sh -c yum install -y make" shape="box"];
  "sha256:446019fb292a0ee224a8db091782bfc2de6e51f1b86bbb076a301f123194a07d" [label="/bin/sh -c mkdir -p /opt/stack/bin" shape="box"];
  "sha256:3a3d7c807e7dbcb48c0561b21a4ec5f6387293c86237b8582b3ae8ea6aaa8250" [label="/bin/sh -c curl -L https://www.stackage.org/stack/linux-x86_64 | tar xz --wildcards --strip-components=1 -C /opt/stack/bin '*/stack'" shape="box"];
  "sha256:b070eab21ea659e9fd89996d391161ea7b4484d60e09a641424bf9406d33c756" [label="/bin/sh -c stack setup $GHC_VERSION" shape="box"];
  "sha256:2e7cff85152d655c578b97d8e6f1fbd491d92931a2232835f95968547057883e" [label="/bin/sh -c yum install -y git" shape="box"];
  "sha256:344a23b981f3401e6835c70b81cb2becee992e223da15cc68622efa7031b67e8" [label="sha256:344a23b981f3401e6835c70b81cb2becee992e223da15cc68622efa7031b67e8" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:4751c08043ce22d6c35013cc71e1630f5848d04afac23ba4a73d0a207d11c215" [label=""];
  "sha256:4751c08043ce22d6c35013cc71e1630f5848d04afac23ba4a73d0a207d11c215" -> "sha256:99d99415a76802182ccbf082fc2e9c833c05b2924e6fd69f4f9c2bcce7286e2d" [label=""];
  "sha256:99d99415a76802182ccbf082fc2e9c833c05b2924e6fd69f4f9c2bcce7286e2d" -> "sha256:446019fb292a0ee224a8db091782bfc2de6e51f1b86bbb076a301f123194a07d" [label=""];
  "sha256:446019fb292a0ee224a8db091782bfc2de6e51f1b86bbb076a301f123194a07d" -> "sha256:3a3d7c807e7dbcb48c0561b21a4ec5f6387293c86237b8582b3ae8ea6aaa8250" [label=""];
  "sha256:3a3d7c807e7dbcb48c0561b21a4ec5f6387293c86237b8582b3ae8ea6aaa8250" -> "sha256:b070eab21ea659e9fd89996d391161ea7b4484d60e09a641424bf9406d33c756" [label=""];
  "sha256:b070eab21ea659e9fd89996d391161ea7b4484d60e09a641424bf9406d33c756" -> "sha256:2e7cff85152d655c578b97d8e6f1fbd491d92931a2232835f95968547057883e" [label=""];
  "sha256:2e7cff85152d655c578b97d8e6f1fbd491d92931a2232835f95968547057883e" -> "sha256:344a23b981f3401e6835c70b81cb2becee992e223da15cc68622efa7031b67e8" [label=""];
}

