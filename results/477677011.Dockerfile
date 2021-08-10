[app/sources/477677011.Dockerfile]
digraph {
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" [label="docker-image://docker.io/library/node:9" shape="ellipse"];
  "sha256:1586f676ad6c232d24246f15f0072c0e79b237594d240fe80580d409db1a7282" [label="local://context" shape="ellipse"];
  "sha256:ac376d34e461db6ce1b811243861ad931e314946517ead5397ec797d9445f41b" [label="copy{src=/yarn.lock, dest=/app/yarn.lock}" shape="note"];
  "sha256:4c5d0f287fa2a994ccd96e998ea1fda786d0591d7dde9b9a9e9d9609ae876367" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:6e27ce5dd8f5e6a18365ec5f0fcad6bab6c23c6f4934d85e2147f93fba9f287a" [label="copy{src=/run.sh, dest=/app/run.sh}" shape="note"];
  "sha256:deb0e620dd05b398cd3af22e35315674fb00e0f5dfd088bc284fe804ce0dab04" [label="copy{src=/client, dest=/app/client}" shape="note"];
  "sha256:ded26f0948ec9a38db369b9ee1de4bb57bf13c958bb1167fab52e064cdc899ee" [label="copy{src=/backend, dest=/app/backend}" shape="note"];
  "sha256:ec2453905675ebe898bc81d2206893289344b62d6861f67e9a9600e5ce0c5adc" [label="mkdir{path=/app}" shape="note"];
  "sha256:f2b3777c63b2e80639b24ab6d6cd7aec93d0036e335566fa8535112ca1a7546b" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:08684f6d0279ea74da068a0b2a399ebb64257dbe32b8ababba93af74b4cde3b5" [label="sha256:08684f6d0279ea74da068a0b2a399ebb64257dbe32b8ababba93af74b4cde3b5" shape="plaintext"];
  "sha256:85b709cdfaadecd4e22a195cfe08257ae541788a78e98a6ac636abc22b42eedc" -> "sha256:ac376d34e461db6ce1b811243861ad931e314946517ead5397ec797d9445f41b" [label=""];
  "sha256:1586f676ad6c232d24246f15f0072c0e79b237594d240fe80580d409db1a7282" -> "sha256:ac376d34e461db6ce1b811243861ad931e314946517ead5397ec797d9445f41b" [label=""];
  "sha256:ac376d34e461db6ce1b811243861ad931e314946517ead5397ec797d9445f41b" -> "sha256:4c5d0f287fa2a994ccd96e998ea1fda786d0591d7dde9b9a9e9d9609ae876367" [label=""];
  "sha256:1586f676ad6c232d24246f15f0072c0e79b237594d240fe80580d409db1a7282" -> "sha256:4c5d0f287fa2a994ccd96e998ea1fda786d0591d7dde9b9a9e9d9609ae876367" [label=""];
  "sha256:4c5d0f287fa2a994ccd96e998ea1fda786d0591d7dde9b9a9e9d9609ae876367" -> "sha256:6e27ce5dd8f5e6a18365ec5f0fcad6bab6c23c6f4934d85e2147f93fba9f287a" [label=""];
  "sha256:1586f676ad6c232d24246f15f0072c0e79b237594d240fe80580d409db1a7282" -> "sha256:6e27ce5dd8f5e6a18365ec5f0fcad6bab6c23c6f4934d85e2147f93fba9f287a" [label=""];
  "sha256:6e27ce5dd8f5e6a18365ec5f0fcad6bab6c23c6f4934d85e2147f93fba9f287a" -> "sha256:deb0e620dd05b398cd3af22e35315674fb00e0f5dfd088bc284fe804ce0dab04" [label=""];
  "sha256:1586f676ad6c232d24246f15f0072c0e79b237594d240fe80580d409db1a7282" -> "sha256:deb0e620dd05b398cd3af22e35315674fb00e0f5dfd088bc284fe804ce0dab04" [label=""];
  "sha256:deb0e620dd05b398cd3af22e35315674fb00e0f5dfd088bc284fe804ce0dab04" -> "sha256:ded26f0948ec9a38db369b9ee1de4bb57bf13c958bb1167fab52e064cdc899ee" [label=""];
  "sha256:1586f676ad6c232d24246f15f0072c0e79b237594d240fe80580d409db1a7282" -> "sha256:ded26f0948ec9a38db369b9ee1de4bb57bf13c958bb1167fab52e064cdc899ee" [label=""];
  "sha256:ded26f0948ec9a38db369b9ee1de4bb57bf13c958bb1167fab52e064cdc899ee" -> "sha256:ec2453905675ebe898bc81d2206893289344b62d6861f67e9a9600e5ce0c5adc" [label=""];
  "sha256:ec2453905675ebe898bc81d2206893289344b62d6861f67e9a9600e5ce0c5adc" -> "sha256:f2b3777c63b2e80639b24ab6d6cd7aec93d0036e335566fa8535112ca1a7546b" [label=""];
  "sha256:f2b3777c63b2e80639b24ab6d6cd7aec93d0036e335566fa8535112ca1a7546b" -> "sha256:08684f6d0279ea74da068a0b2a399ebb64257dbe32b8ababba93af74b4cde3b5" [label=""];
}

