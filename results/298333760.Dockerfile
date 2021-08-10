[app/sources/298333760.Dockerfile]
digraph {
  "sha256:283646b7119e64f5b80bc28e24189201703d9d6683f8e1bf118d8b11ef6add4d" [label="local://context" shape="ellipse"];
  "sha256:3716f98c3025b8e56e51d99473a146948b72ffaf70ef3ea2ae7b10b5e3f036b7" [label="docker-image://docker.io/library/elixir:1.4" shape="ellipse"];
  "sha256:49e769de786233f73861405949f7ebb9e2f0eb67da9c5e1b7f45688973a052e4" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:8dbbaf63db5979779499567fd87213ca22892551d1ed272e56e79def87d54862" [label="/bin/sh -c apt-get install -y -q nodejs" shape="box"];
  "sha256:f9c2c0332eb227cdd3f5cf855b09f995f4477e5598ac361b9e35d3003010ecf4" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:7a30ab4b4e8adf20eedba58c309ef228d74d2a7fe85716acee0890af9df653bb" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:f8cbd0812fa7671a1f32ebc66c8297b63f05812372b8da2715b0a4653ea0b326" [label="/bin/sh -c mkdir -p /$APP_NAME" shape="box"];
  "sha256:f5733f099d8e6e8a76fbbee6580aca3022fcf7855a281717d8bcdb3afc0e388e" [label="copy{src=/mix.exs, dest=/tonic_time}" shape="note"];
  "sha256:11363778adf56a6ced9c5aa1e765b650c383cb78a8713b94a215309c9f714935" [label="copy{src=/mix.lock, dest=/tonic_time}" shape="note"];
  "sha256:a551f4fab72a0ce539565ac1494c1d10a1131c12c469a418f689489a9bfd55a4" [label="mkdir{path=/tonic_time}" shape="note"];
  "sha256:8d3ed052845d0b0430e53a67158a4190f04175031bc0be67636bcb0500696869" [label="/bin/sh -c mix deps.get" shape="box"];
  "sha256:27c6159f897f5e952015b140f6994310c74d8cf1e2e49c0f0b1554ea0e0971b8" [label="copy{src=/, dest=/tonic_time}" shape="note"];
  "sha256:8897d189d6f5cbe4328d32996356aaff9a36d96e6e82a0503996bec551f81508" [label="/bin/sh -c npm install && node node_modules/brunch/bin/brunch build" shape="box"];
  "sha256:328f92b2a4b9caaed51a15249adbea147d6b62a19af74cd6a1682e1b26faa281" [label="/bin/sh -c MIX_ENV=prod mix phoenix.digest" shape="box"];
  "sha256:cf133dc2ce761097b3007d4d7777937b7c9af2a87e5074869e824d00adbeec14" [label="/bin/sh -c MIX_ENV=prod mix compile" shape="box"];
  "sha256:8295408b3d91079e559c7801ee457962a85df979bd14c574a98c5c82fb346a5d" [label="sha256:8295408b3d91079e559c7801ee457962a85df979bd14c574a98c5c82fb346a5d" shape="plaintext"];
  "sha256:3716f98c3025b8e56e51d99473a146948b72ffaf70ef3ea2ae7b10b5e3f036b7" -> "sha256:49e769de786233f73861405949f7ebb9e2f0eb67da9c5e1b7f45688973a052e4" [label=""];
  "sha256:49e769de786233f73861405949f7ebb9e2f0eb67da9c5e1b7f45688973a052e4" -> "sha256:8dbbaf63db5979779499567fd87213ca22892551d1ed272e56e79def87d54862" [label=""];
  "sha256:8dbbaf63db5979779499567fd87213ca22892551d1ed272e56e79def87d54862" -> "sha256:f9c2c0332eb227cdd3f5cf855b09f995f4477e5598ac361b9e35d3003010ecf4" [label=""];
  "sha256:f9c2c0332eb227cdd3f5cf855b09f995f4477e5598ac361b9e35d3003010ecf4" -> "sha256:7a30ab4b4e8adf20eedba58c309ef228d74d2a7fe85716acee0890af9df653bb" [label=""];
  "sha256:7a30ab4b4e8adf20eedba58c309ef228d74d2a7fe85716acee0890af9df653bb" -> "sha256:f8cbd0812fa7671a1f32ebc66c8297b63f05812372b8da2715b0a4653ea0b326" [label=""];
  "sha256:f8cbd0812fa7671a1f32ebc66c8297b63f05812372b8da2715b0a4653ea0b326" -> "sha256:f5733f099d8e6e8a76fbbee6580aca3022fcf7855a281717d8bcdb3afc0e388e" [label=""];
  "sha256:283646b7119e64f5b80bc28e24189201703d9d6683f8e1bf118d8b11ef6add4d" -> "sha256:f5733f099d8e6e8a76fbbee6580aca3022fcf7855a281717d8bcdb3afc0e388e" [label=""];
  "sha256:f5733f099d8e6e8a76fbbee6580aca3022fcf7855a281717d8bcdb3afc0e388e" -> "sha256:11363778adf56a6ced9c5aa1e765b650c383cb78a8713b94a215309c9f714935" [label=""];
  "sha256:283646b7119e64f5b80bc28e24189201703d9d6683f8e1bf118d8b11ef6add4d" -> "sha256:11363778adf56a6ced9c5aa1e765b650c383cb78a8713b94a215309c9f714935" [label=""];
  "sha256:11363778adf56a6ced9c5aa1e765b650c383cb78a8713b94a215309c9f714935" -> "sha256:a551f4fab72a0ce539565ac1494c1d10a1131c12c469a418f689489a9bfd55a4" [label=""];
  "sha256:a551f4fab72a0ce539565ac1494c1d10a1131c12c469a418f689489a9bfd55a4" -> "sha256:8d3ed052845d0b0430e53a67158a4190f04175031bc0be67636bcb0500696869" [label=""];
  "sha256:8d3ed052845d0b0430e53a67158a4190f04175031bc0be67636bcb0500696869" -> "sha256:27c6159f897f5e952015b140f6994310c74d8cf1e2e49c0f0b1554ea0e0971b8" [label=""];
  "sha256:283646b7119e64f5b80bc28e24189201703d9d6683f8e1bf118d8b11ef6add4d" -> "sha256:27c6159f897f5e952015b140f6994310c74d8cf1e2e49c0f0b1554ea0e0971b8" [label=""];
  "sha256:27c6159f897f5e952015b140f6994310c74d8cf1e2e49c0f0b1554ea0e0971b8" -> "sha256:8897d189d6f5cbe4328d32996356aaff9a36d96e6e82a0503996bec551f81508" [label=""];
  "sha256:8897d189d6f5cbe4328d32996356aaff9a36d96e6e82a0503996bec551f81508" -> "sha256:328f92b2a4b9caaed51a15249adbea147d6b62a19af74cd6a1682e1b26faa281" [label=""];
  "sha256:328f92b2a4b9caaed51a15249adbea147d6b62a19af74cd6a1682e1b26faa281" -> "sha256:cf133dc2ce761097b3007d4d7777937b7c9af2a87e5074869e824d00adbeec14" [label=""];
  "sha256:cf133dc2ce761097b3007d4d7777937b7c9af2a87e5074869e824d00adbeec14" -> "sha256:8295408b3d91079e559c7801ee457962a85df979bd14c574a98c5c82fb346a5d" [label=""];
}

