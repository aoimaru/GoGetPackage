[app/sources/415103519.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1334b44dc34d65d1913f2b39087aaf14de7f34dfa3cfd54501343bc1876631a6" [label="/bin/sh -c apt-get update &&     apt-get -y upgrade &&     apt-get install -y software-properties-common build-essential curl         autotools-dev autoconf libtool liblzma-dev libz-dev gettext libdwarf-dev" shape="box"];
  "sha256:1e473cc265ffe82a6d6e04b3229d40ff06606de2cffe154478282e4674c26fd8" [label="mkdir{path=/opt}" shape="note"];
  "sha256:a4ab08342b35fbcca2595b924a4b628c859728a0f9ca795dd2cc51496fe23ff7" [label="local://context" shape="ellipse"];
  "sha256:e40e25092557b3e8a95dc04a095bb7515c908f6bbcd4627547ab85dadea17688" [label="copy{src=/, dest=/opt/}" shape="note"];
  "sha256:d8bf6be983191ce319488af22f935f7de5e3c3ef84eb0800e6ebd33fff7bcf40" [label="/bin/sh -c curl -o /tmp/elfutils.tar.bz2 https://sourceware.org/elfutils/ftp/0.176/elfutils-0.176.tar.bz2 && tar -xvf /tmp/elfutils.tar.bz2" shape="box"];
  "sha256:f5b26320a796a4f67c66c7f6579240777e963dc771038e3791d2624bd3d590d1" [label="sha256:f5b26320a796a4f67c66c7f6579240777e963dc771038e3791d2624bd3d590d1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1334b44dc34d65d1913f2b39087aaf14de7f34dfa3cfd54501343bc1876631a6" [label=""];
  "sha256:1334b44dc34d65d1913f2b39087aaf14de7f34dfa3cfd54501343bc1876631a6" -> "sha256:1e473cc265ffe82a6d6e04b3229d40ff06606de2cffe154478282e4674c26fd8" [label=""];
  "sha256:1e473cc265ffe82a6d6e04b3229d40ff06606de2cffe154478282e4674c26fd8" -> "sha256:e40e25092557b3e8a95dc04a095bb7515c908f6bbcd4627547ab85dadea17688" [label=""];
  "sha256:a4ab08342b35fbcca2595b924a4b628c859728a0f9ca795dd2cc51496fe23ff7" -> "sha256:e40e25092557b3e8a95dc04a095bb7515c908f6bbcd4627547ab85dadea17688" [label=""];
  "sha256:e40e25092557b3e8a95dc04a095bb7515c908f6bbcd4627547ab85dadea17688" -> "sha256:d8bf6be983191ce319488af22f935f7de5e3c3ef84eb0800e6ebd33fff7bcf40" [label=""];
  "sha256:d8bf6be983191ce319488af22f935f7de5e3c3ef84eb0800e6ebd33fff7bcf40" -> "sha256:f5b26320a796a4f67c66c7f6579240777e963dc771038e3791d2624bd3d590d1" [label=""];
}

