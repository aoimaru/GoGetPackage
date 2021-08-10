[app/sources/282749223.Dockerfile]
digraph {
  "sha256:b237aa5decc906e2171f8558e912392e688feb6d8c28b692c552dff765f6b1c1" [label="docker-image://gcr.io/cloud-builders/gcloud@sha256:181ef056c8bf8185771b435ab85fe35daddf92053b3783b4347c81aec274a7a0" shape="ellipse"];
  "sha256:36de8bca4612216cf9de95f233dd50798c74fe2b57bb2cb78a70358d14e999fc" [label="/bin/sh -c touch $HOME/.bigqueryrc" shape="box"];
  "sha256:d21db0f42e53ab9555b2ac5a670cf47d5d90471fe23ef6286afa92139d6052e5" [label="sha256:d21db0f42e53ab9555b2ac5a670cf47d5d90471fe23ef6286afa92139d6052e5" shape="plaintext"];
  "sha256:b237aa5decc906e2171f8558e912392e688feb6d8c28b692c552dff765f6b1c1" -> "sha256:36de8bca4612216cf9de95f233dd50798c74fe2b57bb2cb78a70358d14e999fc" [label=""];
  "sha256:36de8bca4612216cf9de95f233dd50798c74fe2b57bb2cb78a70358d14e999fc" -> "sha256:d21db0f42e53ab9555b2ac5a670cf47d5d90471fe23ef6286afa92139d6052e5" [label=""];
}

