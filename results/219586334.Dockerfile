[app/sources/219586334.Dockerfile]
digraph {
  "sha256:faa5f1511076dd3348c3cf79a4d5630bd0b55b44fe2166efa40ba9af0ba3cb66" [label="docker-image://docker.io/kaixhin/cuda-theano:7.5" shape="ellipse"];
  "sha256:d3ba40916044b5910af353bbe6c8532fde19a5f95adc98a93286a355fc86e45b" [label="/bin/sh -c apt-get update && apt-get install -y   libhdf5-dev   python-h5py   python-yaml" shape="box"];
  "sha256:126489c073c3467beddbbaa590a101b86ee225cbb493f5b78c981a9c3b58513a" [label="/bin/sh -c cd /root && git clone https://github.com/fchollet/keras.git && cd keras &&   python setup.py install" shape="box"];
  "sha256:68a54697d90ff848bb363192c94aa1f267339a43c6d2622741510e199d7e4c04" [label="mkdir{path=/root/keras}" shape="note"];
  "sha256:37a9ee73eb548434da214d0c14e65a15509885c46cb3f338f1e5041d45da4567" [label="sha256:37a9ee73eb548434da214d0c14e65a15509885c46cb3f338f1e5041d45da4567" shape="plaintext"];
  "sha256:faa5f1511076dd3348c3cf79a4d5630bd0b55b44fe2166efa40ba9af0ba3cb66" -> "sha256:d3ba40916044b5910af353bbe6c8532fde19a5f95adc98a93286a355fc86e45b" [label=""];
  "sha256:d3ba40916044b5910af353bbe6c8532fde19a5f95adc98a93286a355fc86e45b" -> "sha256:126489c073c3467beddbbaa590a101b86ee225cbb493f5b78c981a9c3b58513a" [label=""];
  "sha256:126489c073c3467beddbbaa590a101b86ee225cbb493f5b78c981a9c3b58513a" -> "sha256:68a54697d90ff848bb363192c94aa1f267339a43c6d2622741510e199d7e4c04" [label=""];
  "sha256:68a54697d90ff848bb363192c94aa1f267339a43c6d2622741510e199d7e4c04" -> "sha256:37a9ee73eb548434da214d0c14e65a15509885c46cb3f338f1e5041d45da4567" [label=""];
}

