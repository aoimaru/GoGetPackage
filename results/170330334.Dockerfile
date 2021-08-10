[app/sources/170330334.Dockerfile]
digraph {
  "sha256:fd5d76c84aa0344c32abd010b419b190c6009e3fb33baa8fa56ce29e171a1d4c" [label="docker-image://docker.io/composer/composer:base-php5" shape="ellipse"];
  "sha256:5220de0fa2a8f2af1065f5a1e79c994f2f12af3bd0150d072abcd3e62805343f" [label="/bin/sh -c php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} && rm -rf /tmp/composer-setup.php" shape="box"];
  "sha256:3894d59672d6b82525b7bf5604f9be09e9595717beb2f2ac962bb8cfe212423b" [label="/bin/sh -c composer --version" shape="box"];
  "sha256:e058aac769418d6fe51e2bacdef53373ecfc5b6699b18da310c914db870998d3" [label="sha256:e058aac769418d6fe51e2bacdef53373ecfc5b6699b18da310c914db870998d3" shape="plaintext"];
  "sha256:fd5d76c84aa0344c32abd010b419b190c6009e3fb33baa8fa56ce29e171a1d4c" -> "sha256:5220de0fa2a8f2af1065f5a1e79c994f2f12af3bd0150d072abcd3e62805343f" [label=""];
  "sha256:5220de0fa2a8f2af1065f5a1e79c994f2f12af3bd0150d072abcd3e62805343f" -> "sha256:3894d59672d6b82525b7bf5604f9be09e9595717beb2f2ac962bb8cfe212423b" [label=""];
  "sha256:3894d59672d6b82525b7bf5604f9be09e9595717beb2f2ac962bb8cfe212423b" -> "sha256:e058aac769418d6fe51e2bacdef53373ecfc5b6699b18da310c914db870998d3" [label=""];
}

