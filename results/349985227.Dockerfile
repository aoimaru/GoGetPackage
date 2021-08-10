[app/sources/349985227.Dockerfile]
digraph {
  "sha256:d468b18a3efd621a2482d9d72b7a80b3661ff8c83976338341f070237642d452" [label="docker-image://docker.io/library/debian:9.8-slim" shape="ellipse"];
  "sha256:434ed516337f65fe58432de2f9c8120623a3dba8416527c0f12f6feed994a3be" [label="local://context" shape="ellipse"];
  "sha256:46ba873f383e01ce384edaf2614dba4c474de692caf99e48caf818d10e1db468" [label="copy{src=/bin/amd64, dest=/opt/cni/bin/}" shape="note"];
  "sha256:faeefaeb1f7d90fe73d10c1c15b18d795898a2bba0201e011ea509bfce4a1653" [label="copy{src=/k8s-install/scripts/install-cni.sh, dest=/install-cni.sh}" shape="note"];
  "sha256:7d13032fcab1d4804ca9a8f028f28b43713991c9eeff1fda956d242f98392b5a" [label="copy{src=/k8s-install/scripts/calico.conf.default, dest=/calico.conf.tmp}" shape="note"];
  "sha256:e79bd7f552fc02adaeee7b9c7031fc956f6595ad88733a5a5ab7ac137726e3a9" [label="mkdir{path=/opt/cni/bin}" shape="note"];
  "sha256:ad8b2af6e6271dc50a418b1a7407b1f28ffe8f8eee21835ec6b15477a4241d09" [label="sha256:ad8b2af6e6271dc50a418b1a7407b1f28ffe8f8eee21835ec6b15477a4241d09" shape="plaintext"];
  "sha256:d468b18a3efd621a2482d9d72b7a80b3661ff8c83976338341f070237642d452" -> "sha256:46ba873f383e01ce384edaf2614dba4c474de692caf99e48caf818d10e1db468" [label=""];
  "sha256:434ed516337f65fe58432de2f9c8120623a3dba8416527c0f12f6feed994a3be" -> "sha256:46ba873f383e01ce384edaf2614dba4c474de692caf99e48caf818d10e1db468" [label=""];
  "sha256:46ba873f383e01ce384edaf2614dba4c474de692caf99e48caf818d10e1db468" -> "sha256:faeefaeb1f7d90fe73d10c1c15b18d795898a2bba0201e011ea509bfce4a1653" [label=""];
  "sha256:434ed516337f65fe58432de2f9c8120623a3dba8416527c0f12f6feed994a3be" -> "sha256:faeefaeb1f7d90fe73d10c1c15b18d795898a2bba0201e011ea509bfce4a1653" [label=""];
  "sha256:faeefaeb1f7d90fe73d10c1c15b18d795898a2bba0201e011ea509bfce4a1653" -> "sha256:7d13032fcab1d4804ca9a8f028f28b43713991c9eeff1fda956d242f98392b5a" [label=""];
  "sha256:434ed516337f65fe58432de2f9c8120623a3dba8416527c0f12f6feed994a3be" -> "sha256:7d13032fcab1d4804ca9a8f028f28b43713991c9eeff1fda956d242f98392b5a" [label=""];
  "sha256:7d13032fcab1d4804ca9a8f028f28b43713991c9eeff1fda956d242f98392b5a" -> "sha256:e79bd7f552fc02adaeee7b9c7031fc956f6595ad88733a5a5ab7ac137726e3a9" [label=""];
  "sha256:e79bd7f552fc02adaeee7b9c7031fc956f6595ad88733a5a5ab7ac137726e3a9" -> "sha256:ad8b2af6e6271dc50a418b1a7407b1f28ffe8f8eee21835ec6b15477a4241d09" [label=""];
}

