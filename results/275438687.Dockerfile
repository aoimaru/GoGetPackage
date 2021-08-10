[app/sources/275438687.Dockerfile]
digraph {
  "sha256:0b6a28555bb5e72b7d080b1ff351ef7bdd79c486380dac77136ea9cbc3d329fc" [label="local://context" shape="ellipse"];
  "sha256:c9efb90339c18076f420dd54048779aa84b25d2965dfe9913cdd0c8b76707871" [label="docker-image://docker.io/eboraas/apache-php:latest" shape="ellipse"];
  "sha256:9dd3ada935973b600d4316624647b1d419ba4351102429e187e22bd3e1a6398a" [label="copy{src=/src, dest=/var/www/html/}" shape="note"];
  "sha256:756c3ff84835ece22be9222ba069cb143973e3ac00f22d204e288485e08324d5" [label="/bin/sh -c rm /var/www/html/index.html \t&& chmod -R 755 /var/www/html" shape="box"];
  "sha256:7d4ce076853089b7c6d0124a0e3368967d6de1ade925632767eee970c1634aa3" [label="sha256:7d4ce076853089b7c6d0124a0e3368967d6de1ade925632767eee970c1634aa3" shape="plaintext"];
  "sha256:c9efb90339c18076f420dd54048779aa84b25d2965dfe9913cdd0c8b76707871" -> "sha256:9dd3ada935973b600d4316624647b1d419ba4351102429e187e22bd3e1a6398a" [label=""];
  "sha256:0b6a28555bb5e72b7d080b1ff351ef7bdd79c486380dac77136ea9cbc3d329fc" -> "sha256:9dd3ada935973b600d4316624647b1d419ba4351102429e187e22bd3e1a6398a" [label=""];
  "sha256:9dd3ada935973b600d4316624647b1d419ba4351102429e187e22bd3e1a6398a" -> "sha256:756c3ff84835ece22be9222ba069cb143973e3ac00f22d204e288485e08324d5" [label=""];
  "sha256:756c3ff84835ece22be9222ba069cb143973e3ac00f22d204e288485e08324d5" -> "sha256:7d4ce076853089b7c6d0124a0e3368967d6de1ade925632767eee970c1634aa3" [label=""];
}

