[app/sources/281790158.Dockerfile]
digraph {
  "sha256:de044f3f126ef4f86dfabf3f49ebcbdc5ac1530539d8141cba5365dd9d483615" [label="docker-image://docker.io/library/nginx:1.7@sha256:02537b932a849103ab21c75fac25c0de622ca12fe2c5ba8af2c7cb23339ee6d4" shape="ellipse"];
  "sha256:dcfd1ad6ff02d2cc89bc4edb56e816841250f3ca9f42f1b4f8b2d28bd3cacadc" [label="local://context" shape="ellipse"];
  "sha256:e4d1b643a139b8e1ca57ae3a9502bf1da908f2ddf70476e2b644922b63144118" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:2c984f5f52e6bb2f4432aaadd09eede612e1cced7aa114446e24f2f1784a1845" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:087addff3ecd9e71c0bca70c35ed6d7c6d9c285b07d191c7bfd836d236fe1a04" [label="copy{src=/docker-registry.conf, dest=/etc/nginx/docker-registry.conf}" shape="note"];
  "sha256:746038944b40cfd8a0ec2eaf0875a98f6a5914a7b1582c36ddfa4340bd1ac30f" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:1fe97798974c106f98890ec042e782f08d5b19f486340d9f61bce8a6a9484b64" [label="sha256:1fe97798974c106f98890ec042e782f08d5b19f486340d9f61bce8a6a9484b64" shape="plaintext"];
  "sha256:de044f3f126ef4f86dfabf3f49ebcbdc5ac1530539d8141cba5365dd9d483615" -> "sha256:e4d1b643a139b8e1ca57ae3a9502bf1da908f2ddf70476e2b644922b63144118" [label=""];
  "sha256:dcfd1ad6ff02d2cc89bc4edb56e816841250f3ca9f42f1b4f8b2d28bd3cacadc" -> "sha256:e4d1b643a139b8e1ca57ae3a9502bf1da908f2ddf70476e2b644922b63144118" [label=""];
  "sha256:e4d1b643a139b8e1ca57ae3a9502bf1da908f2ddf70476e2b644922b63144118" -> "sha256:2c984f5f52e6bb2f4432aaadd09eede612e1cced7aa114446e24f2f1784a1845" [label=""];
  "sha256:dcfd1ad6ff02d2cc89bc4edb56e816841250f3ca9f42f1b4f8b2d28bd3cacadc" -> "sha256:2c984f5f52e6bb2f4432aaadd09eede612e1cced7aa114446e24f2f1784a1845" [label=""];
  "sha256:2c984f5f52e6bb2f4432aaadd09eede612e1cced7aa114446e24f2f1784a1845" -> "sha256:087addff3ecd9e71c0bca70c35ed6d7c6d9c285b07d191c7bfd836d236fe1a04" [label=""];
  "sha256:dcfd1ad6ff02d2cc89bc4edb56e816841250f3ca9f42f1b4f8b2d28bd3cacadc" -> "sha256:087addff3ecd9e71c0bca70c35ed6d7c6d9c285b07d191c7bfd836d236fe1a04" [label=""];
  "sha256:087addff3ecd9e71c0bca70c35ed6d7c6d9c285b07d191c7bfd836d236fe1a04" -> "sha256:746038944b40cfd8a0ec2eaf0875a98f6a5914a7b1582c36ddfa4340bd1ac30f" [label=""];
  "sha256:dcfd1ad6ff02d2cc89bc4edb56e816841250f3ca9f42f1b4f8b2d28bd3cacadc" -> "sha256:746038944b40cfd8a0ec2eaf0875a98f6a5914a7b1582c36ddfa4340bd1ac30f" [label=""];
  "sha256:746038944b40cfd8a0ec2eaf0875a98f6a5914a7b1582c36ddfa4340bd1ac30f" -> "sha256:1fe97798974c106f98890ec042e782f08d5b19f486340d9f61bce8a6a9484b64" [label=""];
}

