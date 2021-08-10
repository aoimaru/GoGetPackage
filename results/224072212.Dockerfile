[app/sources/224072212.Dockerfile]
digraph {
  "sha256:8ef81ee3529c067ffdff14b04064035e5334d62a78fc2b4e421fc2a8b595a09e" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" [label="/bin/sh -c mkdir -p /service" shape="box"];
  "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" [label="mkdir{path=/service}" shape="note"];
  "sha256:74d0c6918586d473b1bb62e51b2d16c8fc245eb6083b09d4a3cc895e3c1fcfd9" [label="/bin/sh -c apk add --no-cache         git         && go get github.com/julienschmidt/httprouter         && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:a5b18c12d6a6796ab4450e9c5eff099424d68674c51860872756facb46cbe5b5" [label="/bin/sh -c apk add --no-cache         bash         build-base         openssl-dev \t    make         && git clone https://github.com/merces/libpe.git \t\t&& cd libpe \t\t&& git checkout ccd907e86f931a5d66b5f6ce592b953e9f056596         && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:732f4387c211ec50f556553cd4ed728da0270c98907a537145f0fb47c2504ebe" [label="/bin/sh -c apk del --purge         git" shape="box"];
  "sha256:e6b72b6193b7f34af6f464451d6615d1da2f32216decd2fd38bb884b1d765a31" [label="/bin/sh -c sed -i 's/.*pack(push, 1).*//g' /service/libpe/include/libpe/hdr_optional.h" shape="box"];
  "sha256:a1ef3725a85a5c00837cfeb5c0332b572541d8c9f492d1b35ed1c199a278414a" [label="/bin/sh -c sed -i 's/.*pack(pop).*//g' /service/libpe/include/libpe/hdr_optional.h" shape="box"];
  "sha256:0cf8e9faefa98a0e8cf6327cc1de01fe528058671b251638baa0acf361947b65" [label="/bin/sh -c cd /service/libpe \t&& make \t&& make install" shape="box"];
  "sha256:03f92f4a3f9e8a2997c278e3e3b38c4b4b8d55992a4a5dcfadfa209720199a66" [label="copy{src=/LICENSE, dest=/service}" shape="note"];
  "sha256:c6c470b9b1e3ab487dbd49f5a1700744db17a9ed5c3810b3f11979abcbf7265a" [label="copy{src=/README.md, dest=/service}" shape="note"];
  "sha256:75b5fd34c8f3d9cee9471a9bb491916abcecf5778d90f418e86392029e18cebd" [label="copy{src=/pemeta.go, dest=/service}" shape="note"];
  "sha256:07b983539aaeb79ed6caffa0e7fc129c85fa420ca13498620f4b131e4eaf7f93" [label="/bin/sh -c go build pemeta.go" shape="box"];
  "sha256:0ad60b3cc3910fe69f9916290e6ecacd46e2672aee37dd32fbeb1a15f9cb7537" [label="copy{src=/service.conf, dest=/service/service.conf}" shape="note"];
  "sha256:79f7aa166b65ae9a9b2fdb5152ad8df5c2af8e6f9666118030db3230a8d751d6" [label="sha256:79f7aa166b65ae9a9b2fdb5152ad8df5c2af8e6f9666118030db3230a8d751d6" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" [label=""];
  "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" -> "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" [label=""];
  "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" -> "sha256:74d0c6918586d473b1bb62e51b2d16c8fc245eb6083b09d4a3cc895e3c1fcfd9" [label=""];
  "sha256:74d0c6918586d473b1bb62e51b2d16c8fc245eb6083b09d4a3cc895e3c1fcfd9" -> "sha256:a5b18c12d6a6796ab4450e9c5eff099424d68674c51860872756facb46cbe5b5" [label=""];
  "sha256:a5b18c12d6a6796ab4450e9c5eff099424d68674c51860872756facb46cbe5b5" -> "sha256:732f4387c211ec50f556553cd4ed728da0270c98907a537145f0fb47c2504ebe" [label=""];
  "sha256:732f4387c211ec50f556553cd4ed728da0270c98907a537145f0fb47c2504ebe" -> "sha256:e6b72b6193b7f34af6f464451d6615d1da2f32216decd2fd38bb884b1d765a31" [label=""];
  "sha256:e6b72b6193b7f34af6f464451d6615d1da2f32216decd2fd38bb884b1d765a31" -> "sha256:a1ef3725a85a5c00837cfeb5c0332b572541d8c9f492d1b35ed1c199a278414a" [label=""];
  "sha256:a1ef3725a85a5c00837cfeb5c0332b572541d8c9f492d1b35ed1c199a278414a" -> "sha256:0cf8e9faefa98a0e8cf6327cc1de01fe528058671b251638baa0acf361947b65" [label=""];
  "sha256:0cf8e9faefa98a0e8cf6327cc1de01fe528058671b251638baa0acf361947b65" -> "sha256:03f92f4a3f9e8a2997c278e3e3b38c4b4b8d55992a4a5dcfadfa209720199a66" [label=""];
  "sha256:8ef81ee3529c067ffdff14b04064035e5334d62a78fc2b4e421fc2a8b595a09e" -> "sha256:03f92f4a3f9e8a2997c278e3e3b38c4b4b8d55992a4a5dcfadfa209720199a66" [label=""];
  "sha256:03f92f4a3f9e8a2997c278e3e3b38c4b4b8d55992a4a5dcfadfa209720199a66" -> "sha256:c6c470b9b1e3ab487dbd49f5a1700744db17a9ed5c3810b3f11979abcbf7265a" [label=""];
  "sha256:8ef81ee3529c067ffdff14b04064035e5334d62a78fc2b4e421fc2a8b595a09e" -> "sha256:c6c470b9b1e3ab487dbd49f5a1700744db17a9ed5c3810b3f11979abcbf7265a" [label=""];
  "sha256:c6c470b9b1e3ab487dbd49f5a1700744db17a9ed5c3810b3f11979abcbf7265a" -> "sha256:75b5fd34c8f3d9cee9471a9bb491916abcecf5778d90f418e86392029e18cebd" [label=""];
  "sha256:8ef81ee3529c067ffdff14b04064035e5334d62a78fc2b4e421fc2a8b595a09e" -> "sha256:75b5fd34c8f3d9cee9471a9bb491916abcecf5778d90f418e86392029e18cebd" [label=""];
  "sha256:75b5fd34c8f3d9cee9471a9bb491916abcecf5778d90f418e86392029e18cebd" -> "sha256:07b983539aaeb79ed6caffa0e7fc129c85fa420ca13498620f4b131e4eaf7f93" [label=""];
  "sha256:07b983539aaeb79ed6caffa0e7fc129c85fa420ca13498620f4b131e4eaf7f93" -> "sha256:0ad60b3cc3910fe69f9916290e6ecacd46e2672aee37dd32fbeb1a15f9cb7537" [label=""];
  "sha256:8ef81ee3529c067ffdff14b04064035e5334d62a78fc2b4e421fc2a8b595a09e" -> "sha256:0ad60b3cc3910fe69f9916290e6ecacd46e2672aee37dd32fbeb1a15f9cb7537" [label=""];
  "sha256:0ad60b3cc3910fe69f9916290e6ecacd46e2672aee37dd32fbeb1a15f9cb7537" -> "sha256:79f7aa166b65ae9a9b2fdb5152ad8df5c2af8e6f9666118030db3230a8d751d6" [label=""];
}

