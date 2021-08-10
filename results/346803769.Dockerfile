[app/sources/346803769.Dockerfile]
digraph {
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" [label="docker-image://docker.io/prestashop/base:5.6-apache" shape="ellipse"];
  "sha256:a9a09065fe009940190be9b98e0ad5b658df5cdc904d2dc38396e2ffbf9ee2d2" [label="https://www.prestashop.com/download/old/prestashop_1.4.0.2.zip" shape="ellipse"];
  "sha256:e2cc8cc7539d7a490e6f5cc4121b299cd4f55a13c1202be870da9e76cd6d5c3c" [label="copy{src=/prestashop_1.4.0.2.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:b0d2e06d1703b44f4399580eb2306ec03cb3413cef6b1c7f9cdc0ea77cc75aae" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:74fcf6ad22e50e86e438ed83149772c12ec1f093b44f90cefc6a5eb007ae1b35" [label="sha256:74fcf6ad22e50e86e438ed83149772c12ec1f093b44f90cefc6a5eb007ae1b35" shape="plaintext"];
  "sha256:846835643a1e0e8f95b62bc82c759c6087b851469bd601937d62cf28bd615ca1" -> "sha256:e2cc8cc7539d7a490e6f5cc4121b299cd4f55a13c1202be870da9e76cd6d5c3c" [label=""];
  "sha256:a9a09065fe009940190be9b98e0ad5b658df5cdc904d2dc38396e2ffbf9ee2d2" -> "sha256:e2cc8cc7539d7a490e6f5cc4121b299cd4f55a13c1202be870da9e76cd6d5c3c" [label=""];
  "sha256:e2cc8cc7539d7a490e6f5cc4121b299cd4f55a13c1202be870da9e76cd6d5c3c" -> "sha256:b0d2e06d1703b44f4399580eb2306ec03cb3413cef6b1c7f9cdc0ea77cc75aae" [label=""];
  "sha256:b0d2e06d1703b44f4399580eb2306ec03cb3413cef6b1c7f9cdc0ea77cc75aae" -> "sha256:74fcf6ad22e50e86e438ed83149772c12ec1f093b44f90cefc6a5eb007ae1b35" [label=""];
}

