[app/sources/252768004.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:a2c17744c91b47d2223441b27a4880c12696394831a7e06bd7020b63fcb4ba36" [label="/bin/sh -c apk add --no-cache python3&& pip3 install --upgrade pip && pip3 install ts3&& mkdir /ts3selfserve" shape="box"];
  "sha256:ff126edcf09637d9c03883c5b1d39b89fdeda52c1cf83d5545feb4db442addf5" [label="local://context" shape="ellipse"];
  "sha256:bea68f3db8fbd746270071e96079f240fc6958c4b602061b23e70522cf3bf291" [label="copy{src=/*.py, dest=/ts3selfserve}" shape="note"];
  "sha256:622c8c2a45e16200b8a93299d208a2ac1bfb1e8f56c98c2231c4832ace5ca761" [label="mkdir{path=/ts3selfserve}" shape="note"];
  "sha256:5dac692fa38b4938805037c72fd8f9900152d254388eb85d4c8f596aa2e9250f" [label="sha256:5dac692fa38b4938805037c72fd8f9900152d254388eb85d4c8f596aa2e9250f" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:a2c17744c91b47d2223441b27a4880c12696394831a7e06bd7020b63fcb4ba36" [label=""];
  "sha256:a2c17744c91b47d2223441b27a4880c12696394831a7e06bd7020b63fcb4ba36" -> "sha256:bea68f3db8fbd746270071e96079f240fc6958c4b602061b23e70522cf3bf291" [label=""];
  "sha256:ff126edcf09637d9c03883c5b1d39b89fdeda52c1cf83d5545feb4db442addf5" -> "sha256:bea68f3db8fbd746270071e96079f240fc6958c4b602061b23e70522cf3bf291" [label=""];
  "sha256:bea68f3db8fbd746270071e96079f240fc6958c4b602061b23e70522cf3bf291" -> "sha256:622c8c2a45e16200b8a93299d208a2ac1bfb1e8f56c98c2231c4832ace5ca761" [label=""];
  "sha256:622c8c2a45e16200b8a93299d208a2ac1bfb1e8f56c98c2231c4832ace5ca761" -> "sha256:5dac692fa38b4938805037c72fd8f9900152d254388eb85d4c8f596aa2e9250f" [label=""];
}

