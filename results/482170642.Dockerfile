[app/sources/482170642.Dockerfile]
digraph {
  "sha256:f5622f2a45f4e47c10e1e254b0403fa59c16fc4af7966d9294f59dc8c84e4744" [label="local://context" shape="ellipse"];
  "sha256:b52e1fe9c839c7374457d0a4c7eb7eb3ffc9bfaad81cef690a7b62a975017bc7" [label="docker-image://gcr.io/google_containers/kube-state-metrics:v0.5.0@sha256:e913a24b0a0a89e23968d5e3fbf99501d17c04011fb54b24df0aca6bea232022" shape="ellipse"];
  "sha256:e68800a9c28bf5609ef034f710548f2e4070018f8cc2ae47bf01e011a88e5fbc" [label="copy{src=/kubeconfig, dest=/}" shape="note"];
  "sha256:c8e19825ebdba96b0647eee0fc960dba03ab5c2382296a826054fd25f438b7ca" [label="sha256:c8e19825ebdba96b0647eee0fc960dba03ab5c2382296a826054fd25f438b7ca" shape="plaintext"];
  "sha256:b52e1fe9c839c7374457d0a4c7eb7eb3ffc9bfaad81cef690a7b62a975017bc7" -> "sha256:e68800a9c28bf5609ef034f710548f2e4070018f8cc2ae47bf01e011a88e5fbc" [label=""];
  "sha256:f5622f2a45f4e47c10e1e254b0403fa59c16fc4af7966d9294f59dc8c84e4744" -> "sha256:e68800a9c28bf5609ef034f710548f2e4070018f8cc2ae47bf01e011a88e5fbc" [label=""];
  "sha256:e68800a9c28bf5609ef034f710548f2e4070018f8cc2ae47bf01e011a88e5fbc" -> "sha256:c8e19825ebdba96b0647eee0fc960dba03ab5c2382296a826054fd25f438b7ca" [label=""];
}

