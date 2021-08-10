[app/sources/326468772.Dockerfile]
digraph {
  "sha256:06427250650ca20e6f85fa5c3fc59c72dbc5a1da7d907ffefc5e6ba0964e7b0e" [label="docker-image://oejenkinscidockerregistry.azurecr.io/oetools-full-18.04:latest" shape="ellipse"];
  "sha256:36dc46d6da19c182e1ddbf17d5e9821dfba497bfc3568435e663177600edea1d" [label="/bin/sh -c apt-get purge az-dcap-client -y &&     apt-get update &&     apt-get install sudo libcurl4-openssl-dev wget -y &&     echo \"${UNAME} ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers" shape="box"];
  "sha256:c8c8fa8c7f13b830d22b0154b67335ac6963bb66f4f41c071ffc61848fcbe99e" [label="sha256:c8c8fa8c7f13b830d22b0154b67335ac6963bb66f4f41c071ffc61848fcbe99e" shape="plaintext"];
  "sha256:06427250650ca20e6f85fa5c3fc59c72dbc5a1da7d907ffefc5e6ba0964e7b0e" -> "sha256:36dc46d6da19c182e1ddbf17d5e9821dfba497bfc3568435e663177600edea1d" [label=""];
  "sha256:36dc46d6da19c182e1ddbf17d5e9821dfba497bfc3568435e663177600edea1d" -> "sha256:c8c8fa8c7f13b830d22b0154b67335ac6963bb66f4f41c071ffc61848fcbe99e" [label=""];
}

