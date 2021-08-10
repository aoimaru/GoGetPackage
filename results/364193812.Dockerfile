[app/sources/364193812.Dockerfile]
digraph {
  "sha256:9e6b6fd2d38ed96917b7db33d99467845c4277e0c4c65fe8414dd6ad11475cb7" [label="docker-image://docker.io/webdevops/apache:centos-7@sha256:6010d69f493a0b473b89f55ceb53dfd7e6ea62211d13160150e9377e85113cd1" shape="ellipse"];
  "sha256:38ef5aa6cbd2f9e556a9fcaeb488bf7bb7612c59fa4488d8de0af412e2dc9571" [label="local://context" shape="ellipse"];
  "sha256:c70c988a81891321c98f8240dbd690b0cc2e5885ecf6c2f34b3e2fa6249623c9" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:f4eeb84a8870b31e39b45aa6a729d181599dacbdc3dcdcac23f27b9fecabb400" [label="/bin/sh -c set -x          && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:90136aa64ee21b2597e0e107e65a46bda8b87a6ea810d18b0cc40d8e4f203fdb" [label="sha256:90136aa64ee21b2597e0e107e65a46bda8b87a6ea810d18b0cc40d8e4f203fdb" shape="plaintext"];
  "sha256:9e6b6fd2d38ed96917b7db33d99467845c4277e0c4c65fe8414dd6ad11475cb7" -> "sha256:c70c988a81891321c98f8240dbd690b0cc2e5885ecf6c2f34b3e2fa6249623c9" [label=""];
  "sha256:38ef5aa6cbd2f9e556a9fcaeb488bf7bb7612c59fa4488d8de0af412e2dc9571" -> "sha256:c70c988a81891321c98f8240dbd690b0cc2e5885ecf6c2f34b3e2fa6249623c9" [label=""];
  "sha256:c70c988a81891321c98f8240dbd690b0cc2e5885ecf6c2f34b3e2fa6249623c9" -> "sha256:f4eeb84a8870b31e39b45aa6a729d181599dacbdc3dcdcac23f27b9fecabb400" [label=""];
  "sha256:f4eeb84a8870b31e39b45aa6a729d181599dacbdc3dcdcac23f27b9fecabb400" -> "sha256:90136aa64ee21b2597e0e107e65a46bda8b87a6ea810d18b0cc40d8e4f203fdb" [label=""];
}

