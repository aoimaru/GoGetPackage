[app/sources/346803846.Dockerfile]
digraph {
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" [label="docker-image://docker.io/prestashop/base:5.6-apache" shape="ellipse"];
  "sha256:2d101e6d7c3ad8f93d2024f76c80513d93a608293ad9a07c60831807ee997b0f" [label="https://www.prestashop.com/download/old/prestashop_1.6.1.12.zip" shape="ellipse"];
  "sha256:04e351c56890bfe385ca09d3427311001e455fd828828d673c9082fbbd6a1e71" [label="copy{src=/prestashop_1.6.1.12.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:e986228d11b5d25dc93da14b0001ed9caad7c5095207af5938d4009277402f14" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:0f59c05af153dd992d16c11aaa7c03265fb11e6876e6146fa6738899285ce97f" [label="sha256:0f59c05af153dd992d16c11aaa7c03265fb11e6876e6146fa6738899285ce97f" shape="plaintext"];
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" -> "sha256:04e351c56890bfe385ca09d3427311001e455fd828828d673c9082fbbd6a1e71" [label=""];
  "sha256:2d101e6d7c3ad8f93d2024f76c80513d93a608293ad9a07c60831807ee997b0f" -> "sha256:04e351c56890bfe385ca09d3427311001e455fd828828d673c9082fbbd6a1e71" [label=""];
  "sha256:04e351c56890bfe385ca09d3427311001e455fd828828d673c9082fbbd6a1e71" -> "sha256:e986228d11b5d25dc93da14b0001ed9caad7c5095207af5938d4009277402f14" [label=""];
  "sha256:e986228d11b5d25dc93da14b0001ed9caad7c5095207af5938d4009277402f14" -> "sha256:0f59c05af153dd992d16c11aaa7c03265fb11e6876e6146fa6738899285ce97f" [label=""];
}

