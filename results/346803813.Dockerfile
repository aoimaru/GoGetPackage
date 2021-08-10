[app/sources/346803813.Dockerfile]
digraph {
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" [label="docker-image://docker.io/prestashop/base:5.6-apache" shape="ellipse"];
  "sha256:63005e0543fd8698b83004b88d009ae4fac09556e271839a530c01d74aa6286e" [label="https://www.prestashop.com/download/old/prestashop_1.5.3.1.zip" shape="ellipse"];
  "sha256:7105e81f437f6ab2e82ef9c8c6578a49b35c0b46a720a6a22ac12a120326ff55" [label="copy{src=/prestashop_1.5.3.1.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:7d355089da8e2648e515cb42f907d99ca9ec4dab6c120b57c846159549954a3a" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:b24bd87288b4ba530511cfea2eb4f68ebc93cc7088292c2c05a5f975179d5559" [label="sha256:b24bd87288b4ba530511cfea2eb4f68ebc93cc7088292c2c05a5f975179d5559" shape="plaintext"];
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" -> "sha256:7105e81f437f6ab2e82ef9c8c6578a49b35c0b46a720a6a22ac12a120326ff55" [label=""];
  "sha256:63005e0543fd8698b83004b88d009ae4fac09556e271839a530c01d74aa6286e" -> "sha256:7105e81f437f6ab2e82ef9c8c6578a49b35c0b46a720a6a22ac12a120326ff55" [label=""];
  "sha256:7105e81f437f6ab2e82ef9c8c6578a49b35c0b46a720a6a22ac12a120326ff55" -> "sha256:7d355089da8e2648e515cb42f907d99ca9ec4dab6c120b57c846159549954a3a" [label=""];
  "sha256:7d355089da8e2648e515cb42f907d99ca9ec4dab6c120b57c846159549954a3a" -> "sha256:b24bd87288b4ba530511cfea2eb4f68ebc93cc7088292c2c05a5f975179d5559" [label=""];
}

