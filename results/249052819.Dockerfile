[app/sources/249052819.Dockerfile]
digraph {
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" [label="docker-image://docker.io/library/php:7.2-apache" shape="ellipse"];
  "sha256:998bc0b2eeff609f38e1a175ef8487e6347d019bc6bb38626475ccd01c645eaa" [label="/bin/sh -c set -xe &&         curl -LO https://github.com/phalcon/cphalcon/archive/v${PHALCON_VERSION}.tar.gz &&         tar xzf ${PWD}/v${PHALCON_VERSION}.tar.gz &&         docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN) ${PWD}/cphalcon-${PHALCON_VERSION}/build/${PHALCON_EXT_PATH} &&         rm -r             ${PWD}/v${PHALCON_VERSION}.tar.gz             ${PWD}/cphalcon-${PHALCON_VERSION}" shape="box"];
  "sha256:8c5202361a33b60999a6964c71f7ebe836a1d289ab977aef378ca5977197f118" [label="local://context" shape="ellipse"];
  "sha256:41b6c5bdbba76e68a4c3841dbc52bf565000bbd411809f240b7e9abe70b9e417" [label="copy{src=/docker-phalcon-*, dest=/usr/local/bin/}" shape="note"];
  "sha256:556d2b7e8312d0215fb228038554f39c991f43f9f368d5e87906797937b23758" [label="sha256:556d2b7e8312d0215fb228038554f39c991f43f9f368d5e87906797937b23758" shape="plaintext"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" -> "sha256:998bc0b2eeff609f38e1a175ef8487e6347d019bc6bb38626475ccd01c645eaa" [label=""];
  "sha256:998bc0b2eeff609f38e1a175ef8487e6347d019bc6bb38626475ccd01c645eaa" -> "sha256:41b6c5bdbba76e68a4c3841dbc52bf565000bbd411809f240b7e9abe70b9e417" [label=""];
  "sha256:8c5202361a33b60999a6964c71f7ebe836a1d289ab977aef378ca5977197f118" -> "sha256:41b6c5bdbba76e68a4c3841dbc52bf565000bbd411809f240b7e9abe70b9e417" [label=""];
  "sha256:41b6c5bdbba76e68a4c3841dbc52bf565000bbd411809f240b7e9abe70b9e417" -> "sha256:556d2b7e8312d0215fb228038554f39c991f43f9f368d5e87906797937b23758" [label=""];
}

