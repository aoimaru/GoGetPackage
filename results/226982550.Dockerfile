[app/sources/226982550.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:1bb50a7bd2bacc598b6c72eb37c1d2893e377c37e62f5404ee737d765482e856" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:c725ec3c381b14c71d94676852c1615e9eaf0f0896433229035251df48811ae5" [label="docker-image://docker.io/library/node:10.14-slim" shape="ellipse"];
  "sha256:ee4d593d72aaad971699b56c10d1ff9ee0803389b1d9cf58abf9be65eee9ee46" [label="/bin/sh -c touch /etc/apt/sources.list.d/custom.list &&     echo \"deb http://deb.debian.org/debian/ jessie main contrib non-free\" >> /etc/apt/sources.list.d/custom.list &&     echo \"deb-src http://deb.debian.org/debian/ jessie main contrib non-free\" >> /etc/apt/sources.list.d/custom.list &&     apt-get update -qq &&     apt-get install -y build-essential python git libusb-1.0-0 libusb-1.0-0-dev gcc-4.8 g++-4.8 &&     mkdir -p /usr/src/app &&     git clone -b ${BUILD_BRANCH} https://github.com/ChronoBank/ChronoMint.git /usr/src/app" shape="box"];
  "sha256:fe3545dd49845b25a3bbc0f6c690dc1f2805347554889f32efb93deaef5a8783" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:512f28a57cac290d08ce392faed3a2920f95a3127cc5ddf6ce07075c70f46150" [label="/bin/sh -c yarn" shape="box"];
  "sha256:71201ebceaa20386a51982dc14c549f42a34b8b65d2dcfc2600a20bbe9050e8f" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:d8f38d8245dc7cba9707eec9267b63ff5ae7478b8d95e2261e159259d0cdccb8" [label="copy{src=/usr/src/app, dest=/usr/src/app/}" shape="note"];
  "sha256:983134d00fac1a898135a040d68123f0b4556966cecf4dbcda854197b5867d4d" [label="sha256:983134d00fac1a898135a040d68123f0b4556966cecf4dbcda854197b5867d4d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:1bb50a7bd2bacc598b6c72eb37c1d2893e377c37e62f5404ee737d765482e856" [label=""];
  "sha256:c725ec3c381b14c71d94676852c1615e9eaf0f0896433229035251df48811ae5" -> "sha256:ee4d593d72aaad971699b56c10d1ff9ee0803389b1d9cf58abf9be65eee9ee46" [label=""];
  "sha256:ee4d593d72aaad971699b56c10d1ff9ee0803389b1d9cf58abf9be65eee9ee46" -> "sha256:fe3545dd49845b25a3bbc0f6c690dc1f2805347554889f32efb93deaef5a8783" [label=""];
  "sha256:fe3545dd49845b25a3bbc0f6c690dc1f2805347554889f32efb93deaef5a8783" -> "sha256:512f28a57cac290d08ce392faed3a2920f95a3127cc5ddf6ce07075c70f46150" [label=""];
  "sha256:512f28a57cac290d08ce392faed3a2920f95a3127cc5ddf6ce07075c70f46150" -> "sha256:71201ebceaa20386a51982dc14c549f42a34b8b65d2dcfc2600a20bbe9050e8f" [label=""];
  "sha256:1bb50a7bd2bacc598b6c72eb37c1d2893e377c37e62f5404ee737d765482e856" -> "sha256:d8f38d8245dc7cba9707eec9267b63ff5ae7478b8d95e2261e159259d0cdccb8" [label=""];
  "sha256:71201ebceaa20386a51982dc14c549f42a34b8b65d2dcfc2600a20bbe9050e8f" -> "sha256:d8f38d8245dc7cba9707eec9267b63ff5ae7478b8d95e2261e159259d0cdccb8" [label=""];
  "sha256:d8f38d8245dc7cba9707eec9267b63ff5ae7478b8d95e2261e159259d0cdccb8" -> "sha256:983134d00fac1a898135a040d68123f0b4556966cecf4dbcda854197b5867d4d" [label=""];
}

