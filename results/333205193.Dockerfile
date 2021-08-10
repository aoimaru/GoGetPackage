[app/sources/333205193.Dockerfile]
digraph {
  "sha256:6a7a8e3ccb62cef89798132524edee6adda727679de891bc244ffd18a5ee530f" [label="docker-image://docker.io/jenkinsxio/builder-terraform:latest" shape="ellipse"];
  "sha256:470276a1611ca57af81eee6cb1882b320f0ee80c7975b03c2cbd18db844d651e" [label="local://context" shape="ellipse"];
  "sha256:3a61dc2870b553d85cb6f7b8b3ea6f7570a3bc0aec9cfeff5af661d518543fea" [label="copy{src=/build/linux/jx, dest=/usr/bin/jx}" shape="note"];
  "sha256:a08549dda4f24928d41a17c5f24cc5bea2a021eed11167cb370675fd02082310" [label="sha256:a08549dda4f24928d41a17c5f24cc5bea2a021eed11167cb370675fd02082310" shape="plaintext"];
  "sha256:6a7a8e3ccb62cef89798132524edee6adda727679de891bc244ffd18a5ee530f" -> "sha256:3a61dc2870b553d85cb6f7b8b3ea6f7570a3bc0aec9cfeff5af661d518543fea" [label=""];
  "sha256:470276a1611ca57af81eee6cb1882b320f0ee80c7975b03c2cbd18db844d651e" -> "sha256:3a61dc2870b553d85cb6f7b8b3ea6f7570a3bc0aec9cfeff5af661d518543fea" [label=""];
  "sha256:3a61dc2870b553d85cb6f7b8b3ea6f7570a3bc0aec9cfeff5af661d518543fea" -> "sha256:a08549dda4f24928d41a17c5f24cc5bea2a021eed11167cb370675fd02082310" [label=""];
}

