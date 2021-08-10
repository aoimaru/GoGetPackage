[app/sources/302813498.Dockerfile]
digraph {
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" [label="docker-image://docker.io/library/fedora:28" shape="ellipse"];
  "sha256:067b77afc4b31be5dd07c5b6d8875e6c4d8b748a58515fc09030bad51cfa3d0a" [label="/bin/sh -c dnf -y update && dnf -y install nginx && dnf clean all -y" shape="box"];
  "sha256:4a836999f9871d6697e8b118613afd848d6b859e00f9611e4039124dd22e05a3" [label="/bin/sh -c mkdir -p $IMAGE_DIR/priv" shape="box"];
  "sha256:bc1b37f2b867021a6b779159efa5ea6fa5797f9aacf03f9bfbda5ff5e36580e3" [label="/bin/sh -c mkdir -p $IMAGE_DIR" shape="box"];
  "sha256:410ea244b4d5fa9c48f2d2fea8fa2c9d2158a3a0be593b7752bdcb4ff407eaba" [label="/bin/sh -c rm -f /etc/nginx/nginx.conf" shape="box"];
  "sha256:d528a05439569342b08cbe050eb8afd3e19c584416b9fcd42d03fcce799b7ae6" [label="local://context" shape="ellipse"];
  "sha256:d4daa4bed8d5f07333d7363504f7f14d15bfcf90abed57b9546ef12984a13a26" [label="copy{src=/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:90532581f1f83e7fffae6e29281016411a7704c7a1c65b3f827f438ab18ec1e4" [label="copy{src=/htpasswd, dest=/etc/nginx/}" shape="note"];
  "sha256:467f5233fd2e92e197ec99c623b42fc54fb302acf9e0f9553da2ffb78cc7e94c" [label="sha256:467f5233fd2e92e197ec99c623b42fc54fb302acf9e0f9553da2ffb78cc7e94c" shape="plaintext"];
  "sha256:4717eb240fd757944b48f36740d44b96bd2a8a81ca250e6bcf631f8700988a83" -> "sha256:067b77afc4b31be5dd07c5b6d8875e6c4d8b748a58515fc09030bad51cfa3d0a" [label=""];
  "sha256:067b77afc4b31be5dd07c5b6d8875e6c4d8b748a58515fc09030bad51cfa3d0a" -> "sha256:4a836999f9871d6697e8b118613afd848d6b859e00f9611e4039124dd22e05a3" [label=""];
  "sha256:4a836999f9871d6697e8b118613afd848d6b859e00f9611e4039124dd22e05a3" -> "sha256:bc1b37f2b867021a6b779159efa5ea6fa5797f9aacf03f9bfbda5ff5e36580e3" [label=""];
  "sha256:bc1b37f2b867021a6b779159efa5ea6fa5797f9aacf03f9bfbda5ff5e36580e3" -> "sha256:410ea244b4d5fa9c48f2d2fea8fa2c9d2158a3a0be593b7752bdcb4ff407eaba" [label=""];
  "sha256:410ea244b4d5fa9c48f2d2fea8fa2c9d2158a3a0be593b7752bdcb4ff407eaba" -> "sha256:d4daa4bed8d5f07333d7363504f7f14d15bfcf90abed57b9546ef12984a13a26" [label=""];
  "sha256:d528a05439569342b08cbe050eb8afd3e19c584416b9fcd42d03fcce799b7ae6" -> "sha256:d4daa4bed8d5f07333d7363504f7f14d15bfcf90abed57b9546ef12984a13a26" [label=""];
  "sha256:d4daa4bed8d5f07333d7363504f7f14d15bfcf90abed57b9546ef12984a13a26" -> "sha256:90532581f1f83e7fffae6e29281016411a7704c7a1c65b3f827f438ab18ec1e4" [label=""];
  "sha256:d528a05439569342b08cbe050eb8afd3e19c584416b9fcd42d03fcce799b7ae6" -> "sha256:90532581f1f83e7fffae6e29281016411a7704c7a1c65b3f827f438ab18ec1e4" [label=""];
  "sha256:90532581f1f83e7fffae6e29281016411a7704c7a1c65b3f827f438ab18ec1e4" -> "sha256:467f5233fd2e92e197ec99c623b42fc54fb302acf9e0f9553da2ffb78cc7e94c" [label=""];
}

