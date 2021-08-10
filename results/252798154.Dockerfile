[app/sources/252798154.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:97f760ffddc130ea67cbd09fc0c71a4281b163037de5778c47387cb367724065" [label="/bin/sh -c apt-get update && apt-get install -y binfmt-support cmake debhelper devscripts git gksu intltool libarchive-dev libcurl4-openssl-dev libgtkmm-3.0-dev libldap2-dev qemu-user-static && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:07593c95465b8e1ae0fd2da4f2f9c605d5386ff4473e55b81a0cb9fdf1a563c6" [label="mkdir{path=/app/src}" shape="note"];
  "sha256:05b247694f7a1389fe6c54c2398de3fdd1cf3db61a37d2755e44fc322d6a8750" [label="/bin/sh -c git clone \\--depth 1 https://github.com/raspberrypi/piserver.git" shape="box"];
  "sha256:0ea2f9d46954b17e97e27a0106b8f39c6a5f2dbd86e08cf27c83404fceb5172f" [label="mkdir{path=/app/src/piserver}" shape="note"];
  "sha256:cbb3be580e37ff1a375f9263a3ea9fe8f9f0ca715b0ade50d9f9aeb570072ad7" [label="/bin/sh -c debuild -uc -us" shape="box"];
  "sha256:6a466c9e19552d2b774994ade9784cd55110c056025f267d2c665c6d4575a238" [label="sha256:6a466c9e19552d2b774994ade9784cd55110c056025f267d2c665c6d4575a238" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:97f760ffddc130ea67cbd09fc0c71a4281b163037de5778c47387cb367724065" [label=""];
  "sha256:97f760ffddc130ea67cbd09fc0c71a4281b163037de5778c47387cb367724065" -> "sha256:07593c95465b8e1ae0fd2da4f2f9c605d5386ff4473e55b81a0cb9fdf1a563c6" [label=""];
  "sha256:07593c95465b8e1ae0fd2da4f2f9c605d5386ff4473e55b81a0cb9fdf1a563c6" -> "sha256:05b247694f7a1389fe6c54c2398de3fdd1cf3db61a37d2755e44fc322d6a8750" [label=""];
  "sha256:05b247694f7a1389fe6c54c2398de3fdd1cf3db61a37d2755e44fc322d6a8750" -> "sha256:0ea2f9d46954b17e97e27a0106b8f39c6a5f2dbd86e08cf27c83404fceb5172f" [label=""];
  "sha256:0ea2f9d46954b17e97e27a0106b8f39c6a5f2dbd86e08cf27c83404fceb5172f" -> "sha256:cbb3be580e37ff1a375f9263a3ea9fe8f9f0ca715b0ade50d9f9aeb570072ad7" [label=""];
  "sha256:cbb3be580e37ff1a375f9263a3ea9fe8f9f0ca715b0ade50d9f9aeb570072ad7" -> "sha256:6a466c9e19552d2b774994ade9784cd55110c056025f267d2c665c6d4575a238" [label=""];
}

