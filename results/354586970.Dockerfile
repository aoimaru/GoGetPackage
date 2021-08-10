[app/sources/354586970.Dockerfile]
digraph {
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" [label="docker-image://docker.io/library/php:latest" shape="ellipse"];
  "sha256:ec9b9e9f92f989d6b2459731f93b45c95a083542c957fda26ccd026a4502e01b" [label="/bin/sh -c apt-get update && apt-get install -y curl" shape="box"];
  "sha256:93cf24e2d69901bcbecc49f3b961d16c936c88990ddfda03354aae74703e4a68" [label="/bin/sh -c curl -sL https://github.com/ptrofimov/beanstalk_console/archive/master.tar.gz | tar xvz -C /tmp" shape="box"];
  "sha256:5a975f136d4e7ffae7c49d46c80d69de8fcb8f46c266aa6e15cf695503bef6c3" [label="/bin/sh -c mv /tmp/beanstalk_console-master /source" shape="box"];
  "sha256:b2aeba5817c04160c8acf2d1936c3054a6d502ad5945ef061af01e3c170a9d27" [label="/bin/sh -c apt-get remove --purge -y curl &&     apt-get autoclean &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e09735cd40da8aa51754088e1ce7e9b71de014ce9a6ab398587062ef6f7d7346" [label="sha256:e09735cd40da8aa51754088e1ce7e9b71de014ce9a6ab398587062ef6f7d7346" shape="plaintext"];
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" -> "sha256:ec9b9e9f92f989d6b2459731f93b45c95a083542c957fda26ccd026a4502e01b" [label=""];
  "sha256:ec9b9e9f92f989d6b2459731f93b45c95a083542c957fda26ccd026a4502e01b" -> "sha256:93cf24e2d69901bcbecc49f3b961d16c936c88990ddfda03354aae74703e4a68" [label=""];
  "sha256:93cf24e2d69901bcbecc49f3b961d16c936c88990ddfda03354aae74703e4a68" -> "sha256:5a975f136d4e7ffae7c49d46c80d69de8fcb8f46c266aa6e15cf695503bef6c3" [label=""];
  "sha256:5a975f136d4e7ffae7c49d46c80d69de8fcb8f46c266aa6e15cf695503bef6c3" -> "sha256:b2aeba5817c04160c8acf2d1936c3054a6d502ad5945ef061af01e3c170a9d27" [label=""];
  "sha256:b2aeba5817c04160c8acf2d1936c3054a6d502ad5945ef061af01e3c170a9d27" -> "sha256:e09735cd40da8aa51754088e1ce7e9b71de014ce9a6ab398587062ef6f7d7346" [label=""];
}

