[app/sources/469337816.Dockerfile]
digraph {
  "sha256:96aea201d2aa812d05f1b67d17ae157aed6a8c2bbe155661748a60417476309d" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:796b64404ac682b5dc38f027fd7ef911faa82623e36e5b51c5f7505f9450424e" [label="/bin/sh -c apk add --update ca-certificates  && apk add --update -t deps wget  && wget https://storage.googleapis.com/kubernetes-helm/helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz  && tar -xvf helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz  && mv linux-amd64/helm /usr/local/bin  && apk del --purge deps  && rm /var/cache/apk/*  && rm -f /helm-${HELM_LATEST_VERSION}-linux-amd64.tar.gz" shape="box"];
  "sha256:2e20766f33f134c4bc1810c9193a4d5cab508c531d017aced957f41a3192c92c" [label="copy{src=/app/run, dest=/cnab/app/run}" shape="note"];
  "sha256:c7827086426901d2e332777c46202c4412e7eded80ef68bb00a6543b57940e68" [label="copy{src=/Dockerfile, dest=/cnab/Dockerfile}" shape="note"];
  "sha256:0d45a066c1e79009e5655d8e231ce781a150854460dd874af3163fd472ba87b2" [label="sha256:0d45a066c1e79009e5655d8e231ce781a150854460dd874af3163fd472ba87b2" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:796b64404ac682b5dc38f027fd7ef911faa82623e36e5b51c5f7505f9450424e" [label=""];
  "sha256:796b64404ac682b5dc38f027fd7ef911faa82623e36e5b51c5f7505f9450424e" -> "sha256:2e20766f33f134c4bc1810c9193a4d5cab508c531d017aced957f41a3192c92c" [label=""];
  "sha256:96aea201d2aa812d05f1b67d17ae157aed6a8c2bbe155661748a60417476309d" -> "sha256:2e20766f33f134c4bc1810c9193a4d5cab508c531d017aced957f41a3192c92c" [label=""];
  "sha256:2e20766f33f134c4bc1810c9193a4d5cab508c531d017aced957f41a3192c92c" -> "sha256:c7827086426901d2e332777c46202c4412e7eded80ef68bb00a6543b57940e68" [label=""];
  "sha256:96aea201d2aa812d05f1b67d17ae157aed6a8c2bbe155661748a60417476309d" -> "sha256:c7827086426901d2e332777c46202c4412e7eded80ef68bb00a6543b57940e68" [label=""];
  "sha256:c7827086426901d2e332777c46202c4412e7eded80ef68bb00a6543b57940e68" -> "sha256:0d45a066c1e79009e5655d8e231ce781a150854460dd874af3163fd472ba87b2" [label=""];
}

