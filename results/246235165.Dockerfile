[app/sources/246235165.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:30eb108f19b7355fcf2983eae168106fec400f94d788d5a8831a2149bf0b8412" [label="local://context" shape="ellipse"];
  "sha256:fb443864b2f3b45cf9caab345cdfef78d202cad08c75cb91c3175ecac6d97aae" [label="copy{src=/docker/etc, dest=/etc/}" shape="note"];
  "sha256:71a586b3b8c320066b0b872d7fd05a4c91acb48578c9b7f99ce093dda25b49bc" [label="mkdir{path=/app}" shape="note"];
  "sha256:6fe1a87a6db2b10ae9e181997ffccea5d671009d20bf0644e3f21c886a0fa810" [label="/bin/sh -c apk add --no-cache libc-dev libzdb gmime=2.6.20-r0 libmhash libsieve libevent" shape="box"];
  "sha256:a9d4b662d876fd04457e40c082464e5bc71459cee8ee417f72b6fb1ad2d99264" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:7dcb1ebf507910933b7fb11bd8ae1313d93bfdc2def0e883cfb9fda694e29a43" [label="copy{src=/docker/etc, dest=/etc/}" shape="note"];
  "sha256:0314adbffb67d39d2199ff14c83b58839fdcb566202d156202424ea0b3bf0297" [label="mkdir{path=/app}" shape="note"];
  "sha256:6ecce314df1ed2b57393b2c13aa97cc266a4003757c94202b13fbea73ab49db6" [label="/bin/sh -c apk add --no-cache libc-dev libzdb-dev gcc curl make gmime-dev=2.6.20-r0 libmhash-dev libsieve-dev libevent-dev bsd-compat-headers check-dev pkgconf" shape="box"];
  "sha256:0c5cdb8f023aadf79a8151cfc503b1ded92b531167e6bac1549b998fc101318a" [label="/bin/sh -c ./configure --prefix=/usr --with-sieve=/usr --sysconfdir=/etc/dbmail --enable-static=no \t--enable-shared=yes --with-check=/usr  && make && CK_FORK=no make check && make install" shape="box"];
  "sha256:d90c6b7ae9f8486e317853a3bbede495ab2b52a35855e5cb38c81e79670470c5" [label="copy{src=/usr/sbin/dbmail*, dest=/usr/sbin/}" shape="note"];
  "sha256:98b4eb37adbfd9ab3206be4c5e14396d16cdf27124523caef7c8109e78df2dab" [label="copy{src=/usr/lib/dbmail, dest=/usr/lib/dbmail/}" shape="note"];
  "sha256:1afc2cad90663df4cc47c986f90eea951c1777efba647aacf3746c7a6b83b04c" [label="sha256:1afc2cad90663df4cc47c986f90eea951c1777efba647aacf3746c7a6b83b04c" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:fb443864b2f3b45cf9caab345cdfef78d202cad08c75cb91c3175ecac6d97aae" [label=""];
  "sha256:30eb108f19b7355fcf2983eae168106fec400f94d788d5a8831a2149bf0b8412" -> "sha256:fb443864b2f3b45cf9caab345cdfef78d202cad08c75cb91c3175ecac6d97aae" [label=""];
  "sha256:fb443864b2f3b45cf9caab345cdfef78d202cad08c75cb91c3175ecac6d97aae" -> "sha256:71a586b3b8c320066b0b872d7fd05a4c91acb48578c9b7f99ce093dda25b49bc" [label=""];
  "sha256:71a586b3b8c320066b0b872d7fd05a4c91acb48578c9b7f99ce093dda25b49bc" -> "sha256:6fe1a87a6db2b10ae9e181997ffccea5d671009d20bf0644e3f21c886a0fa810" [label=""];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:a9d4b662d876fd04457e40c082464e5bc71459cee8ee417f72b6fb1ad2d99264" [label=""];
  "sha256:30eb108f19b7355fcf2983eae168106fec400f94d788d5a8831a2149bf0b8412" -> "sha256:a9d4b662d876fd04457e40c082464e5bc71459cee8ee417f72b6fb1ad2d99264" [label=""];
  "sha256:a9d4b662d876fd04457e40c082464e5bc71459cee8ee417f72b6fb1ad2d99264" -> "sha256:7dcb1ebf507910933b7fb11bd8ae1313d93bfdc2def0e883cfb9fda694e29a43" [label=""];
  "sha256:30eb108f19b7355fcf2983eae168106fec400f94d788d5a8831a2149bf0b8412" -> "sha256:7dcb1ebf507910933b7fb11bd8ae1313d93bfdc2def0e883cfb9fda694e29a43" [label=""];
  "sha256:7dcb1ebf507910933b7fb11bd8ae1313d93bfdc2def0e883cfb9fda694e29a43" -> "sha256:0314adbffb67d39d2199ff14c83b58839fdcb566202d156202424ea0b3bf0297" [label=""];
  "sha256:0314adbffb67d39d2199ff14c83b58839fdcb566202d156202424ea0b3bf0297" -> "sha256:6ecce314df1ed2b57393b2c13aa97cc266a4003757c94202b13fbea73ab49db6" [label=""];
  "sha256:6ecce314df1ed2b57393b2c13aa97cc266a4003757c94202b13fbea73ab49db6" -> "sha256:0c5cdb8f023aadf79a8151cfc503b1ded92b531167e6bac1549b998fc101318a" [label=""];
  "sha256:6fe1a87a6db2b10ae9e181997ffccea5d671009d20bf0644e3f21c886a0fa810" -> "sha256:d90c6b7ae9f8486e317853a3bbede495ab2b52a35855e5cb38c81e79670470c5" [label=""];
  "sha256:0c5cdb8f023aadf79a8151cfc503b1ded92b531167e6bac1549b998fc101318a" -> "sha256:d90c6b7ae9f8486e317853a3bbede495ab2b52a35855e5cb38c81e79670470c5" [label=""];
  "sha256:d90c6b7ae9f8486e317853a3bbede495ab2b52a35855e5cb38c81e79670470c5" -> "sha256:98b4eb37adbfd9ab3206be4c5e14396d16cdf27124523caef7c8109e78df2dab" [label=""];
  "sha256:0c5cdb8f023aadf79a8151cfc503b1ded92b531167e6bac1549b998fc101318a" -> "sha256:98b4eb37adbfd9ab3206be4c5e14396d16cdf27124523caef7c8109e78df2dab" [label=""];
  "sha256:98b4eb37adbfd9ab3206be4c5e14396d16cdf27124523caef7c8109e78df2dab" -> "sha256:1afc2cad90663df4cc47c986f90eea951c1777efba647aacf3746c7a6b83b04c" [label=""];
}

