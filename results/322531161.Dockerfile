[app/sources/322531161.Dockerfile]
digraph {
  "sha256:270360aae316e4e99fdd6ebe6cbe8348206003a7badcd3a8d24323ceeb83f14c" [label="docker-image://docker.io/yodebu/emurgis:1.0.2" shape="ellipse"];
  "sha256:67b2b067327ad9ca79c1df1b7c715dbbf7fd3dfb865752693e809574ec8c517b" [label="/bin/sh -c selenium-standalone start &" shape="box"];
  "sha256:e43e5c9f0493a7d12955cba6efd0b2b1f80d9aaa768dcbf438ea8a6a7d2c0a2d" [label="mkdir{path=/root}" shape="note"];
  "sha256:a813360e29d22b3cd1b05e157c8f88ce3e675dd49cfa4bac7b6cb4021224c0ac" [label="/bin/sh -c /usr/bin/git clone https://github.com/EmurgoHK/Emurgis emurgis" shape="box"];
  "sha256:c5dc02b22a318b67bd248fd33521254c1fd12ab9984ff57c4c4cde70586d0169" [label="mkdir{path=/root/emurgis}" shape="note"];
  "sha256:f2eaee29c61712c73e98ec0188b9689f7c3396711b0f76f519b735a576e31457" [label="/bin/sh -c ls -alh" shape="box"];
  "sha256:e81421fb69a4f8de07bee479cce0ecbee3411511d7b39d3071f0c163638603f7" [label="/bin/sh -c meteor npm install" shape="box"];
  "sha256:7b2c4c2798a7d82bfb6af920f1200c837989f17e2d5aa38f074deb579af8b460" [label="/bin/sh -c meteor npm install --unsafe wdio-mocha-framework webdriverio assert" shape="box"];
  "sha256:7cc87a5d13902f1fe743c691ea7c48dda4f58d684fb666bc0992c366d00ce74e" [label="/bin/sh -c meteor &" shape="box"];
  "sha256:f4b55064ae103a7b557eefdaff9a003df869f4452632e95edb93d9a8587759fb" [label="/bin/sh -c sleep 300 # wait for Meteor to start, it takes some time, 5 minutes should be sufficient" shape="box"];
  "sha256:b8b119388ee68365325f6d25194d0215ebf69392a2e4ecb482d0da25edfd9f37" [label="/bin/sh -c ./node_modules/.bin/wdio wdio.conf.js # client side tests with wdio" shape="box"];
  "sha256:ee7984c28eee86d2a49768dc7259ad39b01e998a5341b54cbcc96c7bd02fda8e" [label="/bin/sh -c meteor test --driver-package=meteortesting:mocha --once --port 5000 # unit tests" shape="box"];
  "sha256:029fc85144526b9efcf4a64eb0c7bafef1fa997b09f33fd38b210d311202de96" [label="sha256:029fc85144526b9efcf4a64eb0c7bafef1fa997b09f33fd38b210d311202de96" shape="plaintext"];
  "sha256:270360aae316e4e99fdd6ebe6cbe8348206003a7badcd3a8d24323ceeb83f14c" -> "sha256:67b2b067327ad9ca79c1df1b7c715dbbf7fd3dfb865752693e809574ec8c517b" [label=""];
  "sha256:67b2b067327ad9ca79c1df1b7c715dbbf7fd3dfb865752693e809574ec8c517b" -> "sha256:e43e5c9f0493a7d12955cba6efd0b2b1f80d9aaa768dcbf438ea8a6a7d2c0a2d" [label=""];
  "sha256:e43e5c9f0493a7d12955cba6efd0b2b1f80d9aaa768dcbf438ea8a6a7d2c0a2d" -> "sha256:a813360e29d22b3cd1b05e157c8f88ce3e675dd49cfa4bac7b6cb4021224c0ac" [label=""];
  "sha256:a813360e29d22b3cd1b05e157c8f88ce3e675dd49cfa4bac7b6cb4021224c0ac" -> "sha256:c5dc02b22a318b67bd248fd33521254c1fd12ab9984ff57c4c4cde70586d0169" [label=""];
  "sha256:c5dc02b22a318b67bd248fd33521254c1fd12ab9984ff57c4c4cde70586d0169" -> "sha256:f2eaee29c61712c73e98ec0188b9689f7c3396711b0f76f519b735a576e31457" [label=""];
  "sha256:f2eaee29c61712c73e98ec0188b9689f7c3396711b0f76f519b735a576e31457" -> "sha256:e81421fb69a4f8de07bee479cce0ecbee3411511d7b39d3071f0c163638603f7" [label=""];
  "sha256:e81421fb69a4f8de07bee479cce0ecbee3411511d7b39d3071f0c163638603f7" -> "sha256:7b2c4c2798a7d82bfb6af920f1200c837989f17e2d5aa38f074deb579af8b460" [label=""];
  "sha256:7b2c4c2798a7d82bfb6af920f1200c837989f17e2d5aa38f074deb579af8b460" -> "sha256:7cc87a5d13902f1fe743c691ea7c48dda4f58d684fb666bc0992c366d00ce74e" [label=""];
  "sha256:7cc87a5d13902f1fe743c691ea7c48dda4f58d684fb666bc0992c366d00ce74e" -> "sha256:f4b55064ae103a7b557eefdaff9a003df869f4452632e95edb93d9a8587759fb" [label=""];
  "sha256:f4b55064ae103a7b557eefdaff9a003df869f4452632e95edb93d9a8587759fb" -> "sha256:b8b119388ee68365325f6d25194d0215ebf69392a2e4ecb482d0da25edfd9f37" [label=""];
  "sha256:b8b119388ee68365325f6d25194d0215ebf69392a2e4ecb482d0da25edfd9f37" -> "sha256:ee7984c28eee86d2a49768dc7259ad39b01e998a5341b54cbcc96c7bd02fda8e" [label=""];
  "sha256:ee7984c28eee86d2a49768dc7259ad39b01e998a5341b54cbcc96c7bd02fda8e" -> "sha256:029fc85144526b9efcf4a64eb0c7bafef1fa997b09f33fd38b210d311202de96" [label=""];
}

