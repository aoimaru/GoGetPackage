[app/sources/252800469.Dockerfile]
digraph {
  "sha256:ffbadde520c8c81e69a74d8e54d1415392c0208f4e0605d216f9ba06f3f2ee52" [label="docker-image://docker.io/domecloud/alpine:glibc" shape="ellipse"];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" [label="local://context" shape="ellipse"];
  "sha256:39b2552b77c9d14a92f4db46bfff02dd618264b644708a8cc190ae8f3a2410f9" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:04e65346e317d4712e94019015036cc01ea9da7db4fbeb96354c30a850f2383a" [label="/bin/sh -c chmod +x /start.sh" shape="box"];
  "sha256:069f5eba2ce27f38f7b60772fd70fa295a4044e565f6e46e71e20ae4e1dd4d0c" [label="copy{src=/bin/prometheus, dest=/bin/prometheus}" shape="note"];
  "sha256:f5de30a48bcdca145df327113fa4dbbee3a3948e6be34585582ce608582fb36e" [label="copy{src=/bin/promtool, dest=/bin/promtool}" shape="note"];
  "sha256:0b10cff180d7dfa6c08e7b2485a976f8c8eec398973411220709b5bec37a435e" [label="copy{src=/bin/prometheus.yml, dest=/etc/prometheus/prometheus.yml}" shape="note"];
  "sha256:d0a3ffb5abbb44b8d8a0357257c543cd870e2d99e452b86759e59419c638d779" [label="copy{src=/bin/console_libraries, dest=/etc/prometheus/}" shape="note"];
  "sha256:517bb7105c09b269225b55ea0d0c1211c41e67f6db0ce80ceb2119c464a58b0d" [label="copy{src=/bin/consoles, dest=/etc/prometheus/}" shape="note"];
  "sha256:458359ea6625edbe9570d7d2131b75e0fe002c1d1eef5f9dc41c177f77dfab37" [label="mkdir{path=/prometheus}" shape="note"];
  "sha256:b6f2ee3d4698f52d42dc9179eac0317b227fbfe9f785f3579ed5919d6723cbc2" [label="sha256:b6f2ee3d4698f52d42dc9179eac0317b227fbfe9f785f3579ed5919d6723cbc2" shape="plaintext"];
  "sha256:ffbadde520c8c81e69a74d8e54d1415392c0208f4e0605d216f9ba06f3f2ee52" -> "sha256:39b2552b77c9d14a92f4db46bfff02dd618264b644708a8cc190ae8f3a2410f9" [label=""];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" -> "sha256:39b2552b77c9d14a92f4db46bfff02dd618264b644708a8cc190ae8f3a2410f9" [label=""];
  "sha256:39b2552b77c9d14a92f4db46bfff02dd618264b644708a8cc190ae8f3a2410f9" -> "sha256:04e65346e317d4712e94019015036cc01ea9da7db4fbeb96354c30a850f2383a" [label=""];
  "sha256:04e65346e317d4712e94019015036cc01ea9da7db4fbeb96354c30a850f2383a" -> "sha256:069f5eba2ce27f38f7b60772fd70fa295a4044e565f6e46e71e20ae4e1dd4d0c" [label=""];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" -> "sha256:069f5eba2ce27f38f7b60772fd70fa295a4044e565f6e46e71e20ae4e1dd4d0c" [label=""];
  "sha256:069f5eba2ce27f38f7b60772fd70fa295a4044e565f6e46e71e20ae4e1dd4d0c" -> "sha256:f5de30a48bcdca145df327113fa4dbbee3a3948e6be34585582ce608582fb36e" [label=""];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" -> "sha256:f5de30a48bcdca145df327113fa4dbbee3a3948e6be34585582ce608582fb36e" [label=""];
  "sha256:f5de30a48bcdca145df327113fa4dbbee3a3948e6be34585582ce608582fb36e" -> "sha256:0b10cff180d7dfa6c08e7b2485a976f8c8eec398973411220709b5bec37a435e" [label=""];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" -> "sha256:0b10cff180d7dfa6c08e7b2485a976f8c8eec398973411220709b5bec37a435e" [label=""];
  "sha256:0b10cff180d7dfa6c08e7b2485a976f8c8eec398973411220709b5bec37a435e" -> "sha256:d0a3ffb5abbb44b8d8a0357257c543cd870e2d99e452b86759e59419c638d779" [label=""];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" -> "sha256:d0a3ffb5abbb44b8d8a0357257c543cd870e2d99e452b86759e59419c638d779" [label=""];
  "sha256:d0a3ffb5abbb44b8d8a0357257c543cd870e2d99e452b86759e59419c638d779" -> "sha256:517bb7105c09b269225b55ea0d0c1211c41e67f6db0ce80ceb2119c464a58b0d" [label=""];
  "sha256:46efb72afd146f03654d61e96011339480a2bebf4a7c329408be186ec79aaf29" -> "sha256:517bb7105c09b269225b55ea0d0c1211c41e67f6db0ce80ceb2119c464a58b0d" [label=""];
  "sha256:517bb7105c09b269225b55ea0d0c1211c41e67f6db0ce80ceb2119c464a58b0d" -> "sha256:458359ea6625edbe9570d7d2131b75e0fe002c1d1eef5f9dc41c177f77dfab37" [label=""];
  "sha256:458359ea6625edbe9570d7d2131b75e0fe002c1d1eef5f9dc41c177f77dfab37" -> "sha256:b6f2ee3d4698f52d42dc9179eac0317b227fbfe9f785f3579ed5919d6723cbc2" [label=""];
}

