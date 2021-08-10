[app/sources/462492674.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:d2d66d8e4c4100a120db6f1251ab866fbf92b76e8c1d442b22beefc5714a5270" [label="/bin/sh -c LIBERICA_ARCH='' && LIBERICA_ARCH_TAG='' &&   case `uname -m` in         x86_64)             LIBERICA_ARCH=\"amd64\"             ;;         aarch64)             LIBERICA_ARCH=\"aarch64\"             ;;         armv[67]l)             LIBERICA_ARCH=\"arm32-vfp-hflt\"             ;;         *)             LIBERICA_ARCH=`uname -m`             ;;   esac  &&   mkdir -p $LIBERICA_ROOT &&   mkdir -p /tmp/java &&   curl -SL \"https://github.com/bell-sw/Liberica/releases/download/${LIBERICA_VERSION}/bellsoft-${LIBERICA_VARIANT}${LIBERICA_VERSION}-linux-${LIBERICA_ARCH}.tar.gz\" |     tar xzf - -C /tmp/java &&   find \"/tmp/java/${LIBERICA_VARIANT}-${LIBERICA_VERSION}\" -maxdepth 1 -mindepth 1 -exec mv \"{}\" \"${LIBERICA_ROOT}/\" \\; &&   rm -rf /tmp/java" shape="box"];
  "sha256:37e6cada90ddeca1c2ac25b1c50f581ecf1beab2eaf229314a7bee38bff2dffc" [label="sha256:37e6cada90ddeca1c2ac25b1c50f581ecf1beab2eaf229314a7bee38bff2dffc" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:d2d66d8e4c4100a120db6f1251ab866fbf92b76e8c1d442b22beefc5714a5270" [label=""];
  "sha256:d2d66d8e4c4100a120db6f1251ab866fbf92b76e8c1d442b22beefc5714a5270" -> "sha256:37e6cada90ddeca1c2ac25b1c50f581ecf1beab2eaf229314a7bee38bff2dffc" [label=""];
}

