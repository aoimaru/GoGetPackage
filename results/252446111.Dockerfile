[app/sources/252446111.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:e8ff91d012ae31b5dcf6affd71221e4a85644688b3e79ddd8314edce22cdef7d" [label="/bin/sh -c apk add --no-cache bash git openssh-client" shape="box"];
  "sha256:d5b72f2efa63785acadd0e0ad5be9c9bb7ff45802e76867c8bab922ec34b7da3" [label="local://context" shape="ellipse"];
  "sha256:906103d08f236ee5dbabb023b20bcb1e17e2c833e9f12ee003e139e98850d018" [label="copy{src=/git-push, dest=/usr/local/bin/}" shape="note"];
  "sha256:00b981d0341993df1f91ee10af6ec474669afedc3abe98cfe2316dcc61e620dc" [label="sha256:00b981d0341993df1f91ee10af6ec474669afedc3abe98cfe2316dcc61e620dc" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:e8ff91d012ae31b5dcf6affd71221e4a85644688b3e79ddd8314edce22cdef7d" [label=""];
  "sha256:e8ff91d012ae31b5dcf6affd71221e4a85644688b3e79ddd8314edce22cdef7d" -> "sha256:906103d08f236ee5dbabb023b20bcb1e17e2c833e9f12ee003e139e98850d018" [label=""];
  "sha256:d5b72f2efa63785acadd0e0ad5be9c9bb7ff45802e76867c8bab922ec34b7da3" -> "sha256:906103d08f236ee5dbabb023b20bcb1e17e2c833e9f12ee003e139e98850d018" [label=""];
  "sha256:906103d08f236ee5dbabb023b20bcb1e17e2c833e9f12ee003e139e98850d018" -> "sha256:00b981d0341993df1f91ee10af6ec474669afedc3abe98cfe2316dcc61e620dc" [label=""];
}

