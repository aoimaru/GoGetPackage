[app/sources/436072753.Dockerfile]
digraph {
  "sha256:d7ca4d23340c652a018a8ab7b5cfa09404438e21f0f7cf270fa1226cefb53f19" [label="docker-image://docker.io/library/pulp-api:latest" shape="ellipse"];
  "sha256:28eb4ff76b13c7839bbcd5fe9f516dd35826c39159ddd39b59c416aae3f60c1f" [label="local://context" shape="ellipse"];
  "sha256:8da90eba2825667a01f2f52faad41fe4b3f3e6dc1a50443819265ae14309f0ad" [label="copy{src=/container-assets/pulp-worker, dest=/usr/bin/pulp-worker}" shape="note"];
  "sha256:e47a9a5dcca1ef44f40682d28051955dd67dd993d7a18bc04fc052203f40f340" [label="sha256:e47a9a5dcca1ef44f40682d28051955dd67dd993d7a18bc04fc052203f40f340" shape="plaintext"];
  "sha256:d7ca4d23340c652a018a8ab7b5cfa09404438e21f0f7cf270fa1226cefb53f19" -> "sha256:8da90eba2825667a01f2f52faad41fe4b3f3e6dc1a50443819265ae14309f0ad" [label=""];
  "sha256:28eb4ff76b13c7839bbcd5fe9f516dd35826c39159ddd39b59c416aae3f60c1f" -> "sha256:8da90eba2825667a01f2f52faad41fe4b3f3e6dc1a50443819265ae14309f0ad" [label=""];
  "sha256:8da90eba2825667a01f2f52faad41fe4b3f3e6dc1a50443819265ae14309f0ad" -> "sha256:e47a9a5dcca1ef44f40682d28051955dd67dd993d7a18bc04fc052203f40f340" [label=""];
}

