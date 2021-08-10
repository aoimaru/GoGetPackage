[app/sources/252801314.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:5cdac7f49d8c8ad0b5a3aa7e45965eaea7be562cd4a8c61b2472a836ed6ace1a" [label="/bin/sh -c apk add ruby ruby-bundler ruby-dev" shape="box"];
  "sha256:7162bd568bed700769b3c6ca3bb1139644f906b820082c06042804dfc7f4ac04" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9df94ff116614f02a6c218cc9cdc935c7190dfd24b74539e7138b2865cd48f8e" [label="/bin/sh -c gem install puppet-lint --no-document" shape="box"];
  "sha256:23ddbd97c225d8dc171ea6bb18cb64627d1c612a326dd9977fef0eb721c7d469" [label="sha256:23ddbd97c225d8dc171ea6bb18cb64627d1c612a326dd9977fef0eb721c7d469" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label=""];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" -> "sha256:5cdac7f49d8c8ad0b5a3aa7e45965eaea7be562cd4a8c61b2472a836ed6ace1a" [label=""];
  "sha256:5cdac7f49d8c8ad0b5a3aa7e45965eaea7be562cd4a8c61b2472a836ed6ace1a" -> "sha256:7162bd568bed700769b3c6ca3bb1139644f906b820082c06042804dfc7f4ac04" [label=""];
  "sha256:7162bd568bed700769b3c6ca3bb1139644f906b820082c06042804dfc7f4ac04" -> "sha256:9df94ff116614f02a6c218cc9cdc935c7190dfd24b74539e7138b2865cd48f8e" [label=""];
  "sha256:9df94ff116614f02a6c218cc9cdc935c7190dfd24b74539e7138b2865cd48f8e" -> "sha256:23ddbd97c225d8dc171ea6bb18cb64627d1c612a326dd9977fef0eb721c7d469" [label=""];
}

