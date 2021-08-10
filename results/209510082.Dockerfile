[app/sources/209510082.Dockerfile]
digraph {
  "sha256:19099a6cb597148efe6f9ee87b82be96ae33b98a426aa56b514ed9f1445c1924" [label="docker-image://docker.io/library/ruby:2.1-onbuild" shape="ellipse"];
  "sha256:cc34604cc88ddc46b2ad3bcdf06b5513a1723505ec0478d082ffc5f906ceca98" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:823279c10b7b8f07383dc9bef02a2b0651f7eb5abcc4f0dd1bc8290e8c5e5a1d" [label="/bin/sh -c apt-get -y install ctags unzip" shape="box"];
  "sha256:d1e3f58cba5c51f24a98852a199c3ad3dbbce8d2ace7098ccd4da519e5215a86" [label="sha256:d1e3f58cba5c51f24a98852a199c3ad3dbbce8d2ace7098ccd4da519e5215a86" shape="plaintext"];
  "sha256:19099a6cb597148efe6f9ee87b82be96ae33b98a426aa56b514ed9f1445c1924" -> "sha256:cc34604cc88ddc46b2ad3bcdf06b5513a1723505ec0478d082ffc5f906ceca98" [label=""];
  "sha256:cc34604cc88ddc46b2ad3bcdf06b5513a1723505ec0478d082ffc5f906ceca98" -> "sha256:823279c10b7b8f07383dc9bef02a2b0651f7eb5abcc4f0dd1bc8290e8c5e5a1d" [label=""];
  "sha256:823279c10b7b8f07383dc9bef02a2b0651f7eb5abcc4f0dd1bc8290e8c5e5a1d" -> "sha256:d1e3f58cba5c51f24a98852a199c3ad3dbbce8d2ace7098ccd4da519e5215a86" [label=""];
}

