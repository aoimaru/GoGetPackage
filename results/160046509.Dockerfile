[app/sources/160046509.Dockerfile]
digraph {
  "sha256:c7bc18500c27789401d4bb6dfb2950cf275c25475af4b4144f1f89e8b2af98f8" [label="docker-image://docker.io/aarch64/alpine:edge" shape="ellipse"];
  "sha256:971c2850d7adbca853a1e56894c859ff4e51dcc3c1e7abe980cab46416b85c63" [label="local://context" shape="ellipse"];
  "sha256:33a180629a5684bd09aa86d4d25fc84599bc1c611421aae74904646225558f9f" [label="copy{src=/.qemu/qemu-aarch64-static, dest=/usr/bin/qemu-aarch64-static}" shape="note"];
  "sha256:591f0f894f09e64b020f432deb39c13f8d22835e97282d7bfe8a09f52cdaf667" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:32ebcc2d5091996a5a0aa2cf911c40b37ca0beab480da83c9bb81be4e2e1aa90" [label="mkdir{path=/app}" shape="note"];
  "sha256:24344008146ab31ee4cad3ede22a199eb9262a99e09d844eb5eb078d3cdf4ed8" [label="/bin/sh -c apk add --update nodejs nodejs-npm nodejs-dev build-base python     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:a24d35d82526d033caada65f4cabc36a162b14b26daa8669ef358faa0676372c" [label="/bin/sh -c npm config set unsafe-perm true" shape="box"];
  "sha256:cb391abe71a44d7863bff340fcf5974bbb67f47661be40a975995dca77b0652c" [label="/bin/sh -c npm install -g --unsafe-perm node-gyp" shape="box"];
  "sha256:098cf797c73462b39b17e58011852bda78b78f502a51cd9bccd16b8273a935eb" [label="/bin/sh -c npm install -g --unsafe-perm autobahn@${AUTOBAHN_JS_VERSION}" shape="box"];
  "sha256:93c55db7f95093c37798dc0b0121297625e2f9dab8ca6783c0db8e8ebf26aa87" [label="copy{src=/app/*, dest=/app/}" shape="note"];
  "sha256:b553bd0bede62aa8d22aadfdb60268003d420b2784835cb6166d925b1afe6670" [label="sha256:b553bd0bede62aa8d22aadfdb60268003d420b2784835cb6166d925b1afe6670" shape="plaintext"];
  "sha256:c7bc18500c27789401d4bb6dfb2950cf275c25475af4b4144f1f89e8b2af98f8" -> "sha256:33a180629a5684bd09aa86d4d25fc84599bc1c611421aae74904646225558f9f" [label=""];
  "sha256:971c2850d7adbca853a1e56894c859ff4e51dcc3c1e7abe980cab46416b85c63" -> "sha256:33a180629a5684bd09aa86d4d25fc84599bc1c611421aae74904646225558f9f" [label=""];
  "sha256:33a180629a5684bd09aa86d4d25fc84599bc1c611421aae74904646225558f9f" -> "sha256:591f0f894f09e64b020f432deb39c13f8d22835e97282d7bfe8a09f52cdaf667" [label=""];
  "sha256:591f0f894f09e64b020f432deb39c13f8d22835e97282d7bfe8a09f52cdaf667" -> "sha256:32ebcc2d5091996a5a0aa2cf911c40b37ca0beab480da83c9bb81be4e2e1aa90" [label=""];
  "sha256:32ebcc2d5091996a5a0aa2cf911c40b37ca0beab480da83c9bb81be4e2e1aa90" -> "sha256:24344008146ab31ee4cad3ede22a199eb9262a99e09d844eb5eb078d3cdf4ed8" [label=""];
  "sha256:24344008146ab31ee4cad3ede22a199eb9262a99e09d844eb5eb078d3cdf4ed8" -> "sha256:a24d35d82526d033caada65f4cabc36a162b14b26daa8669ef358faa0676372c" [label=""];
  "sha256:a24d35d82526d033caada65f4cabc36a162b14b26daa8669ef358faa0676372c" -> "sha256:cb391abe71a44d7863bff340fcf5974bbb67f47661be40a975995dca77b0652c" [label=""];
  "sha256:cb391abe71a44d7863bff340fcf5974bbb67f47661be40a975995dca77b0652c" -> "sha256:098cf797c73462b39b17e58011852bda78b78f502a51cd9bccd16b8273a935eb" [label=""];
  "sha256:098cf797c73462b39b17e58011852bda78b78f502a51cd9bccd16b8273a935eb" -> "sha256:93c55db7f95093c37798dc0b0121297625e2f9dab8ca6783c0db8e8ebf26aa87" [label=""];
  "sha256:971c2850d7adbca853a1e56894c859ff4e51dcc3c1e7abe980cab46416b85c63" -> "sha256:93c55db7f95093c37798dc0b0121297625e2f9dab8ca6783c0db8e8ebf26aa87" [label=""];
  "sha256:93c55db7f95093c37798dc0b0121297625e2f9dab8ca6783c0db8e8ebf26aa87" -> "sha256:b553bd0bede62aa8d22aadfdb60268003d420b2784835cb6166d925b1afe6670" [label=""];
}

