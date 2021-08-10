[app/sources/128535668.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" [label="local://context" shape="ellipse"];
  "sha256:f787f0789fc283ae8e94afc21573d04f7905e619cb98dc27cb05f35d5fd561d0" [label="copy{src=/scripts/cross-apt-packages.sh, dest=/scripts/}" shape="note"];
  "sha256:4c265667d3ae58a5a301a91568138065d2b4052fac701e022e06439721405266" [label="/bin/sh -c sh /scripts/cross-apt-packages.sh" shape="box"];
  "sha256:334dc4f5015be8bf2f15066c13e24b169084b0b3beeeeb729fdd90d58076c537" [label="copy{src=/scripts/make3.sh, dest=/scripts/}" shape="note"];
  "sha256:bb5641507e8ba8ea68b379a60ef86cfdaa855709db4e6fcd1f3dcda57be88ff7" [label="/bin/sh -c sh /scripts/make3.sh" shape="box"];
  "sha256:b4799e1f68fa592ecf8bdef6115ddaeefca8e86cec03dc1e922e3a19a3a99e09" [label="copy{src=/scripts/crosstool-ng.sh, dest=/scripts/}" shape="note"];
  "sha256:3a12735cea110413d29bcaa4fefb29735911da70f6069e6466a3256b79941fd2" [label="/bin/sh -c sh /scripts/crosstool-ng.sh" shape="box"];
  "sha256:366b65f441408870908f04cf67276e60d8ce195cae73fd06b85b92779a24ab1c" [label="copy{src=/scripts/rustbuild-setup.sh, dest=/scripts/}" shape="note"];
  "sha256:c2febc44e878da7bdca65850409facb59f0e8c21ab085176bd49f87120aa512b" [label="/bin/sh -c sh /scripts/rustbuild-setup.sh" shape="box"];
  "sha256:808f879dac93f30052b3a6c9b983650b8347f62972d7fcea0faf2692f58dabc4" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:e7a6357d2a3f360ca5ae0b74ecfeda824a05fa988c8b873b7b07fe5a8aea4c69" [label="copy{src=/dist-s390x-linux/patches, dest=/tmp/patches/}" shape="note"];
  "sha256:493bda1a3da68a035cfe3027fb594ca2355a28ac816d79e73df3e9fc76c77728" [label="copy{src=/dist-s390x-linux/s390x-linux-gnu.config, dest=/tmp/},copy{src=/dist-s390x-linux/build-s390x-toolchain.sh, dest=/tmp/}" shape="note"];
  "sha256:9193a8c29889ff9af44c806558ad3fb21cb09feb7e496f28f2339d8656f28cbd" [label="/bin/sh -c ./build-s390x-toolchain.sh" shape="box"];
  "sha256:54306f109ff906724297fcec7d011410a670ce7bbac76341efb14219943d05aa" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:85bfc122313cf976ef6085fcb9436b0a95cd26df5dee5d554ca7c7b87f8c44cc" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:a641af12fa232627f76e463422b9df38938c362ecb9972d091481b05b5f9abaa" [label="sha256:a641af12fa232627f76e463422b9df38938c362ecb9972d091481b05b5f9abaa" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f787f0789fc283ae8e94afc21573d04f7905e619cb98dc27cb05f35d5fd561d0" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:f787f0789fc283ae8e94afc21573d04f7905e619cb98dc27cb05f35d5fd561d0" [label=""];
  "sha256:f787f0789fc283ae8e94afc21573d04f7905e619cb98dc27cb05f35d5fd561d0" -> "sha256:4c265667d3ae58a5a301a91568138065d2b4052fac701e022e06439721405266" [label=""];
  "sha256:4c265667d3ae58a5a301a91568138065d2b4052fac701e022e06439721405266" -> "sha256:334dc4f5015be8bf2f15066c13e24b169084b0b3beeeeb729fdd90d58076c537" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:334dc4f5015be8bf2f15066c13e24b169084b0b3beeeeb729fdd90d58076c537" [label=""];
  "sha256:334dc4f5015be8bf2f15066c13e24b169084b0b3beeeeb729fdd90d58076c537" -> "sha256:bb5641507e8ba8ea68b379a60ef86cfdaa855709db4e6fcd1f3dcda57be88ff7" [label=""];
  "sha256:bb5641507e8ba8ea68b379a60ef86cfdaa855709db4e6fcd1f3dcda57be88ff7" -> "sha256:b4799e1f68fa592ecf8bdef6115ddaeefca8e86cec03dc1e922e3a19a3a99e09" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:b4799e1f68fa592ecf8bdef6115ddaeefca8e86cec03dc1e922e3a19a3a99e09" [label=""];
  "sha256:b4799e1f68fa592ecf8bdef6115ddaeefca8e86cec03dc1e922e3a19a3a99e09" -> "sha256:3a12735cea110413d29bcaa4fefb29735911da70f6069e6466a3256b79941fd2" [label=""];
  "sha256:3a12735cea110413d29bcaa4fefb29735911da70f6069e6466a3256b79941fd2" -> "sha256:366b65f441408870908f04cf67276e60d8ce195cae73fd06b85b92779a24ab1c" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:366b65f441408870908f04cf67276e60d8ce195cae73fd06b85b92779a24ab1c" [label=""];
  "sha256:366b65f441408870908f04cf67276e60d8ce195cae73fd06b85b92779a24ab1c" -> "sha256:c2febc44e878da7bdca65850409facb59f0e8c21ab085176bd49f87120aa512b" [label=""];
  "sha256:c2febc44e878da7bdca65850409facb59f0e8c21ab085176bd49f87120aa512b" -> "sha256:808f879dac93f30052b3a6c9b983650b8347f62972d7fcea0faf2692f58dabc4" [label=""];
  "sha256:808f879dac93f30052b3a6c9b983650b8347f62972d7fcea0faf2692f58dabc4" -> "sha256:e7a6357d2a3f360ca5ae0b74ecfeda824a05fa988c8b873b7b07fe5a8aea4c69" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:e7a6357d2a3f360ca5ae0b74ecfeda824a05fa988c8b873b7b07fe5a8aea4c69" [label=""];
  "sha256:e7a6357d2a3f360ca5ae0b74ecfeda824a05fa988c8b873b7b07fe5a8aea4c69" -> "sha256:493bda1a3da68a035cfe3027fb594ca2355a28ac816d79e73df3e9fc76c77728" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:493bda1a3da68a035cfe3027fb594ca2355a28ac816d79e73df3e9fc76c77728" [label=""];
  "sha256:493bda1a3da68a035cfe3027fb594ca2355a28ac816d79e73df3e9fc76c77728" -> "sha256:9193a8c29889ff9af44c806558ad3fb21cb09feb7e496f28f2339d8656f28cbd" [label=""];
  "sha256:9193a8c29889ff9af44c806558ad3fb21cb09feb7e496f28f2339d8656f28cbd" -> "sha256:54306f109ff906724297fcec7d011410a670ce7bbac76341efb14219943d05aa" [label=""];
  "sha256:ef8317ec551a9cdce9a06423eb4f8fe288253ef5cdfaa39af3a2b5905e5f70ea" -> "sha256:54306f109ff906724297fcec7d011410a670ce7bbac76341efb14219943d05aa" [label=""];
  "sha256:54306f109ff906724297fcec7d011410a670ce7bbac76341efb14219943d05aa" -> "sha256:85bfc122313cf976ef6085fcb9436b0a95cd26df5dee5d554ca7c7b87f8c44cc" [label=""];
  "sha256:85bfc122313cf976ef6085fcb9436b0a95cd26df5dee5d554ca7c7b87f8c44cc" -> "sha256:a641af12fa232627f76e463422b9df38938c362ecb9972d091481b05b5f9abaa" [label=""];
}

