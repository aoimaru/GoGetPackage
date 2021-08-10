[app/sources/363547765.Dockerfile]
digraph {
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" [label="docker-image://docker.io/library/ruby:2.5.0" shape="ellipse"];
  "sha256:55437f1e34a998465835804250071c35e9ce8110cec361db9760c394d497ea54" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs" shape="box"];
  "sha256:748ccf3eb38f73a9c81f3471575999f8a24aa093e2afb4e03d5575d59fd8b06b" [label="/bin/sh -c mkdir /myapp" shape="box"];
  "sha256:ba46b0a9e8a31169bd151d14637b7eff489696cd8b54a14ed5bf218f15bd76fc" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:d4d604cc3935892517d3ceb6ef00ba460d81494cba442957d01d7d67a80dd1cd" [label="local://context" shape="ellipse"];
  "sha256:e5ad8dd1617bcb8e2b78b039c543cf26f3aefd1c2a8b7090ccb2cfba6c991495" [label="copy{src=/Gemfile, dest=/myapp/Gemfile}" shape="note"];
  "sha256:07441dceb225103e235c827ceac19d5e98ecd0ad5ea44ad71d5736323e2df6df" [label="copy{src=/Gemfile.lock, dest=/myapp/Gemfile.lock}" shape="note"];
  "sha256:748bf86b367e48a293549e8f9f3847e015dabceeca31ab91ccc2d43ad7671911" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:8e9be1f1055a458023a11ad3651cbe005e073af48c3fbd4eeeffe7d8036aac8b" [label="sha256:8e9be1f1055a458023a11ad3651cbe005e073af48c3fbd4eeeffe7d8036aac8b" shape="plaintext"];
  "sha256:abcab5f531da58b7f8d0805f27357168d7598e41aa2fa6232a3ea8ce2317f31b" -> "sha256:55437f1e34a998465835804250071c35e9ce8110cec361db9760c394d497ea54" [label=""];
  "sha256:55437f1e34a998465835804250071c35e9ce8110cec361db9760c394d497ea54" -> "sha256:748ccf3eb38f73a9c81f3471575999f8a24aa093e2afb4e03d5575d59fd8b06b" [label=""];
  "sha256:748ccf3eb38f73a9c81f3471575999f8a24aa093e2afb4e03d5575d59fd8b06b" -> "sha256:ba46b0a9e8a31169bd151d14637b7eff489696cd8b54a14ed5bf218f15bd76fc" [label=""];
  "sha256:ba46b0a9e8a31169bd151d14637b7eff489696cd8b54a14ed5bf218f15bd76fc" -> "sha256:e5ad8dd1617bcb8e2b78b039c543cf26f3aefd1c2a8b7090ccb2cfba6c991495" [label=""];
  "sha256:d4d604cc3935892517d3ceb6ef00ba460d81494cba442957d01d7d67a80dd1cd" -> "sha256:e5ad8dd1617bcb8e2b78b039c543cf26f3aefd1c2a8b7090ccb2cfba6c991495" [label=""];
  "sha256:e5ad8dd1617bcb8e2b78b039c543cf26f3aefd1c2a8b7090ccb2cfba6c991495" -> "sha256:07441dceb225103e235c827ceac19d5e98ecd0ad5ea44ad71d5736323e2df6df" [label=""];
  "sha256:d4d604cc3935892517d3ceb6ef00ba460d81494cba442957d01d7d67a80dd1cd" -> "sha256:07441dceb225103e235c827ceac19d5e98ecd0ad5ea44ad71d5736323e2df6df" [label=""];
  "sha256:07441dceb225103e235c827ceac19d5e98ecd0ad5ea44ad71d5736323e2df6df" -> "sha256:748bf86b367e48a293549e8f9f3847e015dabceeca31ab91ccc2d43ad7671911" [label=""];
  "sha256:748bf86b367e48a293549e8f9f3847e015dabceeca31ab91ccc2d43ad7671911" -> "sha256:8e9be1f1055a458023a11ad3651cbe005e073af48c3fbd4eeeffe7d8036aac8b" [label=""];
}

