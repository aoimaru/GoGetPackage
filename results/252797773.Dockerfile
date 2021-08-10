[app/sources/252797773.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:eb40d1e8c37ba66bacd5b7d8da5b66691234b35d905c807a25b148141fec186c" [label="/bin/sh -c apk --update add python py-pip ansible bash ca-certificates && pip install --upgrade pip boto boto3 dnspython && update-ca-certificates 2&>1 > /dev/null" shape="box"];
  "sha256:c8b034b6f95798747881638ff71dbd238b8b7e8a16acb8731c93f71929e820f4" [label="local://context" shape="ellipse"];
  "sha256:d40929783b915cc9e2491637e89550262b19c494d9f280c43b38af487b23f3af" [label="copy{src=/ansible, dest=/ansible}" shape="note"];
  "sha256:852b0d69c994f2aeabdd0dae5048dd91162c528b6e347b1900d110f9c0592cbd" [label="copy{src=/cloudformation, dest=/cloudformation}" shape="note"];
  "sha256:3e2b8eb13fac60e36aa103ad82d4620efb17cfdda1b339352412800f88df6de8" [label="copy{src=/sh/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:fc8471b44d33fec3c09da62e069efff0bd00af92d6f72a53b82f62e193262f96" [label="sha256:fc8471b44d33fec3c09da62e069efff0bd00af92d6f72a53b82f62e193262f96" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:eb40d1e8c37ba66bacd5b7d8da5b66691234b35d905c807a25b148141fec186c" [label=""];
  "sha256:eb40d1e8c37ba66bacd5b7d8da5b66691234b35d905c807a25b148141fec186c" -> "sha256:d40929783b915cc9e2491637e89550262b19c494d9f280c43b38af487b23f3af" [label=""];
  "sha256:c8b034b6f95798747881638ff71dbd238b8b7e8a16acb8731c93f71929e820f4" -> "sha256:d40929783b915cc9e2491637e89550262b19c494d9f280c43b38af487b23f3af" [label=""];
  "sha256:d40929783b915cc9e2491637e89550262b19c494d9f280c43b38af487b23f3af" -> "sha256:852b0d69c994f2aeabdd0dae5048dd91162c528b6e347b1900d110f9c0592cbd" [label=""];
  "sha256:c8b034b6f95798747881638ff71dbd238b8b7e8a16acb8731c93f71929e820f4" -> "sha256:852b0d69c994f2aeabdd0dae5048dd91162c528b6e347b1900d110f9c0592cbd" [label=""];
  "sha256:852b0d69c994f2aeabdd0dae5048dd91162c528b6e347b1900d110f9c0592cbd" -> "sha256:3e2b8eb13fac60e36aa103ad82d4620efb17cfdda1b339352412800f88df6de8" [label=""];
  "sha256:c8b034b6f95798747881638ff71dbd238b8b7e8a16acb8731c93f71929e820f4" -> "sha256:3e2b8eb13fac60e36aa103ad82d4620efb17cfdda1b339352412800f88df6de8" [label=""];
  "sha256:3e2b8eb13fac60e36aa103ad82d4620efb17cfdda1b339352412800f88df6de8" -> "sha256:fc8471b44d33fec3c09da62e069efff0bd00af92d6f72a53b82f62e193262f96" [label=""];
}

