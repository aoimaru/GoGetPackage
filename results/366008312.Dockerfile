[app/sources/366008312.Dockerfile]
digraph {
  "sha256:dcbd99b2746a024cdd2d537ff832bb605ecc17607194075a967693c4f893c3b3" [label="docker-image://docker.io/frolvlad/alpine-python2:latest" shape="ellipse"];
  "sha256:29e9830ce8e925b271ff68a31294562490feb18066b6edbe2454aab867e4620e" [label="/bin/sh -c apk add --update build-base gcc abuild binutils python-dev py-pip libffi-dev openssl-dev   && pip install --upgrade pip" shape="box"];
  "sha256:63c2738284c52ccf9a67928f14598e1d5e189175ca0e277c28229d073aa20552" [label="local://context" shape="ellipse"];
  "sha256:ef0c9f786cd3b987f2b19183fc9885db6631709c9aa9a950779b58303b236db8" [label="copy{src=/, dest=/RackHD/test/}" shape="note"];
  "sha256:cf4ec991209220096a5a45e1d57f4c7882c6c8d179f4231ad05e2c7f22c22dfe" [label="mkdir{path=/RackHD/test}" shape="note"];
  "sha256:de35bc45a45751d5ee5ce2ebd8b2772a923644b3f36b2794da0126d0efdccab9" [label="/bin/sh -c cd /RackHD/test   && pip install -r requirements.txt" shape="box"];
  "sha256:d7163f1f334e25eb5931264f945888774b6640e3d0663b9ec996b6766e0eaab9" [label="sha256:d7163f1f334e25eb5931264f945888774b6640e3d0663b9ec996b6766e0eaab9" shape="plaintext"];
  "sha256:dcbd99b2746a024cdd2d537ff832bb605ecc17607194075a967693c4f893c3b3" -> "sha256:29e9830ce8e925b271ff68a31294562490feb18066b6edbe2454aab867e4620e" [label=""];
  "sha256:29e9830ce8e925b271ff68a31294562490feb18066b6edbe2454aab867e4620e" -> "sha256:ef0c9f786cd3b987f2b19183fc9885db6631709c9aa9a950779b58303b236db8" [label=""];
  "sha256:63c2738284c52ccf9a67928f14598e1d5e189175ca0e277c28229d073aa20552" -> "sha256:ef0c9f786cd3b987f2b19183fc9885db6631709c9aa9a950779b58303b236db8" [label=""];
  "sha256:ef0c9f786cd3b987f2b19183fc9885db6631709c9aa9a950779b58303b236db8" -> "sha256:cf4ec991209220096a5a45e1d57f4c7882c6c8d179f4231ad05e2c7f22c22dfe" [label=""];
  "sha256:cf4ec991209220096a5a45e1d57f4c7882c6c8d179f4231ad05e2c7f22c22dfe" -> "sha256:de35bc45a45751d5ee5ce2ebd8b2772a923644b3f36b2794da0126d0efdccab9" [label=""];
  "sha256:de35bc45a45751d5ee5ce2ebd8b2772a923644b3f36b2794da0126d0efdccab9" -> "sha256:d7163f1f334e25eb5931264f945888774b6640e3d0663b9ec996b6766e0eaab9" [label=""];
}

