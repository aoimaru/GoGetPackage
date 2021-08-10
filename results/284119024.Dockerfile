[app/sources/284119024.Dockerfile]
digraph {
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" [label="docker-image://docker.io/library/nginx:1.15" shape="ellipse"];
  "sha256:6bb675c0b2ca2f0d45a75f54532960ee4c7c11a75c91f26082d7c2449cf8ee06" [label="/bin/sh -c mkdir -p /var/www     && usermod -u 5000 www-data     && chown -R www-data:www-data /var/www" shape="box"];
  "sha256:b755fcfff7ed6cb91ae6b339c3bef236bd54de2cf98a8dcb4991129aeaafab1c" [label="local://context" shape="ellipse"];
  "sha256:b57cb03df8d2d05cfc27370d05ce6cc72396831a2d40e8c66b33f3ff019f2d5c" [label="copy{src=/nginx/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:e9feb5df0c337d60be77210675d98fa8dcee8f4ae139bc4bf8e1dcc8940bd72e" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:467fd9802993d94f9b397f6d16b91c4c8b0fd90b7aa77b176c132d196f934391" [label="sha256:467fd9802993d94f9b397f6d16b91c4c8b0fd90b7aa77b176c132d196f934391" shape="plaintext"];
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" -> "sha256:6bb675c0b2ca2f0d45a75f54532960ee4c7c11a75c91f26082d7c2449cf8ee06" [label=""];
  "sha256:6bb675c0b2ca2f0d45a75f54532960ee4c7c11a75c91f26082d7c2449cf8ee06" -> "sha256:b57cb03df8d2d05cfc27370d05ce6cc72396831a2d40e8c66b33f3ff019f2d5c" [label=""];
  "sha256:b755fcfff7ed6cb91ae6b339c3bef236bd54de2cf98a8dcb4991129aeaafab1c" -> "sha256:b57cb03df8d2d05cfc27370d05ce6cc72396831a2d40e8c66b33f3ff019f2d5c" [label=""];
  "sha256:b57cb03df8d2d05cfc27370d05ce6cc72396831a2d40e8c66b33f3ff019f2d5c" -> "sha256:e9feb5df0c337d60be77210675d98fa8dcee8f4ae139bc4bf8e1dcc8940bd72e" [label=""];
  "sha256:e9feb5df0c337d60be77210675d98fa8dcee8f4ae139bc4bf8e1dcc8940bd72e" -> "sha256:467fd9802993d94f9b397f6d16b91c4c8b0fd90b7aa77b176c132d196f934391" [label=""];
}

