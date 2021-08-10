[app/sources/454687230.Dockerfile]
digraph {
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" [label="docker-image://docker.io/library/nginx:1.13-alpine" shape="ellipse"];
  "sha256:4ab62b79e218cbcee1809704956ad7b928db909f984d61c894557f335b7e9508" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:1a35ec11662e3b54024713198000d8fd0ba97c99876c146648577b5fcaa0a73d" [label="local://context" shape="ellipse"];
  "sha256:eed2a6b745028b30e934db0e63f108d81aad5bd288ce168298f3b1291a56e780" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4a710fe327a665e53a65d279225f41238686d952199b1878fe8395b7aeca09d2" [label="copy{src=/minds.conf, dest=/etc/nginx/conf.d/minds.conf}" shape="note"];
  "sha256:da66abdbcc3568d094ca2bd33c1a98172897d0b06c253e0a5ca1fa58c7bf02c2" [label="sha256:da66abdbcc3568d094ca2bd33c1a98172897d0b06c253e0a5ca1fa58c7bf02c2" shape="plaintext"];
  "sha256:cd6821d47eaac0121761f94c6e88cea89a65715ef8eea6d36d9c624cdb168d1f" -> "sha256:4ab62b79e218cbcee1809704956ad7b928db909f984d61c894557f335b7e9508" [label=""];
  "sha256:4ab62b79e218cbcee1809704956ad7b928db909f984d61c894557f335b7e9508" -> "sha256:eed2a6b745028b30e934db0e63f108d81aad5bd288ce168298f3b1291a56e780" [label=""];
  "sha256:1a35ec11662e3b54024713198000d8fd0ba97c99876c146648577b5fcaa0a73d" -> "sha256:eed2a6b745028b30e934db0e63f108d81aad5bd288ce168298f3b1291a56e780" [label=""];
  "sha256:eed2a6b745028b30e934db0e63f108d81aad5bd288ce168298f3b1291a56e780" -> "sha256:4a710fe327a665e53a65d279225f41238686d952199b1878fe8395b7aeca09d2" [label=""];
  "sha256:1a35ec11662e3b54024713198000d8fd0ba97c99876c146648577b5fcaa0a73d" -> "sha256:4a710fe327a665e53a65d279225f41238686d952199b1878fe8395b7aeca09d2" [label=""];
  "sha256:4a710fe327a665e53a65d279225f41238686d952199b1878fe8395b7aeca09d2" -> "sha256:da66abdbcc3568d094ca2bd33c1a98172897d0b06c253e0a5ca1fa58c7bf02c2" [label=""];
}

