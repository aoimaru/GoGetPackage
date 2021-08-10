[app/sources/288686732.Dockerfile]
digraph {
  "sha256:3389176515d5c3c396db3a01189625e5a0ebe3bbef5b92bb296c341323bafb9f" [label="docker-image://docker.io/weinholt/guile:latest" shape="ellipse"];
  "sha256:1086fc60910dcab3f8ab605354f7a1b50842c423b6396c416411d22dbd98a009" [label="/bin/sh -c apt-get update && apt-get -y --no-install-recommends install        ca-certificates        curl        git   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:17fdb003b6cb5955c60f2808273bebe28ab294ad66f08480057ac72cb812fd1e" [label="docker-image://docker.io/weinholt/chezscheme:latest" shape="ellipse"];
  "sha256:be38bda151bb0194bc1c1c52b1aae823022c09f75e21ea3450451c4837514537" [label="/bin/sh -c apt-get update && apt-get -y --no-install-recommends install        ca-certificates        curl        git        xz-utils   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:56b7ce0778412282951a3d4e2710d970451c57e8c9b7aea03dd782168117645b" [label="local://context" shape="ellipse"];
  "sha256:e657879633405fff12611bad3e7b9c0103be192ef71674a3fd3694402c7f6e24" [label="copy{src=/, dest=/tmp}" shape="note"];
  "sha256:27cf9ed7c27762f2d5916644f0a2b8e109da8386bba60ea986f8125bbefc2841" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:8a728e52aceebd0c5a8ea8abc3c685c11803920461acf5fb3094697167096bc7" [label="/bin/sh -c set -xe;     test -d .git && git clean -d -d -x -f;     . .akku/bin/activate;     mkdir -p ~/.akku/share/keys.d;     cp akku-archive-*.gpg ~/.akku/share/keys.d;     akku.sps update;     private/build.chezscheme.sps;     tar -xvaf akku-*-linux.tar.xz;     cd akku-*-linux;     ./install.sh;     ~/bin/akku" shape="box"];
  "sha256:7c68e6d6d88dd193a8cce3d879a3125449ca430416e9c7ed3c66aa0aed64e2e7" [label="copy{src=/root/.akku, dest=/root/.akku}" shape="note"];
  "sha256:ea99ce609d8274893e7d9fdf47c72f0a1ad9ee5069869efc90a82b0662545967" [label="sha256:ea99ce609d8274893e7d9fdf47c72f0a1ad9ee5069869efc90a82b0662545967" shape="plaintext"];
  "sha256:3389176515d5c3c396db3a01189625e5a0ebe3bbef5b92bb296c341323bafb9f" -> "sha256:1086fc60910dcab3f8ab605354f7a1b50842c423b6396c416411d22dbd98a009" [label=""];
  "sha256:17fdb003b6cb5955c60f2808273bebe28ab294ad66f08480057ac72cb812fd1e" -> "sha256:be38bda151bb0194bc1c1c52b1aae823022c09f75e21ea3450451c4837514537" [label=""];
  "sha256:be38bda151bb0194bc1c1c52b1aae823022c09f75e21ea3450451c4837514537" -> "sha256:e657879633405fff12611bad3e7b9c0103be192ef71674a3fd3694402c7f6e24" [label=""];
  "sha256:56b7ce0778412282951a3d4e2710d970451c57e8c9b7aea03dd782168117645b" -> "sha256:e657879633405fff12611bad3e7b9c0103be192ef71674a3fd3694402c7f6e24" [label=""];
  "sha256:e657879633405fff12611bad3e7b9c0103be192ef71674a3fd3694402c7f6e24" -> "sha256:27cf9ed7c27762f2d5916644f0a2b8e109da8386bba60ea986f8125bbefc2841" [label=""];
  "sha256:27cf9ed7c27762f2d5916644f0a2b8e109da8386bba60ea986f8125bbefc2841" -> "sha256:8a728e52aceebd0c5a8ea8abc3c685c11803920461acf5fb3094697167096bc7" [label=""];
  "sha256:1086fc60910dcab3f8ab605354f7a1b50842c423b6396c416411d22dbd98a009" -> "sha256:7c68e6d6d88dd193a8cce3d879a3125449ca430416e9c7ed3c66aa0aed64e2e7" [label=""];
  "sha256:8a728e52aceebd0c5a8ea8abc3c685c11803920461acf5fb3094697167096bc7" -> "sha256:7c68e6d6d88dd193a8cce3d879a3125449ca430416e9c7ed3c66aa0aed64e2e7" [label=""];
  "sha256:7c68e6d6d88dd193a8cce3d879a3125449ca430416e9c7ed3c66aa0aed64e2e7" -> "sha256:ea99ce609d8274893e7d9fdf47c72f0a1ad9ee5069869efc90a82b0662545967" [label=""];
}

