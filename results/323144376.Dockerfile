[app/sources/323144376.Dockerfile]
digraph {
  "sha256:5aa829212b8f08e465905e57c42efd5903b9678f66557c37f13e5c86970b3091" [label="docker-image://docker.io/library/nginx:1.15.3" shape="ellipse"];
  "sha256:4b51a30bdf67709232ca11c7afb6ec8dcf7fb0549f323d3b1fb6cb4520cffff0" [label="local://context" shape="ellipse"];
  "sha256:165a2ff92d0c37c8a2475edf1b1011a8c441f2c07f815af885ef6edc5d66a155" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4bd060a27b57b6924a28503894dffe3a013182b480ad0274250d4679d7f79f40" [label="/bin/sh -c touch /var/run/nginx.pid &&   chown -R www-data:www-data /var/run/nginx.pid &&   chown -R www-data:www-data /var/cache/nginx" shape="box"];
  "sha256:1dc0e198eeb35128cc0947311a70dd9b8f6e47372e0fc8135a477557343f5c5d" [label="copy{src=/index.html, dest=/var/www/htdocs/}" shape="note"];
  "sha256:ec346a1c57651e270a44d67fcb48c7ba1f060699dc56abf96ec279930dca2182" [label="sha256:ec346a1c57651e270a44d67fcb48c7ba1f060699dc56abf96ec279930dca2182" shape="plaintext"];
  "sha256:5aa829212b8f08e465905e57c42efd5903b9678f66557c37f13e5c86970b3091" -> "sha256:165a2ff92d0c37c8a2475edf1b1011a8c441f2c07f815af885ef6edc5d66a155" [label=""];
  "sha256:4b51a30bdf67709232ca11c7afb6ec8dcf7fb0549f323d3b1fb6cb4520cffff0" -> "sha256:165a2ff92d0c37c8a2475edf1b1011a8c441f2c07f815af885ef6edc5d66a155" [label=""];
  "sha256:165a2ff92d0c37c8a2475edf1b1011a8c441f2c07f815af885ef6edc5d66a155" -> "sha256:4bd060a27b57b6924a28503894dffe3a013182b480ad0274250d4679d7f79f40" [label=""];
  "sha256:4bd060a27b57b6924a28503894dffe3a013182b480ad0274250d4679d7f79f40" -> "sha256:1dc0e198eeb35128cc0947311a70dd9b8f6e47372e0fc8135a477557343f5c5d" [label=""];
  "sha256:4b51a30bdf67709232ca11c7afb6ec8dcf7fb0549f323d3b1fb6cb4520cffff0" -> "sha256:1dc0e198eeb35128cc0947311a70dd9b8f6e47372e0fc8135a477557343f5c5d" [label=""];
  "sha256:1dc0e198eeb35128cc0947311a70dd9b8f6e47372e0fc8135a477557343f5c5d" -> "sha256:ec346a1c57651e270a44d67fcb48c7ba1f060699dc56abf96ec279930dca2182" [label=""];
}

