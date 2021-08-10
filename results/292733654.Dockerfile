[app/sources/292733654.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:6d35e386176d87a5040dea2d9cc2b3bc8973bc789901e6c01eb7ed27059b5fae" [label="local://context" shape="ellipse"];
  "sha256:82cf2cf47ffd2bc7ef8ef18c1414e3177a2108e459df0a028f04ff616c669867" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:f9965afbed4ed1ba372dbb99c0476d1c662699ec4001d654f268ffb27ad16c35" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:fb08d90ba93020daf8e900f148fcdb335bf0fae5599c13b5713c7e66b7c7bf4a" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:604c843817c8de002aafcff27508294eb72bfb09b19eb9e86e218d7cf9ef06bd" [label="sha256:604c843817c8de002aafcff27508294eb72bfb09b19eb9e86e218d7cf9ef06bd" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:82cf2cf47ffd2bc7ef8ef18c1414e3177a2108e459df0a028f04ff616c669867" [label=""];
  "sha256:6d35e386176d87a5040dea2d9cc2b3bc8973bc789901e6c01eb7ed27059b5fae" -> "sha256:82cf2cf47ffd2bc7ef8ef18c1414e3177a2108e459df0a028f04ff616c669867" [label=""];
  "sha256:82cf2cf47ffd2bc7ef8ef18c1414e3177a2108e459df0a028f04ff616c669867" -> "sha256:f9965afbed4ed1ba372dbb99c0476d1c662699ec4001d654f268ffb27ad16c35" [label=""];
  "sha256:f9965afbed4ed1ba372dbb99c0476d1c662699ec4001d654f268ffb27ad16c35" -> "sha256:fb08d90ba93020daf8e900f148fcdb335bf0fae5599c13b5713c7e66b7c7bf4a" [label=""];
  "sha256:fb08d90ba93020daf8e900f148fcdb335bf0fae5599c13b5713c7e66b7c7bf4a" -> "sha256:604c843817c8de002aafcff27508294eb72bfb09b19eb9e86e218d7cf9ef06bd" [label=""];
}

