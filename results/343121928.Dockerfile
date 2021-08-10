[app/sources/343121928.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:e36b9d50456f96b5e2c9836b07301eabf404d6eec5b7b3fcf7bcebbefe739465" [label="/bin/sh -c apt-get update     && apt-get dist-upgrade     && apt-get install -y gnupg2     && echo \"deb http://deb.torproject.org/torproject.org stretch main\" > /etc/apt/sources.list.d/tor.list     && gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89     && gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -     && apt-get update     && apt-get install -y     tor     deb.torproject.org-keyring     && apt-get clean" shape="box"];
  "sha256:289596eb62d8e0a634af118b1899dea456bbf6db473078d8879478a1aa98d484" [label="local://context" shape="ellipse"];
  "sha256:cbe41f60ec8bd3f33d15e476b29a898ee423f51ae55f7fd26e24d91d40fb8b11" [label="copy{src=/run.sh, dest=/usr/local/bin/run.sh}" shape="note"];
  "sha256:d75f761b3c66b96c61b51a706859f2d80fd38dee1a350ab10f91adf5bc2e68b4" [label="/bin/sh -c chmod +x /usr/local/bin/run.sh" shape="box"];
  "sha256:09407216e3327eb75892f0d1ab0edc5406df53ff6fcc9f05fd65aa31a6930b29" [label="sha256:09407216e3327eb75892f0d1ab0edc5406df53ff6fcc9f05fd65aa31a6930b29" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:e36b9d50456f96b5e2c9836b07301eabf404d6eec5b7b3fcf7bcebbefe739465" [label=""];
  "sha256:e36b9d50456f96b5e2c9836b07301eabf404d6eec5b7b3fcf7bcebbefe739465" -> "sha256:cbe41f60ec8bd3f33d15e476b29a898ee423f51ae55f7fd26e24d91d40fb8b11" [label=""];
  "sha256:289596eb62d8e0a634af118b1899dea456bbf6db473078d8879478a1aa98d484" -> "sha256:cbe41f60ec8bd3f33d15e476b29a898ee423f51ae55f7fd26e24d91d40fb8b11" [label=""];
  "sha256:cbe41f60ec8bd3f33d15e476b29a898ee423f51ae55f7fd26e24d91d40fb8b11" -> "sha256:d75f761b3c66b96c61b51a706859f2d80fd38dee1a350ab10f91adf5bc2e68b4" [label=""];
  "sha256:d75f761b3c66b96c61b51a706859f2d80fd38dee1a350ab10f91adf5bc2e68b4" -> "sha256:09407216e3327eb75892f0d1ab0edc5406df53ff6fcc9f05fd65aa31a6930b29" [label=""];
}

