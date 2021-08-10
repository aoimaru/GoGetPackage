[app/sources/139579473.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b8a9748494835df8b880a992441194a75cf0de25d1210abd5d7d4fcb4cdd4429" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:743d88d1305cf3c9d35cfe430ee366beb0e5748997f5ac70db7aac055b9eeee5" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" shape="box"];
  "sha256:d4122a88f6ea18f75993f3312382716ebfa61e40af6395173046754f5f720e09" [label="/bin/sh -c echo \"deb http://download.mono-project.com/repo/debian wheezy main\" > /etc/apt/sources.list.d/mono-xamarin.list" shape="box"];
  "sha256:01833ad15d449d8edf2458e2d9901ce795f6323c3b35149e4c55ed021c904f81" [label="/bin/sh -c echo \"deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main\" >> /etc/apt/sources.list.d/mono-xamarin.list" shape="box"];
  "sha256:cc24843dc12a69bace669812cd3bd78a2d5c0963eacad2349ec5983f50ebe3d2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e27aae015bee22e6c6e97f0a0ba38a3ba83e5b1501d52fb316083a0c27472dc9" [label="/bin/sh -c apt-get install -y         git         build-essential         cmake         autoconf         libtool         automake         gettext         mono-xbuild         ccache         libmono-microsoft-build-tasks-v4.0-4.0-cil         mono-complete         nuget         python-dev         libffi-dev         libssl-dev         python-cffi         python-openssl         python-pip         gettext" shape="box"];
  "sha256:659313131fca4a4d40f9e422d5a4e16ba998c9aca85a300d4cacd0ed3394e45c" [label="/bin/sh -c pip install --upgrade cffi" shape="box"];
  "sha256:8c0226c33f848e8db9eaad03bfded99089780b18f361c32d2ae9269412a1f073" [label="/bin/sh -c pip install --upgrade PyOpenSSL" shape="box"];
  "sha256:93e12163a91fa79a2a7dd0c26b5e338b6b67d36b737c3100614b1c08fc6020aa" [label="/bin/sh -c pip install pyasn1 characteristic" shape="box"];
  "sha256:81c917645b0e001fad0d99f6bc45b738e7b8f7ef050d23cceb61887b63355280" [label="/bin/sh -c pip install service_identity" shape="box"];
  "sha256:ca1a0c3b920c5964ebce170fe5cf3843c61ccf2bc958ee87cd62193e0e3ebbeb" [label="/bin/sh -c pip install Twisted==16.1.0" shape="box"];
  "sha256:ab856541801b788acf459e198fd168943ae3d1e3804433ab2c05d6da32c37d77" [label="/bin/sh -c pip install buildbot==0.8.12" shape="box"];
  "sha256:ce0aee369e40c4a6a5a098de3e0b169332d0881dad3713fa7c9b66f9daa2383e" [label="sha256:ce0aee369e40c4a6a5a098de3e0b169332d0881dad3713fa7c9b66f9daa2383e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b8a9748494835df8b880a992441194a75cf0de25d1210abd5d7d4fcb4cdd4429" [label=""];
  "sha256:b8a9748494835df8b880a992441194a75cf0de25d1210abd5d7d4fcb4cdd4429" -> "sha256:743d88d1305cf3c9d35cfe430ee366beb0e5748997f5ac70db7aac055b9eeee5" [label=""];
  "sha256:743d88d1305cf3c9d35cfe430ee366beb0e5748997f5ac70db7aac055b9eeee5" -> "sha256:d4122a88f6ea18f75993f3312382716ebfa61e40af6395173046754f5f720e09" [label=""];
  "sha256:d4122a88f6ea18f75993f3312382716ebfa61e40af6395173046754f5f720e09" -> "sha256:01833ad15d449d8edf2458e2d9901ce795f6323c3b35149e4c55ed021c904f81" [label=""];
  "sha256:01833ad15d449d8edf2458e2d9901ce795f6323c3b35149e4c55ed021c904f81" -> "sha256:cc24843dc12a69bace669812cd3bd78a2d5c0963eacad2349ec5983f50ebe3d2" [label=""];
  "sha256:cc24843dc12a69bace669812cd3bd78a2d5c0963eacad2349ec5983f50ebe3d2" -> "sha256:e27aae015bee22e6c6e97f0a0ba38a3ba83e5b1501d52fb316083a0c27472dc9" [label=""];
  "sha256:e27aae015bee22e6c6e97f0a0ba38a3ba83e5b1501d52fb316083a0c27472dc9" -> "sha256:659313131fca4a4d40f9e422d5a4e16ba998c9aca85a300d4cacd0ed3394e45c" [label=""];
  "sha256:659313131fca4a4d40f9e422d5a4e16ba998c9aca85a300d4cacd0ed3394e45c" -> "sha256:8c0226c33f848e8db9eaad03bfded99089780b18f361c32d2ae9269412a1f073" [label=""];
  "sha256:8c0226c33f848e8db9eaad03bfded99089780b18f361c32d2ae9269412a1f073" -> "sha256:93e12163a91fa79a2a7dd0c26b5e338b6b67d36b737c3100614b1c08fc6020aa" [label=""];
  "sha256:93e12163a91fa79a2a7dd0c26b5e338b6b67d36b737c3100614b1c08fc6020aa" -> "sha256:81c917645b0e001fad0d99f6bc45b738e7b8f7ef050d23cceb61887b63355280" [label=""];
  "sha256:81c917645b0e001fad0d99f6bc45b738e7b8f7ef050d23cceb61887b63355280" -> "sha256:ca1a0c3b920c5964ebce170fe5cf3843c61ccf2bc958ee87cd62193e0e3ebbeb" [label=""];
  "sha256:ca1a0c3b920c5964ebce170fe5cf3843c61ccf2bc958ee87cd62193e0e3ebbeb" -> "sha256:ab856541801b788acf459e198fd168943ae3d1e3804433ab2c05d6da32c37d77" [label=""];
  "sha256:ab856541801b788acf459e198fd168943ae3d1e3804433ab2c05d6da32c37d77" -> "sha256:ce0aee369e40c4a6a5a098de3e0b169332d0881dad3713fa7c9b66f9daa2383e" [label=""];
}

