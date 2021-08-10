[app/sources/252791481.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:90f18569d499279a5732102e0b9d42881bb1a808a169d0d2df460830e9764386" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:4c06b2cac42cccf2dead2118d4b377d3a48e0c43c4c5316cc53a6aa8b6130f7b" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:f4f7c85f14414ab640cdc24cb6498272f8e9a0c5553bd5f11ef658224a93cfc6" [label="/bin/sh -c apt-get install -y nodejs && apt-get install -y git && apt-get install -y build-essential" shape="box"];
  "sha256:dca5d7c738aded01f2f9f07a70d17b69da2b545b6e77180b8c9da2711ee0e388" [label="/bin/sh -c npm install -g @angular/cli@1.3.1" shape="box"];
  "sha256:aee047c73cca4e0e5b877be7968490b6d28d350d2102fe76b6684c1c79dac13d" [label="sha256:aee047c73cca4e0e5b877be7968490b6d28d350d2102fe76b6684c1c79dac13d" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:90f18569d499279a5732102e0b9d42881bb1a808a169d0d2df460830e9764386" [label=""];
  "sha256:90f18569d499279a5732102e0b9d42881bb1a808a169d0d2df460830e9764386" -> "sha256:4c06b2cac42cccf2dead2118d4b377d3a48e0c43c4c5316cc53a6aa8b6130f7b" [label=""];
  "sha256:4c06b2cac42cccf2dead2118d4b377d3a48e0c43c4c5316cc53a6aa8b6130f7b" -> "sha256:f4f7c85f14414ab640cdc24cb6498272f8e9a0c5553bd5f11ef658224a93cfc6" [label=""];
  "sha256:f4f7c85f14414ab640cdc24cb6498272f8e9a0c5553bd5f11ef658224a93cfc6" -> "sha256:dca5d7c738aded01f2f9f07a70d17b69da2b545b6e77180b8c9da2711ee0e388" [label=""];
  "sha256:dca5d7c738aded01f2f9f07a70d17b69da2b545b6e77180b8c9da2711ee0e388" -> "sha256:aee047c73cca4e0e5b877be7968490b6d28d350d2102fe76b6684c1c79dac13d" [label=""];
}

