[app/sources/444903819.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:ccf23c6b30834cf1321c8d40c3e64cebb73ec4b9d70d20137866a4390f4607b3" [label="local://context" shape="ellipse"];
  "sha256:d7bdb3741ca80282c56a6be573596679b8352f161012951ce65cf6446cadde9e" [label="copy{src=/checksums, dest=/tmp/checksums}" shape="note"];
  "sha256:689f502cd5ecfc96709879c3e8766a5330f6a64f7d52913eee1b39b48e247d07" [label="copy{src=/scripts, dest=/tmp/scripts}" shape="note"];
  "sha256:d9b7796778ab2eaf6fdb459e1a0b8d02d004fce69a8dd7959e6af755f693aa12" [label="/bin/sh -c /tmp/scripts/build_install_llvm.sh ${buildscript_args}" shape="box"];
  "sha256:df556c749e04eaa18083d0fb30b330f963c3b27dd7f2b3197bf120a2198183eb" [label="sha256:df556c749e04eaa18083d0fb30b330f963c3b27dd7f2b3197bf120a2198183eb" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d7bdb3741ca80282c56a6be573596679b8352f161012951ce65cf6446cadde9e" [label=""];
  "sha256:ccf23c6b30834cf1321c8d40c3e64cebb73ec4b9d70d20137866a4390f4607b3" -> "sha256:d7bdb3741ca80282c56a6be573596679b8352f161012951ce65cf6446cadde9e" [label=""];
  "sha256:d7bdb3741ca80282c56a6be573596679b8352f161012951ce65cf6446cadde9e" -> "sha256:689f502cd5ecfc96709879c3e8766a5330f6a64f7d52913eee1b39b48e247d07" [label=""];
  "sha256:ccf23c6b30834cf1321c8d40c3e64cebb73ec4b9d70d20137866a4390f4607b3" -> "sha256:689f502cd5ecfc96709879c3e8766a5330f6a64f7d52913eee1b39b48e247d07" [label=""];
  "sha256:689f502cd5ecfc96709879c3e8766a5330f6a64f7d52913eee1b39b48e247d07" -> "sha256:d9b7796778ab2eaf6fdb459e1a0b8d02d004fce69a8dd7959e6af755f693aa12" [label=""];
  "sha256:d9b7796778ab2eaf6fdb459e1a0b8d02d004fce69a8dd7959e6af755f693aa12" -> "sha256:df556c749e04eaa18083d0fb30b330f963c3b27dd7f2b3197bf120a2198183eb" [label=""];
}

