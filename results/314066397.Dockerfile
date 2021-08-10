[app/sources/314066397.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:24aaec3ec3fe7dc6cd3e405fe64ec87a81c8e16422aa436b622bcfb822f0910a" [label="/bin/sh -c : \"${NETWORK:?NETWORK Build argument needs to be set.}\"" shape="box"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:08be64083d98e49300ee4998a5c3583d1e265d0eb8d47caf363ca15ed8cd5705" [label="/bin/sh -c : \"${NETWORK:?NETWORK Build argument needs to be set.}\"" shape="box"];
  "sha256:973c790d54b3ec64f277645f814fe2280448127c97d36499725d1edacf34cf6f" [label="/bin/sh -c apk add --no-cache --update alpine-sdk     git     make" shape="box"];
  "sha256:175508a7d5d3e2cbdf732b584a3587020ff93466be4f5c53ddbcd62d0dc944f5" [label="mkdir{path=/src/github.com/lightningnetwork/lnd}" shape="note"];
  "sha256:1033fa94b9fcae552bae6d533a11ad21e681ebb7b9b5ae6519fb55f60203db4c" [label="/bin/sh -c : \"${COMMIT_SHA:?COMMIT_SHA Build argument needs to be set.}\"" shape="box"];
  "sha256:77559d5c8f07cbf751b6e10ef82c105a098c949c9900c46c36201556c6ab17ee" [label="/bin/sh -c git clone https://github.com/lightningnetwork/lnd . &&  git checkout ${COMMIT_SHA} &&  make &&  make install tags=\"signrpc walletrpc chainrpc invoicesrpc\"" shape="box"];
  "sha256:5cab7ecd7615350b6ca59cddf35bcbdaccafdf918f6fae1728bfabf408970f61" [label="copy{src=/go/bin/lncli, dest=/bin/}" shape="note"];
  "sha256:10d816867ea0c037288c7b4d03d40a437bac70a4eef12403b2aea35048de1d8b" [label="copy{src=/go/bin/lnd, dest=/bin/}" shape="note"];
  "sha256:da7d0ab2b41b4077f59bd72e5a7a87e29ada9066fe9e6f1e3aeb44494df34136" [label="/bin/sh -c apk add --no-cache     bash" shape="box"];
  "sha256:103c5ad9bb158313d8bb47aca9d943bdf576b573a668b2cbd202b9e6d17ebcf0" [label="mkdir{path=/home/lnd}" shape="note"];
  "sha256:ae3f4044b6c32376035914d3bfbcefa546ce364b5284e5a60ab2683c89e5ff70" [label="local://context" shape="ellipse"];
  "sha256:c4110617db4b3e47712992e39d8310ad5ab28dfd9be3cbfa36aa812fc52bdefd" [label="copy{src=/start-lnd-.sh, dest=/home/lnd/start-lnd.sh}" shape="note"];
  "sha256:4c105b28473bd5cdc2325ba8623a8b3f23e93eaa29e85d3593e7e2173cee0075" [label="/bin/sh -c chmod +x ./start-lnd.sh" shape="box"];
  "sha256:eea43f8a0643ea58390c28c5493df5bf39ef4f85aa601190d1b25bea1c88cdb9" [label="/bin/sh -c : \"${NODE:?NODE Build argument needs to be set.}\"" shape="box"];
  "sha256:812b7b35f79eb356ddae8701036768f4227fe401a3d39395040f4d377700f67f" [label="copy{src=/conf/lnd-.conf, dest=/home/lnd/lnd.conf}" shape="note"];
  "sha256:b19e4b50a266e2ff236ede253296408ac8fc7c3d1cb39ed866a03eee4beb66f6" [label="/bin/sh -c mkdir -p /backup" shape="box"];
  "sha256:b87b401d62591ce486d787934234a0d8c8d36d516dc2e6e519685fc1780c5b80" [label="sha256:b87b401d62591ce486d787934234a0d8c8d36d516dc2e6e519685fc1780c5b80" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:24aaec3ec3fe7dc6cd3e405fe64ec87a81c8e16422aa436b622bcfb822f0910a" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:08be64083d98e49300ee4998a5c3583d1e265d0eb8d47caf363ca15ed8cd5705" [label=""];
  "sha256:08be64083d98e49300ee4998a5c3583d1e265d0eb8d47caf363ca15ed8cd5705" -> "sha256:973c790d54b3ec64f277645f814fe2280448127c97d36499725d1edacf34cf6f" [label=""];
  "sha256:973c790d54b3ec64f277645f814fe2280448127c97d36499725d1edacf34cf6f" -> "sha256:175508a7d5d3e2cbdf732b584a3587020ff93466be4f5c53ddbcd62d0dc944f5" [label=""];
  "sha256:175508a7d5d3e2cbdf732b584a3587020ff93466be4f5c53ddbcd62d0dc944f5" -> "sha256:1033fa94b9fcae552bae6d533a11ad21e681ebb7b9b5ae6519fb55f60203db4c" [label=""];
  "sha256:1033fa94b9fcae552bae6d533a11ad21e681ebb7b9b5ae6519fb55f60203db4c" -> "sha256:77559d5c8f07cbf751b6e10ef82c105a098c949c9900c46c36201556c6ab17ee" [label=""];
  "sha256:24aaec3ec3fe7dc6cd3e405fe64ec87a81c8e16422aa436b622bcfb822f0910a" -> "sha256:5cab7ecd7615350b6ca59cddf35bcbdaccafdf918f6fae1728bfabf408970f61" [label=""];
  "sha256:77559d5c8f07cbf751b6e10ef82c105a098c949c9900c46c36201556c6ab17ee" -> "sha256:5cab7ecd7615350b6ca59cddf35bcbdaccafdf918f6fae1728bfabf408970f61" [label=""];
  "sha256:5cab7ecd7615350b6ca59cddf35bcbdaccafdf918f6fae1728bfabf408970f61" -> "sha256:10d816867ea0c037288c7b4d03d40a437bac70a4eef12403b2aea35048de1d8b" [label=""];
  "sha256:77559d5c8f07cbf751b6e10ef82c105a098c949c9900c46c36201556c6ab17ee" -> "sha256:10d816867ea0c037288c7b4d03d40a437bac70a4eef12403b2aea35048de1d8b" [label=""];
  "sha256:10d816867ea0c037288c7b4d03d40a437bac70a4eef12403b2aea35048de1d8b" -> "sha256:da7d0ab2b41b4077f59bd72e5a7a87e29ada9066fe9e6f1e3aeb44494df34136" [label=""];
  "sha256:da7d0ab2b41b4077f59bd72e5a7a87e29ada9066fe9e6f1e3aeb44494df34136" -> "sha256:103c5ad9bb158313d8bb47aca9d943bdf576b573a668b2cbd202b9e6d17ebcf0" [label=""];
  "sha256:103c5ad9bb158313d8bb47aca9d943bdf576b573a668b2cbd202b9e6d17ebcf0" -> "sha256:c4110617db4b3e47712992e39d8310ad5ab28dfd9be3cbfa36aa812fc52bdefd" [label=""];
  "sha256:ae3f4044b6c32376035914d3bfbcefa546ce364b5284e5a60ab2683c89e5ff70" -> "sha256:c4110617db4b3e47712992e39d8310ad5ab28dfd9be3cbfa36aa812fc52bdefd" [label=""];
  "sha256:c4110617db4b3e47712992e39d8310ad5ab28dfd9be3cbfa36aa812fc52bdefd" -> "sha256:4c105b28473bd5cdc2325ba8623a8b3f23e93eaa29e85d3593e7e2173cee0075" [label=""];
  "sha256:4c105b28473bd5cdc2325ba8623a8b3f23e93eaa29e85d3593e7e2173cee0075" -> "sha256:eea43f8a0643ea58390c28c5493df5bf39ef4f85aa601190d1b25bea1c88cdb9" [label=""];
  "sha256:eea43f8a0643ea58390c28c5493df5bf39ef4f85aa601190d1b25bea1c88cdb9" -> "sha256:812b7b35f79eb356ddae8701036768f4227fe401a3d39395040f4d377700f67f" [label=""];
  "sha256:ae3f4044b6c32376035914d3bfbcefa546ce364b5284e5a60ab2683c89e5ff70" -> "sha256:812b7b35f79eb356ddae8701036768f4227fe401a3d39395040f4d377700f67f" [label=""];
  "sha256:812b7b35f79eb356ddae8701036768f4227fe401a3d39395040f4d377700f67f" -> "sha256:b19e4b50a266e2ff236ede253296408ac8fc7c3d1cb39ed866a03eee4beb66f6" [label=""];
  "sha256:b19e4b50a266e2ff236ede253296408ac8fc7c3d1cb39ed866a03eee4beb66f6" -> "sha256:b87b401d62591ce486d787934234a0d8c8d36d516dc2e6e519685fc1780c5b80" [label=""];
}

