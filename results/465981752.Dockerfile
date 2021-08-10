[app/sources/465981752.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:b427ed39c503341364bd07239b57ca94b9e63751d811a5c5751aeec6513e7d55" [label="local://context" shape="ellipse"];
  "sha256:5b2e4fd2f4e426c8c4ffd7dd8d6db9b832453817efdafe8a8bd20c4ce257652e" [label="/bin/sh -c apk add --no-cache        git         g++         cmake         openssl-dev         ninja         linux-headers" shape="box"];
  "sha256:410e4ea778d6795b6b5237d314b4051e1b3f31c3e54776b04b356330d1aaeed2" [label="copy{src=/tools/get-boost.sh, dest=/root/get-boost.sh}" shape="note"];
  "sha256:04c78619ce242acfab2ceca172a958867e0dc8f456e54e9ba6e013838fc2fa13" [label="mkdir{path=/root}" shape="note"];
  "sha256:a9cf18b5d3be04b88c761c8ed8e8a93ac39907bb3621ea428cd736f2089e17bb" [label="/bin/sh -c ./get-boost.sh && cd / && rm -r /root/*" shape="box"];
  "sha256:eb963b5aefdf138c1c8abe7619dc1e229a86ee6c9fa8c923dd2cf5cf35ac1cbc" [label="copy{src=/, dest=/root}" shape="note"];
  "sha256:807352802cb8e9ae6fb457592a8a0a703da966256431f59ee396008cf89f1528" [label="/bin/sh -c cmake -G \"Ninja\" -H. -Bbuild         -DCMAKE_INSTALL_PREFIX=/beast-lounge         -DCMAKE_BUILD_TYPE=Release         -DBUILD_TESTING=OFF     && ninja -C build install" shape="box"];
  "sha256:d651706a040dc28b4a7d2dd5fbee6cc20f275d04082fcee199d44da938713d7a" [label="copy{src=/beast-lounge, dest=/beast-lounge}" shape="note"];
  "sha256:e51a2a5c08a7227b6c3057e86512e6f1f1ccf43be44fbd2d08760d4ba7e00bdc" [label="copy{src=/root/tools/docker-run.sh, dest=/beast-lounge/bin/docker-run.sh}" shape="note"];
  "sha256:d6e5d8688cfdb3b1e5f03217f6f2b41d6162418387176988142a10635abd4eb0" [label="mkdir{path=/beast-lounge}" shape="note"];
  "sha256:24f628ba8f4792dad85b6dd45c6e27ff30582b5b303b08c9afd4e2ff2f870db8" [label="/bin/sh -c apk add --no-cache         libstdc++     && adduser -H -D -g lounge lounge     && touch /beast-lounge/var/beast-lounge/log.txt     && chown -R lounge:lounge /beast-lounge     && chmod 660 /beast-lounge/var/beast-lounge/log.txt     && chmod 660 /beast-lounge/etc/beast-lounge/dockerconfig.json" shape="box"];
  "sha256:c448ccd79d36f30b24756d52db73dfefa44978532d41da769d8cb23669491872" [label="sha256:c448ccd79d36f30b24756d52db73dfefa44978532d41da769d8cb23669491872" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:5b2e4fd2f4e426c8c4ffd7dd8d6db9b832453817efdafe8a8bd20c4ce257652e" [label=""];
  "sha256:5b2e4fd2f4e426c8c4ffd7dd8d6db9b832453817efdafe8a8bd20c4ce257652e" -> "sha256:410e4ea778d6795b6b5237d314b4051e1b3f31c3e54776b04b356330d1aaeed2" [label=""];
  "sha256:b427ed39c503341364bd07239b57ca94b9e63751d811a5c5751aeec6513e7d55" -> "sha256:410e4ea778d6795b6b5237d314b4051e1b3f31c3e54776b04b356330d1aaeed2" [label=""];
  "sha256:410e4ea778d6795b6b5237d314b4051e1b3f31c3e54776b04b356330d1aaeed2" -> "sha256:04c78619ce242acfab2ceca172a958867e0dc8f456e54e9ba6e013838fc2fa13" [label=""];
  "sha256:04c78619ce242acfab2ceca172a958867e0dc8f456e54e9ba6e013838fc2fa13" -> "sha256:a9cf18b5d3be04b88c761c8ed8e8a93ac39907bb3621ea428cd736f2089e17bb" [label=""];
  "sha256:a9cf18b5d3be04b88c761c8ed8e8a93ac39907bb3621ea428cd736f2089e17bb" -> "sha256:eb963b5aefdf138c1c8abe7619dc1e229a86ee6c9fa8c923dd2cf5cf35ac1cbc" [label=""];
  "sha256:b427ed39c503341364bd07239b57ca94b9e63751d811a5c5751aeec6513e7d55" -> "sha256:eb963b5aefdf138c1c8abe7619dc1e229a86ee6c9fa8c923dd2cf5cf35ac1cbc" [label=""];
  "sha256:eb963b5aefdf138c1c8abe7619dc1e229a86ee6c9fa8c923dd2cf5cf35ac1cbc" -> "sha256:807352802cb8e9ae6fb457592a8a0a703da966256431f59ee396008cf89f1528" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:d651706a040dc28b4a7d2dd5fbee6cc20f275d04082fcee199d44da938713d7a" [label=""];
  "sha256:807352802cb8e9ae6fb457592a8a0a703da966256431f59ee396008cf89f1528" -> "sha256:d651706a040dc28b4a7d2dd5fbee6cc20f275d04082fcee199d44da938713d7a" [label=""];
  "sha256:d651706a040dc28b4a7d2dd5fbee6cc20f275d04082fcee199d44da938713d7a" -> "sha256:e51a2a5c08a7227b6c3057e86512e6f1f1ccf43be44fbd2d08760d4ba7e00bdc" [label=""];
  "sha256:807352802cb8e9ae6fb457592a8a0a703da966256431f59ee396008cf89f1528" -> "sha256:e51a2a5c08a7227b6c3057e86512e6f1f1ccf43be44fbd2d08760d4ba7e00bdc" [label=""];
  "sha256:e51a2a5c08a7227b6c3057e86512e6f1f1ccf43be44fbd2d08760d4ba7e00bdc" -> "sha256:d6e5d8688cfdb3b1e5f03217f6f2b41d6162418387176988142a10635abd4eb0" [label=""];
  "sha256:d6e5d8688cfdb3b1e5f03217f6f2b41d6162418387176988142a10635abd4eb0" -> "sha256:24f628ba8f4792dad85b6dd45c6e27ff30582b5b303b08c9afd4e2ff2f870db8" [label=""];
  "sha256:24f628ba8f4792dad85b6dd45c6e27ff30582b5b303b08c9afd4e2ff2f870db8" -> "sha256:c448ccd79d36f30b24756d52db73dfefa44978532d41da769d8cb23669491872" [label=""];
}

