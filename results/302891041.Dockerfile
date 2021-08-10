[app/sources/302891041.Dockerfile]
digraph {
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:eaec54ef5acef14de388972ba0146a8e12a221b13d66a7afda2f1362f65a4a56" [label="mkdir{path=/src}" shape="note"];
  "sha256:59ae35e7016e43785410a6202e417e7f888b91344b198cb24c9dfd119cea53a5" [label="local://context" shape="ellipse"];
  "sha256:c22e9a232620ac1a11751dce199b4cc767c9f6a3a6987ef401ca1f5aaa537528" [label="copy{src=/package.json, dest=/src/}" shape="note"];
  "sha256:d3c651017144ad278f8ec0507da61091513c1371fded8963fa4ca63ef580ec0f" [label="/bin/sh -c apt-get update   && apt-get install -y apt-utils   && apt-get install -y ${EPHIMERAL_PACKAGES} ${PACKAGES}   && curl -sL https://deb.nodesource.com/setup_8.x | bash -   && apt-get install -y nodejs   && cd /src   && npm i   ; apt-get remove --purge -y ${EPHIMERAL_PACKAGES}   ; apt-get autoremove -y ${EPHIMERAL_PACKAGES}   ; apt-get clean   ; apt-get autoclean   ; echo -n > /var/lib/apt/extended_states   ; rm -rf /var/lib/apt/lists/*   ; rm -rf /usr/share/man/??   ; rm -rf /usr/share/man/??_*" shape="box"];
  "sha256:e85e73e1ba0b84aeb14aa81842da9877229edee39c591bb6866c35caef65f0b2" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:01cbf5e64e1f44eef34feb5448924c94545b7d603ecbb1f5c94a1c8042e1db9a" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:c7719a94acc2bdcf0298fc08cc120b8bfb79541ca93d40a2712a16aeb041be1e" [label="sha256:c7719a94acc2bdcf0298fc08cc120b8bfb79541ca93d40a2712a16aeb041be1e" shape="plaintext"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:eaec54ef5acef14de388972ba0146a8e12a221b13d66a7afda2f1362f65a4a56" [label=""];
  "sha256:eaec54ef5acef14de388972ba0146a8e12a221b13d66a7afda2f1362f65a4a56" -> "sha256:c22e9a232620ac1a11751dce199b4cc767c9f6a3a6987ef401ca1f5aaa537528" [label=""];
  "sha256:59ae35e7016e43785410a6202e417e7f888b91344b198cb24c9dfd119cea53a5" -> "sha256:c22e9a232620ac1a11751dce199b4cc767c9f6a3a6987ef401ca1f5aaa537528" [label=""];
  "sha256:c22e9a232620ac1a11751dce199b4cc767c9f6a3a6987ef401ca1f5aaa537528" -> "sha256:d3c651017144ad278f8ec0507da61091513c1371fded8963fa4ca63ef580ec0f" [label=""];
  "sha256:d3c651017144ad278f8ec0507da61091513c1371fded8963fa4ca63ef580ec0f" -> "sha256:e85e73e1ba0b84aeb14aa81842da9877229edee39c591bb6866c35caef65f0b2" [label=""];
  "sha256:59ae35e7016e43785410a6202e417e7f888b91344b198cb24c9dfd119cea53a5" -> "sha256:e85e73e1ba0b84aeb14aa81842da9877229edee39c591bb6866c35caef65f0b2" [label=""];
  "sha256:e85e73e1ba0b84aeb14aa81842da9877229edee39c591bb6866c35caef65f0b2" -> "sha256:01cbf5e64e1f44eef34feb5448924c94545b7d603ecbb1f5c94a1c8042e1db9a" [label=""];
  "sha256:01cbf5e64e1f44eef34feb5448924c94545b7d603ecbb1f5c94a1c8042e1db9a" -> "sha256:c7719a94acc2bdcf0298fc08cc120b8bfb79541ca93d40a2712a16aeb041be1e" [label=""];
}

