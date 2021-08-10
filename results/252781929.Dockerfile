[app/sources/252781929.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:966840a3569f6101e205eb95ade39376e9803c3a04b3eb0394419b6582279548" [label="local://context" shape="ellipse"];
  "sha256:4db19efbce0cdad06c2161b9e61a70c7d235f532a1aa364faf92e9727cd0a9cb" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:292675bd60d4d1d285fcfe08da54e2f7a9e137a2cdd10dd5a584c9a54d0260a2" [label="mkdir{path=/app}" shape="note"];
  "sha256:18b9392775e56a123a09e530a53cab9816f7bafd0b59e1ae8d6cc14f27398f72" [label="/bin/sh -c apk add --no-cache --virtual persistent python3 nss && pip3 install -r requirements.txt" shape="box"];
  "sha256:19bea67b33b820281283bb8ae6f93a1a739d39cda423d8b34da1e170d74da34c" [label="sha256:19bea67b33b820281283bb8ae6f93a1a739d39cda423d8b34da1e170d74da34c" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:4db19efbce0cdad06c2161b9e61a70c7d235f532a1aa364faf92e9727cd0a9cb" [label=""];
  "sha256:966840a3569f6101e205eb95ade39376e9803c3a04b3eb0394419b6582279548" -> "sha256:4db19efbce0cdad06c2161b9e61a70c7d235f532a1aa364faf92e9727cd0a9cb" [label=""];
  "sha256:4db19efbce0cdad06c2161b9e61a70c7d235f532a1aa364faf92e9727cd0a9cb" -> "sha256:292675bd60d4d1d285fcfe08da54e2f7a9e137a2cdd10dd5a584c9a54d0260a2" [label=""];
  "sha256:292675bd60d4d1d285fcfe08da54e2f7a9e137a2cdd10dd5a584c9a54d0260a2" -> "sha256:18b9392775e56a123a09e530a53cab9816f7bafd0b59e1ae8d6cc14f27398f72" [label=""];
  "sha256:18b9392775e56a123a09e530a53cab9816f7bafd0b59e1ae8d6cc14f27398f72" -> "sha256:19bea67b33b820281283bb8ae6f93a1a739d39cda423d8b34da1e170d74da34c" [label=""];
}

