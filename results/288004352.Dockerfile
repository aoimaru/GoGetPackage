[app/sources/288004352.Dockerfile]
digraph {
  "sha256:4848676b1653e6a7a772a9ab32b5460139e50f650ecbce507ec3c2c53cc242a0" [label="docker-image://docker.io/google/cloud-sdk:alpine" shape="ellipse"];
  "sha256:9a80f0149b0c783b1c1b78deeb2f2997164d461a23efa0258ba69d1a6dd06927" [label="/bin/sh -c apk add --update jq openssl" shape="box"];
  "sha256:5b290e9f82979a204bc79545decaa50d24c9985b50ee84dfd3722c1afe27b3f8" [label="/bin/sh -c curl https://storage.googleapis.com/kubernetes-release/release/v1.11.0/bin/linux/amd64/kubectl > /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl" shape="box"];
  "sha256:cf61f3fc1fb7efd79db04a5db2ad8dfd82944d0e27ad22e86a3ce23c941f4fb3" [label="sha256:cf61f3fc1fb7efd79db04a5db2ad8dfd82944d0e27ad22e86a3ce23c941f4fb3" shape="plaintext"];
  "sha256:4848676b1653e6a7a772a9ab32b5460139e50f650ecbce507ec3c2c53cc242a0" -> "sha256:9a80f0149b0c783b1c1b78deeb2f2997164d461a23efa0258ba69d1a6dd06927" [label=""];
  "sha256:9a80f0149b0c783b1c1b78deeb2f2997164d461a23efa0258ba69d1a6dd06927" -> "sha256:5b290e9f82979a204bc79545decaa50d24c9985b50ee84dfd3722c1afe27b3f8" [label=""];
  "sha256:5b290e9f82979a204bc79545decaa50d24c9985b50ee84dfd3722c1afe27b3f8" -> "sha256:cf61f3fc1fb7efd79db04a5db2ad8dfd82944d0e27ad22e86a3ce23c941f4fb3" [label=""];
}

