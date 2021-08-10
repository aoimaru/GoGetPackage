[app/sources/346803796.Dockerfile]
digraph {
  "sha256:e5ff2da770a84d4a570c2f3a84cff7b3af5a1886f44c357f7d4c7fc2f875c830" [label="docker-image://docker.io/prestashop/base:7.0-apache" shape="ellipse"];
  "sha256:27b144af6814c7066ed64c75492c2f5f7c0f1cd82bb150469188ac214f392b1d" [label="https://www.prestashop.com/download/old/prestashop_1.5.6.3.zip" shape="ellipse"];
  "sha256:a3975f210ec16864a7a51b135a7e7f67f55de713aa1a2f8ee8c63d49f6fe4c21" [label="copy{src=/prestashop_1.5.6.3.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:144b6e19d2069ce1866a7ad6ee51088ff17d1555557eaf970167713206c01d23" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:8550db6ce7eaa0bb038fd2b152aa1447d185b16d26a2fa5baee6bd42d9e5473e" [label="sha256:8550db6ce7eaa0bb038fd2b152aa1447d185b16d26a2fa5baee6bd42d9e5473e" shape="plaintext"];
  "sha256:e5ff2da770a84d4a570c2f3a84cff7b3af5a1886f44c357f7d4c7fc2f875c830" -> "sha256:a3975f210ec16864a7a51b135a7e7f67f55de713aa1a2f8ee8c63d49f6fe4c21" [label=""];
  "sha256:27b144af6814c7066ed64c75492c2f5f7c0f1cd82bb150469188ac214f392b1d" -> "sha256:a3975f210ec16864a7a51b135a7e7f67f55de713aa1a2f8ee8c63d49f6fe4c21" [label=""];
  "sha256:a3975f210ec16864a7a51b135a7e7f67f55de713aa1a2f8ee8c63d49f6fe4c21" -> "sha256:144b6e19d2069ce1866a7ad6ee51088ff17d1555557eaf970167713206c01d23" [label=""];
  "sha256:144b6e19d2069ce1866a7ad6ee51088ff17d1555557eaf970167713206c01d23" -> "sha256:8550db6ce7eaa0bb038fd2b152aa1447d185b16d26a2fa5baee6bd42d9e5473e" [label=""];
}

