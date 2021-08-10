[app/sources/466891273.Dockerfile]
digraph {
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" [label="docker-image://docker.io/library/ubuntu:18.04@sha256:7bd7a9ca99f868bf69c4b6212f64f2af8e243f97ba13abb3e641e03a7ceb59e8" shape="ellipse"];
  "sha256:a31b4a2da83080fa912ed0c5df06c9e7b0e0916533f7b261e36f3db38fbd444c" [label="/bin/sh -c apt update && apt install -y     build-essential     git     python3-all     python3-dev     python3-pip     python3-setuptools     ssh" shape="box"];
  "sha256:670740e296479d041283da82cbf227a4e144aad8d9cb694555a664546ab16dfb" [label="/bin/sh -c pip3 install wheel" shape="box"];
  "sha256:5d1cb4334989251e4a9adb13477182080541310c9dd627673859bc9dc39ce664" [label="local://context" shape="ellipse"];
  "sha256:c816981fe2f7e91e02aa496e416bc76db033468cf4fbefefd857feb1bff60087" [label="copy{src=/prerequirements.txt, dest=/}" shape="note"];
  "sha256:0e9d54aac0c623c2510f2bfc0f30d437c9f95ad8a8d8df4987bf5a54ad85c218" [label="/bin/sh -c pip3 install -r prerequirements.txt" shape="box"];
  "sha256:ff1f3017aa1bcb92e0c6b419026e7242a9ff793ffc67472e66f8b97e808bdf05" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:866a952481b67c867ed154e68cc6a4877c80e6beeacb2772da5bf3d60f96085a" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:36c9592563a1c0f29bac06b43a62f59caf5d9b45ded1498e8bd70e14013bb450" [label="sha256:36c9592563a1c0f29bac06b43a62f59caf5d9b45ded1498e8bd70e14013bb450" shape="plaintext"];
  "sha256:c5183aa4873b88078bc664ba6c8ca1e6ba7e43b63a8ff7174bed0ee8d08f134d" -> "sha256:a31b4a2da83080fa912ed0c5df06c9e7b0e0916533f7b261e36f3db38fbd444c" [label=""];
  "sha256:a31b4a2da83080fa912ed0c5df06c9e7b0e0916533f7b261e36f3db38fbd444c" -> "sha256:670740e296479d041283da82cbf227a4e144aad8d9cb694555a664546ab16dfb" [label=""];
  "sha256:670740e296479d041283da82cbf227a4e144aad8d9cb694555a664546ab16dfb" -> "sha256:c816981fe2f7e91e02aa496e416bc76db033468cf4fbefefd857feb1bff60087" [label=""];
  "sha256:5d1cb4334989251e4a9adb13477182080541310c9dd627673859bc9dc39ce664" -> "sha256:c816981fe2f7e91e02aa496e416bc76db033468cf4fbefefd857feb1bff60087" [label=""];
  "sha256:c816981fe2f7e91e02aa496e416bc76db033468cf4fbefefd857feb1bff60087" -> "sha256:0e9d54aac0c623c2510f2bfc0f30d437c9f95ad8a8d8df4987bf5a54ad85c218" [label=""];
  "sha256:0e9d54aac0c623c2510f2bfc0f30d437c9f95ad8a8d8df4987bf5a54ad85c218" -> "sha256:ff1f3017aa1bcb92e0c6b419026e7242a9ff793ffc67472e66f8b97e808bdf05" [label=""];
  "sha256:5d1cb4334989251e4a9adb13477182080541310c9dd627673859bc9dc39ce664" -> "sha256:ff1f3017aa1bcb92e0c6b419026e7242a9ff793ffc67472e66f8b97e808bdf05" [label=""];
  "sha256:ff1f3017aa1bcb92e0c6b419026e7242a9ff793ffc67472e66f8b97e808bdf05" -> "sha256:866a952481b67c867ed154e68cc6a4877c80e6beeacb2772da5bf3d60f96085a" [label=""];
  "sha256:866a952481b67c867ed154e68cc6a4877c80e6beeacb2772da5bf3d60f96085a" -> "sha256:36c9592563a1c0f29bac06b43a62f59caf5d9b45ded1498e8bd70e14013bb450" [label=""];
}

