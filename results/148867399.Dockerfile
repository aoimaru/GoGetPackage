[app/sources/148867399.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:048d186c1b8b3351549c6536936a81a655d6da0112750104ee1ef7a977563193" [label="/bin/sh -c rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm" shape="box"];
  "sha256:dd03d64852f6c55ba6fded91d8a877ab4e5f677281a089b31044dbdfbfdb9fc6" [label="/bin/sh -c yum install -y nginx" shape="box"];
  "sha256:8cf72755be9078bc462324008cf862729cb34acca3919ad790615d89a202b7fa" [label="sha256:8cf72755be9078bc462324008cf862729cb34acca3919ad790615d89a202b7fa" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:048d186c1b8b3351549c6536936a81a655d6da0112750104ee1ef7a977563193" [label=""];
  "sha256:048d186c1b8b3351549c6536936a81a655d6da0112750104ee1ef7a977563193" -> "sha256:dd03d64852f6c55ba6fded91d8a877ab4e5f677281a089b31044dbdfbfdb9fc6" [label=""];
  "sha256:dd03d64852f6c55ba6fded91d8a877ab4e5f677281a089b31044dbdfbfdb9fc6" -> "sha256:8cf72755be9078bc462324008cf862729cb34acca3919ad790615d89a202b7fa" [label=""];
}

