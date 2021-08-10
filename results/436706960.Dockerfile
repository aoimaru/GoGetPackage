[app/sources/436706960.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:30312b8ab79fecfa9cde729b9d8321510d34aec62ca41fceac0be14740a7b1e8" [label="local://context" shape="ellipse"];
  "sha256:0e1ae1aaa67f96a5cd313013aed16dd2f199c05a9c3efd325e3c9e74a2b824c3" [label="copy{src=/run-nginx, dest=/usr/bin}" shape="note"];
  "sha256:daad59cfaf32ea03a314619474f3daacc16c158b34db6b5ff0894fc3c547a026" [label="/bin/sh -c chmod +x /usr/bin/run-nginx" shape="box"];
  "sha256:437d1a6a36fa68ec479dda284b2279c0d6e3d323199cfd756d4d94e43b6365c4" [label="/bin/sh -c mkdir /usr/share/nginx/html/.well-known" shape="box"];
  "sha256:c37565b41ae73af538969ece38e1cfa8f265969a0f049891cbd20d4f5e5bd840" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:bc394a6d9a2921356b9b7d3c6cb76d24a2656cb5fcf31704427edc8a0b411c7a" [label="copy{src=/build/html/build, dest=/usr/share/nginx/html/build}" shape="note"];
  "sha256:d8fad25fa2d94cc1041cde1cc82f033210ba0b176887cf8b8f3c444d65b4b5dc" [label="copy{src=/build/html/build/dist/src, dest=/usr/share/nginx/html/src}" shape="note"];
  "sha256:8cbe92897dfd28aec35628f763432e832e9c6d7e79a039fb3fca964c231492f6" [label="copy{src=/build/html/build/dist/production.html, dest=/usr/share/nginx/html/index.html}" shape="note"];
  "sha256:bd050ccb7eb361171340bb69fb96b819e2a4e5df96067a3341f8036915030438" [label="sha256:bd050ccb7eb361171340bb69fb96b819e2a4e5df96067a3341f8036915030438" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" [label=""];
  "sha256:67fa46f482aac0d1fc08f5a86e6dda1a0032f3ba2f54e75c59e244cb7ef229d8" -> "sha256:0e1ae1aaa67f96a5cd313013aed16dd2f199c05a9c3efd325e3c9e74a2b824c3" [label=""];
  "sha256:30312b8ab79fecfa9cde729b9d8321510d34aec62ca41fceac0be14740a7b1e8" -> "sha256:0e1ae1aaa67f96a5cd313013aed16dd2f199c05a9c3efd325e3c9e74a2b824c3" [label=""];
  "sha256:0e1ae1aaa67f96a5cd313013aed16dd2f199c05a9c3efd325e3c9e74a2b824c3" -> "sha256:daad59cfaf32ea03a314619474f3daacc16c158b34db6b5ff0894fc3c547a026" [label=""];
  "sha256:daad59cfaf32ea03a314619474f3daacc16c158b34db6b5ff0894fc3c547a026" -> "sha256:437d1a6a36fa68ec479dda284b2279c0d6e3d323199cfd756d4d94e43b6365c4" [label=""];
  "sha256:437d1a6a36fa68ec479dda284b2279c0d6e3d323199cfd756d4d94e43b6365c4" -> "sha256:c37565b41ae73af538969ece38e1cfa8f265969a0f049891cbd20d4f5e5bd840" [label=""];
  "sha256:30312b8ab79fecfa9cde729b9d8321510d34aec62ca41fceac0be14740a7b1e8" -> "sha256:c37565b41ae73af538969ece38e1cfa8f265969a0f049891cbd20d4f5e5bd840" [label=""];
  "sha256:c37565b41ae73af538969ece38e1cfa8f265969a0f049891cbd20d4f5e5bd840" -> "sha256:bc394a6d9a2921356b9b7d3c6cb76d24a2656cb5fcf31704427edc8a0b411c7a" [label=""];
  "sha256:30312b8ab79fecfa9cde729b9d8321510d34aec62ca41fceac0be14740a7b1e8" -> "sha256:bc394a6d9a2921356b9b7d3c6cb76d24a2656cb5fcf31704427edc8a0b411c7a" [label=""];
  "sha256:bc394a6d9a2921356b9b7d3c6cb76d24a2656cb5fcf31704427edc8a0b411c7a" -> "sha256:d8fad25fa2d94cc1041cde1cc82f033210ba0b176887cf8b8f3c444d65b4b5dc" [label=""];
  "sha256:30312b8ab79fecfa9cde729b9d8321510d34aec62ca41fceac0be14740a7b1e8" -> "sha256:d8fad25fa2d94cc1041cde1cc82f033210ba0b176887cf8b8f3c444d65b4b5dc" [label=""];
  "sha256:d8fad25fa2d94cc1041cde1cc82f033210ba0b176887cf8b8f3c444d65b4b5dc" -> "sha256:8cbe92897dfd28aec35628f763432e832e9c6d7e79a039fb3fca964c231492f6" [label=""];
  "sha256:30312b8ab79fecfa9cde729b9d8321510d34aec62ca41fceac0be14740a7b1e8" -> "sha256:8cbe92897dfd28aec35628f763432e832e9c6d7e79a039fb3fca964c231492f6" [label=""];
  "sha256:8cbe92897dfd28aec35628f763432e832e9c6d7e79a039fb3fca964c231492f6" -> "sha256:bd050ccb7eb361171340bb69fb96b819e2a4e5df96067a3341f8036915030438" [label=""];
}

