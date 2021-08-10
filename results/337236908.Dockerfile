[app/sources/337236908.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:0c40ac59e9c892bd76b6ef13c13317b538d1b4cf9f3513aec76cf643eecaf807" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:9518ca22b173e77919975a98bea029bf7aa57e78d92b3c36d8db7d79ba24dce1" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:df2e0bf6d34b9f72b64cb732db5e41a6b2867073624ee7cd689ea0441285ca6f" [label="local://context" shape="ellipse"];
  "sha256:1a92ab9d3df7c714205b3b9be6a87c67ff6beaa82c6e50070c45527068f8479c" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:64f8758153e06cad85ac1e32e9964d69c94e8e79fd20ec3cbd8dadd8f3aee5ba" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:ca8233e3bf6b1aeaecd864dd959eb7c6aaa37b0107480331c5b99557f4d93663" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:58d10e2dfac4c03172c4defaa9c34715a98a3595204776a39496ff2fd0b5df6f" [label="/bin/sh -c pip install http://download.pytorch.org/whl/cpu/torch-0.3.1-cp27-cp27mu-linux_x86_64.whl" shape="box"];
  "sha256:8cadd1c0a3fabd0ce05055960ac9d20c809ce36b38f20663d6960377a00043bd" [label="/bin/sh -c pip install torchvision" shape="box"];
  "sha256:75ee0cb98abf30b41c4acc7b04dc250d659294e445f931b86fe37dec52dee584" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:9474190df84218e1a5ffd6931a8ccda345f741265a83b2f10416388af4e6ad40" [label="sha256:9474190df84218e1a5ffd6931a8ccda345f741265a83b2f10416388af4e6ad40" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:0c40ac59e9c892bd76b6ef13c13317b538d1b4cf9f3513aec76cf643eecaf807" [label=""];
  "sha256:0c40ac59e9c892bd76b6ef13c13317b538d1b4cf9f3513aec76cf643eecaf807" -> "sha256:9518ca22b173e77919975a98bea029bf7aa57e78d92b3c36d8db7d79ba24dce1" [label=""];
  "sha256:9518ca22b173e77919975a98bea029bf7aa57e78d92b3c36d8db7d79ba24dce1" -> "sha256:1a92ab9d3df7c714205b3b9be6a87c67ff6beaa82c6e50070c45527068f8479c" [label=""];
  "sha256:df2e0bf6d34b9f72b64cb732db5e41a6b2867073624ee7cd689ea0441285ca6f" -> "sha256:1a92ab9d3df7c714205b3b9be6a87c67ff6beaa82c6e50070c45527068f8479c" [label=""];
  "sha256:1a92ab9d3df7c714205b3b9be6a87c67ff6beaa82c6e50070c45527068f8479c" -> "sha256:64f8758153e06cad85ac1e32e9964d69c94e8e79fd20ec3cbd8dadd8f3aee5ba" [label=""];
  "sha256:64f8758153e06cad85ac1e32e9964d69c94e8e79fd20ec3cbd8dadd8f3aee5ba" -> "sha256:ca8233e3bf6b1aeaecd864dd959eb7c6aaa37b0107480331c5b99557f4d93663" [label=""];
  "sha256:ca8233e3bf6b1aeaecd864dd959eb7c6aaa37b0107480331c5b99557f4d93663" -> "sha256:58d10e2dfac4c03172c4defaa9c34715a98a3595204776a39496ff2fd0b5df6f" [label=""];
  "sha256:58d10e2dfac4c03172c4defaa9c34715a98a3595204776a39496ff2fd0b5df6f" -> "sha256:8cadd1c0a3fabd0ce05055960ac9d20c809ce36b38f20663d6960377a00043bd" [label=""];
  "sha256:8cadd1c0a3fabd0ce05055960ac9d20c809ce36b38f20663d6960377a00043bd" -> "sha256:75ee0cb98abf30b41c4acc7b04dc250d659294e445f931b86fe37dec52dee584" [label=""];
  "sha256:df2e0bf6d34b9f72b64cb732db5e41a6b2867073624ee7cd689ea0441285ca6f" -> "sha256:75ee0cb98abf30b41c4acc7b04dc250d659294e445f931b86fe37dec52dee584" [label=""];
  "sha256:75ee0cb98abf30b41c4acc7b04dc250d659294e445f931b86fe37dec52dee584" -> "sha256:9474190df84218e1a5ffd6931a8ccda345f741265a83b2f10416388af4e6ad40" [label=""];
}

