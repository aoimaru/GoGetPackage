[app/sources/252789013.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:1f74a472b470aede3e5a582a180803c4d4936535f797ebf00614463c88aba9f2" [label="/bin/sh -c mkdir -p /usr/src/node-red" shape="box"];
  "sha256:432b984c0ee56869256f4e81a9a40fefc528278e7071c434f19320255225bbba" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:af589b8489d073542e020306f19c4e7c053bcdc728143f6fae642a2880e9b504" [label="mkdir{path=/usr/src/node-red}" shape="note"];
  "sha256:59aab88baed005affd8e815aa64fb64d802d805ce7c97f636dc252d956aec809" [label="/bin/sh -c useradd --home-dir /usr/src/node-red \\--no-create-home node-red && chown -R node-red:node-red /data && chown -R node-red:node-red /usr/src/node-red" shape="box"];
  "sha256:c669b0efac78d8cc52a61cf0b9579d11d92186dd94a1f220de5d76dcd634608c" [label="local://context" shape="ellipse"];
  "sha256:d5085276d717cc48be1c5ec8afbb0e10b8e28db291a62c9639a1f728b2d5d1b8" [label="copy{src=/package.json, dest=/usr/src/node-red/}" shape="note"];
  "sha256:e9250f447b94c57b49ff70baadd03cb2cc23423cf5411b44a7315d96345a545e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:a77cfbb2ec1579a0b428348f908e96364a7be26fcabf4136e3ce93edf7e8b421" [label="sha256:a77cfbb2ec1579a0b428348f908e96364a7be26fcabf4136e3ce93edf7e8b421" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:1f74a472b470aede3e5a582a180803c4d4936535f797ebf00614463c88aba9f2" [label=""];
  "sha256:1f74a472b470aede3e5a582a180803c4d4936535f797ebf00614463c88aba9f2" -> "sha256:432b984c0ee56869256f4e81a9a40fefc528278e7071c434f19320255225bbba" [label=""];
  "sha256:432b984c0ee56869256f4e81a9a40fefc528278e7071c434f19320255225bbba" -> "sha256:af589b8489d073542e020306f19c4e7c053bcdc728143f6fae642a2880e9b504" [label=""];
  "sha256:af589b8489d073542e020306f19c4e7c053bcdc728143f6fae642a2880e9b504" -> "sha256:59aab88baed005affd8e815aa64fb64d802d805ce7c97f636dc252d956aec809" [label=""];
  "sha256:59aab88baed005affd8e815aa64fb64d802d805ce7c97f636dc252d956aec809" -> "sha256:d5085276d717cc48be1c5ec8afbb0e10b8e28db291a62c9639a1f728b2d5d1b8" [label=""];
  "sha256:c669b0efac78d8cc52a61cf0b9579d11d92186dd94a1f220de5d76dcd634608c" -> "sha256:d5085276d717cc48be1c5ec8afbb0e10b8e28db291a62c9639a1f728b2d5d1b8" [label=""];
  "sha256:d5085276d717cc48be1c5ec8afbb0e10b8e28db291a62c9639a1f728b2d5d1b8" -> "sha256:e9250f447b94c57b49ff70baadd03cb2cc23423cf5411b44a7315d96345a545e" [label=""];
  "sha256:e9250f447b94c57b49ff70baadd03cb2cc23423cf5411b44a7315d96345a545e" -> "sha256:a77cfbb2ec1579a0b428348f908e96364a7be26fcabf4136e3ce93edf7e8b421" [label=""];
}

