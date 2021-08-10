[app/sources/322954955.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:00e067e3a49ce8b673152d1f9b7ae946436fc015c29e172ce56557417063f59c" [label="/bin/sh -c apt-get update && apt-get install -y stress" shape="box"];
  "sha256:f0f1ede7c96fe0fea71fe761cfe3a23ea07ddf3490c3020ced9a1e88b8bc0819" [label="sha256:f0f1ede7c96fe0fea71fe761cfe3a23ea07ddf3490c3020ced9a1e88b8bc0819" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:00e067e3a49ce8b673152d1f9b7ae946436fc015c29e172ce56557417063f59c" [label=""];
  "sha256:00e067e3a49ce8b673152d1f9b7ae946436fc015c29e172ce56557417063f59c" -> "sha256:f0f1ede7c96fe0fea71fe761cfe3a23ea07ddf3490c3020ced9a1e88b8bc0819" [label=""];
}

