[app/sources/187964871.Dockerfile]
digraph {
  "sha256:0fbe5603a1f28b2eada3842b4758da090df615dfc605c327cfca011e42644374" [label="docker-image://docker.io/quaive/ploneintranet-base:latest" shape="ellipse"];
  "sha256:be04113ad99fdf2aa5d518131e6c73df18bb06058bd4cce59d22ef1b9fb451c7" [label="/bin/sh -c apt-get update && apt-get install -y     ldap-utils     ldapvi     nodejs     npm     slapd" shape="box"];
  "sha256:0938d02e4437ede0839e2fd6740031376d51a3d70268ea89b67a847670c216bf" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/local/bin/node" shape="box"];
  "sha256:3694febfc8f9d9458b03780bfbc2e959fbf3109cd09c25975f3df646f257fbf0" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:dfecca7b44620a2fb5d79c8296a04652564b2b68dd8e49ca972561623f7eaf7b" [label="/bin/sh -c useradd -m -d /app app && echo \"app:app\" | chpasswd && adduser app sudo" shape="box"];
  "sha256:485584122ea8c5a15e5236df14926581af4bbd310b5bb7496320f49e4d619fb7" [label="/bin/sh -c mkdir /.npm && chown app.app /.npm" shape="box"];
  "sha256:6ac3cb93aa0c02e7a89af9f7950206b1a4a7ae71c4b323a6c0ce5c57b06f3410" [label="/bin/sh -c mkdir /.config && chown app.app /.config" shape="box"];
  "sha256:5acd42eeac8f99ab2dd116b530a3b23f5305d31a5ad12bec393805a297d91165" [label="/bin/sh -c mkdir /.cache && chown app.app /.cache" shape="box"];
  "sha256:ffbe41cc838ca55108708da4e9be2859296b88c0b80b89c14ebe530338a818cb" [label="/bin/sh -c mkdir /.local && chown app.app /.local" shape="box"];
  "sha256:7751dad38212a5a55fedfa3f65e439df1b4ac8427bf1a5de3ea8f14d69a74d31" [label="/bin/sh -c echo ploneintranet > /etc/debian_chroot" shape="box"];
  "sha256:ca774938b86fe62361144491256f0741eb6113ec18873162a5d1e2c0a355af4f" [label="sha256:ca774938b86fe62361144491256f0741eb6113ec18873162a5d1e2c0a355af4f" shape="plaintext"];
  "sha256:0fbe5603a1f28b2eada3842b4758da090df615dfc605c327cfca011e42644374" -> "sha256:be04113ad99fdf2aa5d518131e6c73df18bb06058bd4cce59d22ef1b9fb451c7" [label=""];
  "sha256:be04113ad99fdf2aa5d518131e6c73df18bb06058bd4cce59d22ef1b9fb451c7" -> "sha256:0938d02e4437ede0839e2fd6740031376d51a3d70268ea89b67a847670c216bf" [label=""];
  "sha256:0938d02e4437ede0839e2fd6740031376d51a3d70268ea89b67a847670c216bf" -> "sha256:3694febfc8f9d9458b03780bfbc2e959fbf3109cd09c25975f3df646f257fbf0" [label=""];
  "sha256:3694febfc8f9d9458b03780bfbc2e959fbf3109cd09c25975f3df646f257fbf0" -> "sha256:dfecca7b44620a2fb5d79c8296a04652564b2b68dd8e49ca972561623f7eaf7b" [label=""];
  "sha256:dfecca7b44620a2fb5d79c8296a04652564b2b68dd8e49ca972561623f7eaf7b" -> "sha256:485584122ea8c5a15e5236df14926581af4bbd310b5bb7496320f49e4d619fb7" [label=""];
  "sha256:485584122ea8c5a15e5236df14926581af4bbd310b5bb7496320f49e4d619fb7" -> "sha256:6ac3cb93aa0c02e7a89af9f7950206b1a4a7ae71c4b323a6c0ce5c57b06f3410" [label=""];
  "sha256:6ac3cb93aa0c02e7a89af9f7950206b1a4a7ae71c4b323a6c0ce5c57b06f3410" -> "sha256:5acd42eeac8f99ab2dd116b530a3b23f5305d31a5ad12bec393805a297d91165" [label=""];
  "sha256:5acd42eeac8f99ab2dd116b530a3b23f5305d31a5ad12bec393805a297d91165" -> "sha256:ffbe41cc838ca55108708da4e9be2859296b88c0b80b89c14ebe530338a818cb" [label=""];
  "sha256:ffbe41cc838ca55108708da4e9be2859296b88c0b80b89c14ebe530338a818cb" -> "sha256:7751dad38212a5a55fedfa3f65e439df1b4ac8427bf1a5de3ea8f14d69a74d31" [label=""];
  "sha256:7751dad38212a5a55fedfa3f65e439df1b4ac8427bf1a5de3ea8f14d69a74d31" -> "sha256:ca774938b86fe62361144491256f0741eb6113ec18873162a5d1e2c0a355af4f" [label=""];
}

