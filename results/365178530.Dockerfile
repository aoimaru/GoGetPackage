[app/sources/365178530.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:452a917a889502bd82e8e4e98976afa6a654f3a5262810a0831e815a4cc7bfeb" [label="/bin/sh -c apt-get update   && apt-get install -y --no-install-recommends     gdb   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cd199d23438ee379c087754b83682538e6dfef0a28196381e8338c1df9459c95" [label="/bin/sh -c curl -s https://static.rust-lang.org/rustup.sh   | sh -s -- --yes --disable-sudo --revision=$RUST_VERSION   && rustc --version && cargo --version" shape="box"];
  "sha256:6af41901f76275fcd78dcebf1fa9e7b5d03633fdb5ce1ee2bdadb528b93da7e0" [label="/bin/sh -c mkdir -p \"$CARGO_HOME\" \"$SRC_PATH\"" shape="box"];
  "sha256:130b4e2851e531f78dedffbfa4815e172a6cd809d2ad324e805e815d5fb80402" [label="mkdir{path=/src}" shape="note"];
  "sha256:67a5d7ee1457ed07dca567a8a29b141a553e44d8c949fc90befafb692631031b" [label="sha256:67a5d7ee1457ed07dca567a8a29b141a553e44d8c949fc90befafb692631031b" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:452a917a889502bd82e8e4e98976afa6a654f3a5262810a0831e815a4cc7bfeb" [label=""];
  "sha256:452a917a889502bd82e8e4e98976afa6a654f3a5262810a0831e815a4cc7bfeb" -> "sha256:cd199d23438ee379c087754b83682538e6dfef0a28196381e8338c1df9459c95" [label=""];
  "sha256:cd199d23438ee379c087754b83682538e6dfef0a28196381e8338c1df9459c95" -> "sha256:6af41901f76275fcd78dcebf1fa9e7b5d03633fdb5ce1ee2bdadb528b93da7e0" [label=""];
  "sha256:6af41901f76275fcd78dcebf1fa9e7b5d03633fdb5ce1ee2bdadb528b93da7e0" -> "sha256:130b4e2851e531f78dedffbfa4815e172a6cd809d2ad324e805e815d5fb80402" [label=""];
  "sha256:130b4e2851e531f78dedffbfa4815e172a6cd809d2ad324e805e815d5fb80402" -> "sha256:67a5d7ee1457ed07dca567a8a29b141a553e44d8c949fc90befafb692631031b" [label=""];
}

