[app/sources/269800882.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4913036869735eb12015ad95ea021414e36b03cd6b059bb9b33684d52b46ac17" [label="/bin/sh -c apk update  && apk add curl  && curl -L -O https://dl.k8s.io/${KUBECTL_VERSION}/kubernetes-client-linux-amd64.tar.gz  && tar zvxf kubernetes-client-linux-amd64.tar.gz kubernetes/client/bin/kubectl  && mv kubernetes/client/bin/kubectl /  && apk del curl  && rm -rf kubernetes  && rm -f kubernetes-client-linux-amd64.tar.gz  && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:53a9dd570bfea9ca3b577f542585cb9652ea181a12004d4c82bd068b7baab483" [label="sha256:53a9dd570bfea9ca3b577f542585cb9652ea181a12004d4c82bd068b7baab483" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4913036869735eb12015ad95ea021414e36b03cd6b059bb9b33684d52b46ac17" [label=""];
  "sha256:4913036869735eb12015ad95ea021414e36b03cd6b059bb9b33684d52b46ac17" -> "sha256:53a9dd570bfea9ca3b577f542585cb9652ea181a12004d4c82bd068b7baab483" [label=""];
}

