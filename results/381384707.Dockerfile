[app/sources/381384707.Dockerfile]
digraph {
  "sha256:455170d9f4aef5acfdfb6b5676cb40030de237fd92189293df47c381c9db3905" [label="docker-image://docker.io/library/ruby:2.3.5-alpine@sha256:a70a4f73340441c0be1634f244bc81fb70409384309fb6423aa9e3f8109b37c3" shape="ellipse"];
  "sha256:dccc7c978549ef2502c87a25fa5f7fc8bc9a6ac097003487d2cf4f1a7a714a70" [label="/bin/sh -c apk update && apk --update add postgresql-client libstdc++" shape="box"];
  "sha256:96b8dda8c1bf1503a7ea5104c39a975c60380311484c5ad767a20d335293caf2" [label="/bin/sh -c gem update --system --no-ri --no-rdoc" shape="box"];
  "sha256:9e22c0b1879e5fdbb44e6f32224eae251206bb0f83b3d1dfdd2a451f05c6569d" [label="/bin/sh -c gem install bundler --no-ri --no-rdoc" shape="box"];
  "sha256:6a6ae110301f9cf1e1f973f20898d9a0bbbf2ef33ac0f459773c25ef08076fb7" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:eb7024c74acd0ec17a4f0b7f97c9c98e40f3e55617828cf366e73251b10c0d57" [label="local://context" shape="ellipse"];
  "sha256:10455099cf1e33bdf4e0566a8a3b272f477beb77783209c556b7d7c8987b0b52" [label="copy{src=/Gemfile, dest=/app/}" shape="note"];
  "sha256:50801198d3007c792be9691b51e6c4a7b96deb16147ced9a2bc50ca3507c228a" [label="copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:aa9834a48772853db3842cafea37bba09f6b755408c24b14572bb44b27f20ee8" [label="mkdir{path=/app}" shape="note"];
  "sha256:4597e364f8198efbae82774f7ddfc379f626433b81238a680b467fed1d2d65a6" [label="/bin/sh -c apk --update add --virtual build-dependencies g++ musl-dev make \tpostgresql-dev && \tbundle install --deployment && \tapk del build-dependencies" shape="box"];
  "sha256:d97b29f36b24b2d13cd6b1c7b39ae3f371b39cd31a4e4dfe45c74b60b774695c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:8040b3036bddcdc5042901aa0a3e3d13c9d43aaa202050ac0b3f447bd5305a1e" [label="/bin/sh -c chown -R nobody:nogroup /app" shape="box"];
  "sha256:3b8462b37b02523b82d91c105d6fe1a588c5fb574619f0b5df68a07d0c5d015f" [label="sha256:3b8462b37b02523b82d91c105d6fe1a588c5fb574619f0b5df68a07d0c5d015f" shape="plaintext"];
  "sha256:455170d9f4aef5acfdfb6b5676cb40030de237fd92189293df47c381c9db3905" -> "sha256:dccc7c978549ef2502c87a25fa5f7fc8bc9a6ac097003487d2cf4f1a7a714a70" [label=""];
  "sha256:dccc7c978549ef2502c87a25fa5f7fc8bc9a6ac097003487d2cf4f1a7a714a70" -> "sha256:96b8dda8c1bf1503a7ea5104c39a975c60380311484c5ad767a20d335293caf2" [label=""];
  "sha256:96b8dda8c1bf1503a7ea5104c39a975c60380311484c5ad767a20d335293caf2" -> "sha256:9e22c0b1879e5fdbb44e6f32224eae251206bb0f83b3d1dfdd2a451f05c6569d" [label=""];
  "sha256:9e22c0b1879e5fdbb44e6f32224eae251206bb0f83b3d1dfdd2a451f05c6569d" -> "sha256:6a6ae110301f9cf1e1f973f20898d9a0bbbf2ef33ac0f459773c25ef08076fb7" [label=""];
  "sha256:6a6ae110301f9cf1e1f973f20898d9a0bbbf2ef33ac0f459773c25ef08076fb7" -> "sha256:10455099cf1e33bdf4e0566a8a3b272f477beb77783209c556b7d7c8987b0b52" [label=""];
  "sha256:eb7024c74acd0ec17a4f0b7f97c9c98e40f3e55617828cf366e73251b10c0d57" -> "sha256:10455099cf1e33bdf4e0566a8a3b272f477beb77783209c556b7d7c8987b0b52" [label=""];
  "sha256:10455099cf1e33bdf4e0566a8a3b272f477beb77783209c556b7d7c8987b0b52" -> "sha256:50801198d3007c792be9691b51e6c4a7b96deb16147ced9a2bc50ca3507c228a" [label=""];
  "sha256:eb7024c74acd0ec17a4f0b7f97c9c98e40f3e55617828cf366e73251b10c0d57" -> "sha256:50801198d3007c792be9691b51e6c4a7b96deb16147ced9a2bc50ca3507c228a" [label=""];
  "sha256:50801198d3007c792be9691b51e6c4a7b96deb16147ced9a2bc50ca3507c228a" -> "sha256:aa9834a48772853db3842cafea37bba09f6b755408c24b14572bb44b27f20ee8" [label=""];
  "sha256:aa9834a48772853db3842cafea37bba09f6b755408c24b14572bb44b27f20ee8" -> "sha256:4597e364f8198efbae82774f7ddfc379f626433b81238a680b467fed1d2d65a6" [label=""];
  "sha256:4597e364f8198efbae82774f7ddfc379f626433b81238a680b467fed1d2d65a6" -> "sha256:d97b29f36b24b2d13cd6b1c7b39ae3f371b39cd31a4e4dfe45c74b60b774695c" [label=""];
  "sha256:eb7024c74acd0ec17a4f0b7f97c9c98e40f3e55617828cf366e73251b10c0d57" -> "sha256:d97b29f36b24b2d13cd6b1c7b39ae3f371b39cd31a4e4dfe45c74b60b774695c" [label=""];
  "sha256:d97b29f36b24b2d13cd6b1c7b39ae3f371b39cd31a4e4dfe45c74b60b774695c" -> "sha256:8040b3036bddcdc5042901aa0a3e3d13c9d43aaa202050ac0b3f447bd5305a1e" [label=""];
  "sha256:8040b3036bddcdc5042901aa0a3e3d13c9d43aaa202050ac0b3f447bd5305a1e" -> "sha256:3b8462b37b02523b82d91c105d6fe1a588c5fb574619f0b5df68a07d0c5d015f" [label=""];
}

