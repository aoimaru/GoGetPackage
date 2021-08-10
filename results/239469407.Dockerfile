[app/sources/239469407.Dockerfile]
digraph {
  "sha256:4848676b1653e6a7a772a9ab32b5460139e50f650ecbce507ec3c2c53cc242a0" [label="docker-image://docker.io/google/cloud-sdk:alpine" shape="ellipse"];
  "sha256:18473badd3dcf1c6aa9534a74c62efda8946d9994179a3932b3b96414d3f60bf" [label="/bin/sh -c apk update   && apk upgrade   && apk add ca-certificates && rm -rf /var/cache/apk/*   && gcloud components install kubectl -q --no-user-output-enabled" shape="box"];
  "sha256:31fd00510ba399a99364cda986a78a1c4ed8f1aa956b69f8f732344d7234eb99" [label="local://context" shape="ellipse"];
  "sha256:54568207c40dc2b2cdeb1b186640a4af56e7c3a0d9efdd5da8d79bb03eb091cf" [label="copy{src=/mason, dest=/usr/bin/mason}" shape="note"];
  "sha256:eefcd272770947383567724b1c51d2809bc1a92f53cfeda6899c63a921f6b154" [label="/bin/sh -c chmod +x /usr/bin/mason" shape="box"];
  "sha256:4573cbf62ce9827934451550d2b530af028f70823e7d1fd900fd6fa1c037a912" [label="sha256:4573cbf62ce9827934451550d2b530af028f70823e7d1fd900fd6fa1c037a912" shape="plaintext"];
  "sha256:4848676b1653e6a7a772a9ab32b5460139e50f650ecbce507ec3c2c53cc242a0" -> "sha256:18473badd3dcf1c6aa9534a74c62efda8946d9994179a3932b3b96414d3f60bf" [label=""];
  "sha256:18473badd3dcf1c6aa9534a74c62efda8946d9994179a3932b3b96414d3f60bf" -> "sha256:54568207c40dc2b2cdeb1b186640a4af56e7c3a0d9efdd5da8d79bb03eb091cf" [label=""];
  "sha256:31fd00510ba399a99364cda986a78a1c4ed8f1aa956b69f8f732344d7234eb99" -> "sha256:54568207c40dc2b2cdeb1b186640a4af56e7c3a0d9efdd5da8d79bb03eb091cf" [label=""];
  "sha256:54568207c40dc2b2cdeb1b186640a4af56e7c3a0d9efdd5da8d79bb03eb091cf" -> "sha256:eefcd272770947383567724b1c51d2809bc1a92f53cfeda6899c63a921f6b154" [label=""];
  "sha256:eefcd272770947383567724b1c51d2809bc1a92f53cfeda6899c63a921f6b154" -> "sha256:4573cbf62ce9827934451550d2b530af028f70823e7d1fd900fd6fa1c037a912" [label=""];
}

