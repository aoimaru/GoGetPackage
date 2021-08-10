[app/sources/226985938.Dockerfile]
digraph {
  "sha256:04a4fe912017a50ef5fc92c027900ea70d40c1aa03193d8049cb01459677f917" [label="docker-image://docker.io/mhart/alpine-node:slim-12" shape="ellipse"];
  "sha256:b931441b81125950d8e9d107bb6da730f3b3fba4695a195642969b6e8352b903" [label="mkdir{path=/app}" shape="note"];
  "sha256:7dbc6a569fa1d2d6478bea695a8b0e9a48b76aee3b9660401e2be806445eb771" [label="docker-image://docker.io/mhart/alpine-node:12" shape="ellipse"];
  "sha256:b5ad7e30d6fd4961de40fd19881ec7f275a788ff32c8a27dbff0a366dcf0aa56" [label="mkdir{path=/app}" shape="note"];
  "sha256:07b08020c3dbd5683541880cda0799896b064183eea996a101b5a917508d4919" [label="local://context" shape="ellipse"];
  "sha256:ee1dcae1bc6ef3e0664ef236743fb6b9bcfc325005100b9bf115eeea0b4433a0" [label="copy{src=/package.json, dest=/app/},copy{src=/package-lock.json, dest=/app/}" shape="note"];
  "sha256:9c332cf56acce16e464c0d1a2ada27d83e745b2bb911b704be0c9ea50fc1dde4" [label="/bin/sh -c npm ci --production" shape="box"];
  "sha256:ea79dae6d270ae79d9466a8b86efd2087ebf1737607b82b8a3787ac89c05b3cd" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:dd5ad9683921f51ee703b2dc0f3da224d4e9a2d154eed66e8ecd53ef0b401deb" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:fd598c66ee25eb62273a7766f8e45d01cbe5ec0e475173ba2bd83820254d4502" [label="sha256:fd598c66ee25eb62273a7766f8e45d01cbe5ec0e475173ba2bd83820254d4502" shape="plaintext"];
  "sha256:04a4fe912017a50ef5fc92c027900ea70d40c1aa03193d8049cb01459677f917" -> "sha256:b931441b81125950d8e9d107bb6da730f3b3fba4695a195642969b6e8352b903" [label=""];
  "sha256:7dbc6a569fa1d2d6478bea695a8b0e9a48b76aee3b9660401e2be806445eb771" -> "sha256:b5ad7e30d6fd4961de40fd19881ec7f275a788ff32c8a27dbff0a366dcf0aa56" [label=""];
  "sha256:b5ad7e30d6fd4961de40fd19881ec7f275a788ff32c8a27dbff0a366dcf0aa56" -> "sha256:ee1dcae1bc6ef3e0664ef236743fb6b9bcfc325005100b9bf115eeea0b4433a0" [label=""];
  "sha256:07b08020c3dbd5683541880cda0799896b064183eea996a101b5a917508d4919" -> "sha256:ee1dcae1bc6ef3e0664ef236743fb6b9bcfc325005100b9bf115eeea0b4433a0" [label=""];
  "sha256:ee1dcae1bc6ef3e0664ef236743fb6b9bcfc325005100b9bf115eeea0b4433a0" -> "sha256:9c332cf56acce16e464c0d1a2ada27d83e745b2bb911b704be0c9ea50fc1dde4" [label=""];
  "sha256:b931441b81125950d8e9d107bb6da730f3b3fba4695a195642969b6e8352b903" -> "sha256:ea79dae6d270ae79d9466a8b86efd2087ebf1737607b82b8a3787ac89c05b3cd" [label=""];
  "sha256:9c332cf56acce16e464c0d1a2ada27d83e745b2bb911b704be0c9ea50fc1dde4" -> "sha256:ea79dae6d270ae79d9466a8b86efd2087ebf1737607b82b8a3787ac89c05b3cd" [label=""];
  "sha256:ea79dae6d270ae79d9466a8b86efd2087ebf1737607b82b8a3787ac89c05b3cd" -> "sha256:dd5ad9683921f51ee703b2dc0f3da224d4e9a2d154eed66e8ecd53ef0b401deb" [label=""];
  "sha256:07b08020c3dbd5683541880cda0799896b064183eea996a101b5a917508d4919" -> "sha256:dd5ad9683921f51ee703b2dc0f3da224d4e9a2d154eed66e8ecd53ef0b401deb" [label=""];
  "sha256:dd5ad9683921f51ee703b2dc0f3da224d4e9a2d154eed66e8ecd53ef0b401deb" -> "sha256:fd598c66ee25eb62273a7766f8e45d01cbe5ec0e475173ba2bd83820254d4502" [label=""];
}

