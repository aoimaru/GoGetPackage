[app/sources/346803892.Dockerfile]
digraph {
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" [label="docker-image://docker.io/prestashop/base:5.6-apache" shape="ellipse"];
  "sha256:ee2f8425971467f290fe73b528c2c08b6d0b97e1d7b7538c7a3d03b0d608177e" [label="https://www.prestashop.com/download/old/prestashop_1.7.3.1.zip" shape="ellipse"];
  "sha256:a244999fe334a4325d9d6e81cee8b3f12d8770a991a50f4830709efce0dec4e4" [label="copy{src=/prestashop_1.7.3.1.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:208a4fa9d4778c69abe21afcbd3b3c0e552407f7fe6117ed0fa346210e99f493" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:cb2f782a5e2681652c9e8226331ee52a4aa19391914a7f8473d2c4a12bac302d" [label="sha256:cb2f782a5e2681652c9e8226331ee52a4aa19391914a7f8473d2c4a12bac302d" shape="plaintext"];
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" -> "sha256:a244999fe334a4325d9d6e81cee8b3f12d8770a991a50f4830709efce0dec4e4" [label=""];
  "sha256:ee2f8425971467f290fe73b528c2c08b6d0b97e1d7b7538c7a3d03b0d608177e" -> "sha256:a244999fe334a4325d9d6e81cee8b3f12d8770a991a50f4830709efce0dec4e4" [label=""];
  "sha256:a244999fe334a4325d9d6e81cee8b3f12d8770a991a50f4830709efce0dec4e4" -> "sha256:208a4fa9d4778c69abe21afcbd3b3c0e552407f7fe6117ed0fa346210e99f493" [label=""];
  "sha256:208a4fa9d4778c69abe21afcbd3b3c0e552407f7fe6117ed0fa346210e99f493" -> "sha256:cb2f782a5e2681652c9e8226331ee52a4aa19391914a7f8473d2c4a12bac302d" [label=""];
}

