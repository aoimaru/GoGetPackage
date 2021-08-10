[app/sources/170767281.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d8b1df90f4935990c6b126147b6a22f3aae18236e8873a77e32630998542ea0e" [label="/bin/sh -c apt-get update &&     apt-get install -y                     file                     binutils                     libelf-dev                     libicu-dev                     locales                     wget                     vim                     &&     apt-get clean" shape="box"];
  "sha256:184cfb1769c30c4b7396d059a220bed1bcc5aa4d20c5cf31761c55b7767a8555" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:c7c7aebe5989e5d31157fff7fbbd19fc5b9ef558df66a8ff138e57f28e4d40cc" [label="mkdir{path=/data}" shape="note"];
  "sha256:43ae30552e4240c258ee30f7089ff50f072e63c487d467e0c31be356c9d205cf" [label="/bin/sh -c apt-get update &&     apt-get install -y                     file                     cmake                     tcsh                     libconfig-dev                     libelf-dev                     libgcrypt-dev                     libgpg-error-dev                     libgpgme11-dev                     libicu-dev                     libncurses-dev                     libssl-dev                     zlib1g-dev                     &&     apt-get clean" shape="box"];
  "sha256:e18c7515c29eb81529f3bdaddebb464eac8137928fe5f933da9fdd9ee88ddf14" [label="local://context" shape="ellipse"];
  "sha256:5c7c6b41fcef3e1f5b84ff034c3d2de30bc3aed8ae3ed36538c82ea717900d67" [label="copy{src=/, dest=/tmp/yottadb-src}" shape="note"];
  "sha256:7eb1f15dfa393e5b21eae9a99a707206c222c1471fff0c73b505a224566ae30d" [label="/bin/sh -c mkdir -p /tmp/yottadb-build  && cd /tmp/yottadb-build  && test -f /tmp/yottadb-src/.yottadb.vsn ||     grep YDB_ZYRELEASE /tmp/yottadb-src/sr_*/release_name.h     | grep -o '\\(r[0-9.]*\\)'     | sort -u     > /tmp/yottadb-src/.yottadb.vsn  && cmake       -D CMAKE_INSTALL_PREFIX:PATH=/tmp       -D YDB_INSTALL_DIR:STRING=yottadb-release       /tmp/yottadb-src  && make -j `grep -c ^processor /proc/cpuinfo`  && make install" shape="box"];
  "sha256:a00a88884c89f84560cd0bb118415721d7fcb1069337508c5a4f3fff19c5aed8" [label="copy{src=/tmp/yottadb-release, dest=/tmp/yottadb-release}" shape="note"];
  "sha256:b8d434ecf3ba1c006abb79a618c2ecc3c6c9302e610e71ac03ca34fa1e66037e" [label="/bin/sh -c cd /tmp/yottadb-release   && pkg-config --modversion icu-io       > /tmp/yottadb-release/.icu.vsn  && ./ydbinstall       --utf8 `cat /tmp/yottadb-release/.icu.vsn`       --installdir /opt/yottadb/current  && rm -rf /tmp/yottadb-release" shape="box"];
  "sha256:eb3cd2e620ef01f3034afb849bce7fed15dcab6020fb0786fc2e96fdec826391" [label="sha256:eb3cd2e620ef01f3034afb849bce7fed15dcab6020fb0786fc2e96fdec826391" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d8b1df90f4935990c6b126147b6a22f3aae18236e8873a77e32630998542ea0e" [label=""];
  "sha256:d8b1df90f4935990c6b126147b6a22f3aae18236e8873a77e32630998542ea0e" -> "sha256:184cfb1769c30c4b7396d059a220bed1bcc5aa4d20c5cf31761c55b7767a8555" [label=""];
  "sha256:184cfb1769c30c4b7396d059a220bed1bcc5aa4d20c5cf31761c55b7767a8555" -> "sha256:c7c7aebe5989e5d31157fff7fbbd19fc5b9ef558df66a8ff138e57f28e4d40cc" [label=""];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:43ae30552e4240c258ee30f7089ff50f072e63c487d467e0c31be356c9d205cf" [label=""];
  "sha256:43ae30552e4240c258ee30f7089ff50f072e63c487d467e0c31be356c9d205cf" -> "sha256:5c7c6b41fcef3e1f5b84ff034c3d2de30bc3aed8ae3ed36538c82ea717900d67" [label=""];
  "sha256:e18c7515c29eb81529f3bdaddebb464eac8137928fe5f933da9fdd9ee88ddf14" -> "sha256:5c7c6b41fcef3e1f5b84ff034c3d2de30bc3aed8ae3ed36538c82ea717900d67" [label=""];
  "sha256:5c7c6b41fcef3e1f5b84ff034c3d2de30bc3aed8ae3ed36538c82ea717900d67" -> "sha256:7eb1f15dfa393e5b21eae9a99a707206c222c1471fff0c73b505a224566ae30d" [label=""];
  "sha256:c7c7aebe5989e5d31157fff7fbbd19fc5b9ef558df66a8ff138e57f28e4d40cc" -> "sha256:a00a88884c89f84560cd0bb118415721d7fcb1069337508c5a4f3fff19c5aed8" [label=""];
  "sha256:7eb1f15dfa393e5b21eae9a99a707206c222c1471fff0c73b505a224566ae30d" -> "sha256:a00a88884c89f84560cd0bb118415721d7fcb1069337508c5a4f3fff19c5aed8" [label=""];
  "sha256:a00a88884c89f84560cd0bb118415721d7fcb1069337508c5a4f3fff19c5aed8" -> "sha256:b8d434ecf3ba1c006abb79a618c2ecc3c6c9302e610e71ac03ca34fa1e66037e" [label=""];
  "sha256:b8d434ecf3ba1c006abb79a618c2ecc3c6c9302e610e71ac03ca34fa1e66037e" -> "sha256:eb3cd2e620ef01f3034afb849bce7fed15dcab6020fb0786fc2e96fdec826391" [label=""];
}

