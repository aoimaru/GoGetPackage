[app/sources/249603327.Dockerfile]
digraph {
  "sha256:6bc512ee72a678c7e82e78a3535d6d9cb9abfec120c0787e7d8b991b7e4f1c82" [label="docker-image://docker.io/library/python:2.7.14-stretch" shape="ellipse"];
  "sha256:337f2836cc7b4140615bce25ae5aa79a01e29e3cdcbd0b036b08393f78703776" [label="local://context" shape="ellipse"];
  "sha256:e503cfe0ff297314d0c76d1286fbd378832f3b5513b1480241281118efddd6a3" [label="copy{src=/, dest=/root/}" shape="note"];
  "sha256:24c0f315f98e5a4f6a3565a8ce21d228b1f537b981a1741401aa7f623014989a" [label="mkdir{path=/root}" shape="note"];
  "sha256:ce1f5f611a94b9f574660b4f9edeabd70cd5792bbd9045aeb6ef499704cff511" [label="/bin/sh -c pip install -r /root/requirements.txt" shape="box"];
  "sha256:952f9c9e0372c533cd068b91e251b63aa9b32a48e68fefbf3e095ba1a0a7479b" [label="sha256:952f9c9e0372c533cd068b91e251b63aa9b32a48e68fefbf3e095ba1a0a7479b" shape="plaintext"];
  "sha256:6bc512ee72a678c7e82e78a3535d6d9cb9abfec120c0787e7d8b991b7e4f1c82" -> "sha256:e503cfe0ff297314d0c76d1286fbd378832f3b5513b1480241281118efddd6a3" [label=""];
  "sha256:337f2836cc7b4140615bce25ae5aa79a01e29e3cdcbd0b036b08393f78703776" -> "sha256:e503cfe0ff297314d0c76d1286fbd378832f3b5513b1480241281118efddd6a3" [label=""];
  "sha256:e503cfe0ff297314d0c76d1286fbd378832f3b5513b1480241281118efddd6a3" -> "sha256:24c0f315f98e5a4f6a3565a8ce21d228b1f537b981a1741401aa7f623014989a" [label=""];
  "sha256:24c0f315f98e5a4f6a3565a8ce21d228b1f537b981a1741401aa7f623014989a" -> "sha256:ce1f5f611a94b9f574660b4f9edeabd70cd5792bbd9045aeb6ef499704cff511" [label=""];
  "sha256:ce1f5f611a94b9f574660b4f9edeabd70cd5792bbd9045aeb6ef499704cff511" -> "sha256:952f9c9e0372c533cd068b91e251b63aa9b32a48e68fefbf3e095ba1a0a7479b" [label=""];
}

