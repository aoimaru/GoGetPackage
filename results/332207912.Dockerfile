[app/sources/332207912.Dockerfile]
digraph {
  "sha256:d2be0c2ae074fbaa65ce7244deb5bf2f03840567596e88938cd7cc69e277a409" [label="docker-image://docker.io/library/python:3.6-alpine3.9" shape="ellipse"];
  "sha256:62179ce3fa1ad27936e5e167a35eb50540d4392eda12e5627b44cc12680f6f72" [label="mkdir{path=/m3db}" shape="note"];
  "sha256:6fde6b63b6d149488be88c38d9d330744f6fe86c8a7c348d2e61b3fa526aa582" [label="/bin/sh -c pip install mkdocs==0.17.3 mkdocs-material==2.7.3 Pygments>=2.2 pymdown-extensions>=4.11 &&     apk add --no-cache git-fast-import openssh-client" shape="box"];
  "sha256:183aaef9013b871937af93d8152ebc460d224dd2fe5d1a674fe8bddd108f973b" [label="sha256:183aaef9013b871937af93d8152ebc460d224dd2fe5d1a674fe8bddd108f973b" shape="plaintext"];
  "sha256:d2be0c2ae074fbaa65ce7244deb5bf2f03840567596e88938cd7cc69e277a409" -> "sha256:62179ce3fa1ad27936e5e167a35eb50540d4392eda12e5627b44cc12680f6f72" [label=""];
  "sha256:62179ce3fa1ad27936e5e167a35eb50540d4392eda12e5627b44cc12680f6f72" -> "sha256:6fde6b63b6d149488be88c38d9d330744f6fe86c8a7c348d2e61b3fa526aa582" [label=""];
  "sha256:6fde6b63b6d149488be88c38d9d330744f6fe86c8a7c348d2e61b3fa526aa582" -> "sha256:183aaef9013b871937af93d8152ebc460d224dd2fe5d1a674fe8bddd108f973b" [label=""];
}

