[app/sources/220836903.Dockerfile]
digraph {
  "sha256:2be41a549b67964e27a222da80f95829246680d769d2b46347c8c60590afd83d" [label="docker-image://docker.io/library/php:7.0-cli@sha256:950fa73e35e650ee1d5fff5b053feadcd1dc8c6e83bba07d6c7fd17c44868e22" shape="ellipse"];
  "sha256:24c0cbc970757cc33c6a1cc4da796c239d0e074b12606bfc8c0d134bc1beb151" [label="local://context" shape="ellipse"];
  "sha256:b3a3106bba653ec4a128aa1f5d29d52f3ad7bdddc031577fd926d562216ee10e" [label="copy{src=/php-config.ini, dest=/usr/local/etc/php/conf.d/php-config.ini}" shape="note"];
  "sha256:603d8a3c943741af8606b14ed7108d3f5a6cca135c0d3a2e34cce539cc9e7f46" [label="/bin/sh -c apt-get update -qq && apt-get install -y -qq libbz2-dev unzip zlib1g-dev git     && docker-php-ext-install bz2     && docker-php-ext-install zip     && pecl install xdebug-2.6.0     && docker-php-ext-enable xdebug" shape="box"];
  "sha256:a4560a0cf479731ddc8b6bad2a3c0ac9788f456a788af6da3b29ae05e975efb7" [label="mkdir{path=/psh}" shape="note"];
  "sha256:ddaa509859615d8a4863dee65c05b5aa4c281919ca609d079dd116bfc863f9fa" [label="sha256:ddaa509859615d8a4863dee65c05b5aa4c281919ca609d079dd116bfc863f9fa" shape="plaintext"];
  "sha256:2be41a549b67964e27a222da80f95829246680d769d2b46347c8c60590afd83d" -> "sha256:b3a3106bba653ec4a128aa1f5d29d52f3ad7bdddc031577fd926d562216ee10e" [label=""];
  "sha256:24c0cbc970757cc33c6a1cc4da796c239d0e074b12606bfc8c0d134bc1beb151" -> "sha256:b3a3106bba653ec4a128aa1f5d29d52f3ad7bdddc031577fd926d562216ee10e" [label=""];
  "sha256:b3a3106bba653ec4a128aa1f5d29d52f3ad7bdddc031577fd926d562216ee10e" -> "sha256:603d8a3c943741af8606b14ed7108d3f5a6cca135c0d3a2e34cce539cc9e7f46" [label=""];
  "sha256:603d8a3c943741af8606b14ed7108d3f5a6cca135c0d3a2e34cce539cc9e7f46" -> "sha256:a4560a0cf479731ddc8b6bad2a3c0ac9788f456a788af6da3b29ae05e975efb7" [label=""];
  "sha256:a4560a0cf479731ddc8b6bad2a3c0ac9788f456a788af6da3b29ae05e975efb7" -> "sha256:ddaa509859615d8a4863dee65c05b5aa4c281919ca609d079dd116bfc863f9fa" [label=""];
}

