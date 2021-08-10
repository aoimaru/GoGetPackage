[app/sources/442239513.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:e92b3e7bba75147dbaa88af08cd816b9591ff858cf015da657ddb507a37d2d26" [label="/bin/sh -c echo \"export HOME=/root\" >> /root/.profile" shape="box"];
  "sha256:afdd89ddbc5eb936fbb96da14b7725d09cd5f69fbb9a6b7838d74e7fd1526696" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3e66ea161834953c13de5307f992f4bfab4e5692d86728a822b4ac39799f3007" [label="/bin/sh -c apt-get install -y wget nano curl git" shape="box"];
  "sha256:29ebd4a81660e0f39448e3791aeaae1bb382b004e402df43ef78a9317878c852" [label="/bin/sh -c apt-get install -y apache2" shape="box"];
  "sha256:211e0d1dad0a64fc400e6b697692647bb14aa201aab58c86fc606f39634297e0" [label="/bin/sh -c a2enmod rewrite status" shape="box"];
  "sha256:28347babdc609df921e4ea2a2098132b4e9bb88a056e7b773ecc1e4d64db0d1e" [label="/bin/sh -c echo \"<html><body><h1>Hello world!</h1></body></html>\" > /var/www/html/hello.html" shape="box"];
  "sha256:9d0c58f37c931e2c33984a44e790ab4f378cbf6cadfd6c5b43115b389fbacd4a" [label="/bin/sh -c chown -R www-data:www-data /var/www/html" shape="box"];
  "sha256:8808d65acd281c5760b4c27d88095996a130641057d19521a7e76ae5172a8c7e" [label="/bin/sh -c mkdir /volume" shape="box"];
  "sha256:ae181a7a011fcf47a9644d3ee40d2bfb9d851ee95eb9d44cc8081c0671aebd71" [label="sha256:ae181a7a011fcf47a9644d3ee40d2bfb9d851ee95eb9d44cc8081c0671aebd71" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:e92b3e7bba75147dbaa88af08cd816b9591ff858cf015da657ddb507a37d2d26" [label=""];
  "sha256:e92b3e7bba75147dbaa88af08cd816b9591ff858cf015da657ddb507a37d2d26" -> "sha256:afdd89ddbc5eb936fbb96da14b7725d09cd5f69fbb9a6b7838d74e7fd1526696" [label=""];
  "sha256:afdd89ddbc5eb936fbb96da14b7725d09cd5f69fbb9a6b7838d74e7fd1526696" -> "sha256:3e66ea161834953c13de5307f992f4bfab4e5692d86728a822b4ac39799f3007" [label=""];
  "sha256:3e66ea161834953c13de5307f992f4bfab4e5692d86728a822b4ac39799f3007" -> "sha256:29ebd4a81660e0f39448e3791aeaae1bb382b004e402df43ef78a9317878c852" [label=""];
  "sha256:29ebd4a81660e0f39448e3791aeaae1bb382b004e402df43ef78a9317878c852" -> "sha256:211e0d1dad0a64fc400e6b697692647bb14aa201aab58c86fc606f39634297e0" [label=""];
  "sha256:211e0d1dad0a64fc400e6b697692647bb14aa201aab58c86fc606f39634297e0" -> "sha256:28347babdc609df921e4ea2a2098132b4e9bb88a056e7b773ecc1e4d64db0d1e" [label=""];
  "sha256:28347babdc609df921e4ea2a2098132b4e9bb88a056e7b773ecc1e4d64db0d1e" -> "sha256:9d0c58f37c931e2c33984a44e790ab4f378cbf6cadfd6c5b43115b389fbacd4a" [label=""];
  "sha256:9d0c58f37c931e2c33984a44e790ab4f378cbf6cadfd6c5b43115b389fbacd4a" -> "sha256:8808d65acd281c5760b4c27d88095996a130641057d19521a7e76ae5172a8c7e" [label=""];
  "sha256:8808d65acd281c5760b4c27d88095996a130641057d19521a7e76ae5172a8c7e" -> "sha256:ae181a7a011fcf47a9644d3ee40d2bfb9d851ee95eb9d44cc8081c0671aebd71" [label=""];
}

