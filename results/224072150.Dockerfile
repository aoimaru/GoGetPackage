[app/sources/224072150.Dockerfile]
digraph {
  "sha256:1a4b06451d099f6f92891f9675c53977ffd11f042ffa7aa71c6d263b59d6a1a1" [label="local://context" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" [label="/bin/sh -c mkdir -p /service" shape="box"];
  "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" [label="mkdir{path=/service}" shape="note"];
  "sha256:6d67bed8f8665e2cd87258d91a143f023ba96ea9673cebe554233d24a0f7e647" [label="/bin/sh -c apk add --no-cache \t\tgit \t&& go get github.com/julienschmidt/httprouter \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:178d3a40aeb0e19b92a6c2682665ee317a54efb82d5066e2bb88a88052f89328" [label="/bin/sh -c apk add --no-cache \t\tbash \t\tbuild-base \t\tpython \t\tpy-pip \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c7997b1ff7b0439b23dd8bf7432cd70fd2018ff7df30c955aca7ca19535394f6" [label="/bin/sh -c pip install ropgadget" shape="box"];
  "sha256:420f2e83a00df25396fdf992458f0fb7c1df2de638f4736267e202d5d35fe64e" [label="/bin/sh -c apk del --purge \t\tbuild-base \t\tgit \t&& rm -rf /var/cache/apk/* yara-3.5.0" shape="box"];
  "sha256:a44df99bbf46a0c379d45dedb360152c93adf87c3e69134914455c52995f8255" [label="copy{src=/LICENSE, dest=/service}" shape="note"];
  "sha256:906a07a91367a094af5bbee2ddd1cbeca8f3b8e9b12bda0081a270379a06bda0" [label="copy{src=/README.md, dest=/service}" shape="note"];
  "sha256:37451b9d9c4257e77d1ce6ab42b026b8ea28796de5f00cdc9333f622a1432382" [label="copy{src=/gogadget.go, dest=/service}" shape="note"];
  "sha256:afddaea3152231335310cb3696fcc45a5e431563a1a9906ea3115562b85073ce" [label="/bin/sh -c go build gogadget.go" shape="box"];
  "sha256:0e927db6e4b2a652b2101a4e6febfda81910b165536f10f8e9df54cbe7ed9e08" [label="copy{src=/service.conf, dest=/service/service.conf}" shape="note"];
  "sha256:49cc1e637fe8eeaacf448fe1068773b7903ef418d72d12034cdd7588fd07b75e" [label="sha256:49cc1e637fe8eeaacf448fe1068773b7903ef418d72d12034cdd7588fd07b75e" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" [label=""];
  "sha256:081620d053361a81482004de3645efe47d446173fa1ba0fe372c118cac6dc103" -> "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" [label=""];
  "sha256:57147e0b7136290060c8b46939c614ab5dfe4ff528658e65558288d4981d0b17" -> "sha256:6d67bed8f8665e2cd87258d91a143f023ba96ea9673cebe554233d24a0f7e647" [label=""];
  "sha256:6d67bed8f8665e2cd87258d91a143f023ba96ea9673cebe554233d24a0f7e647" -> "sha256:178d3a40aeb0e19b92a6c2682665ee317a54efb82d5066e2bb88a88052f89328" [label=""];
  "sha256:178d3a40aeb0e19b92a6c2682665ee317a54efb82d5066e2bb88a88052f89328" -> "sha256:c7997b1ff7b0439b23dd8bf7432cd70fd2018ff7df30c955aca7ca19535394f6" [label=""];
  "sha256:c7997b1ff7b0439b23dd8bf7432cd70fd2018ff7df30c955aca7ca19535394f6" -> "sha256:420f2e83a00df25396fdf992458f0fb7c1df2de638f4736267e202d5d35fe64e" [label=""];
  "sha256:420f2e83a00df25396fdf992458f0fb7c1df2de638f4736267e202d5d35fe64e" -> "sha256:a44df99bbf46a0c379d45dedb360152c93adf87c3e69134914455c52995f8255" [label=""];
  "sha256:1a4b06451d099f6f92891f9675c53977ffd11f042ffa7aa71c6d263b59d6a1a1" -> "sha256:a44df99bbf46a0c379d45dedb360152c93adf87c3e69134914455c52995f8255" [label=""];
  "sha256:a44df99bbf46a0c379d45dedb360152c93adf87c3e69134914455c52995f8255" -> "sha256:906a07a91367a094af5bbee2ddd1cbeca8f3b8e9b12bda0081a270379a06bda0" [label=""];
  "sha256:1a4b06451d099f6f92891f9675c53977ffd11f042ffa7aa71c6d263b59d6a1a1" -> "sha256:906a07a91367a094af5bbee2ddd1cbeca8f3b8e9b12bda0081a270379a06bda0" [label=""];
  "sha256:906a07a91367a094af5bbee2ddd1cbeca8f3b8e9b12bda0081a270379a06bda0" -> "sha256:37451b9d9c4257e77d1ce6ab42b026b8ea28796de5f00cdc9333f622a1432382" [label=""];
  "sha256:1a4b06451d099f6f92891f9675c53977ffd11f042ffa7aa71c6d263b59d6a1a1" -> "sha256:37451b9d9c4257e77d1ce6ab42b026b8ea28796de5f00cdc9333f622a1432382" [label=""];
  "sha256:37451b9d9c4257e77d1ce6ab42b026b8ea28796de5f00cdc9333f622a1432382" -> "sha256:afddaea3152231335310cb3696fcc45a5e431563a1a9906ea3115562b85073ce" [label=""];
  "sha256:afddaea3152231335310cb3696fcc45a5e431563a1a9906ea3115562b85073ce" -> "sha256:0e927db6e4b2a652b2101a4e6febfda81910b165536f10f8e9df54cbe7ed9e08" [label=""];
  "sha256:1a4b06451d099f6f92891f9675c53977ffd11f042ffa7aa71c6d263b59d6a1a1" -> "sha256:0e927db6e4b2a652b2101a4e6febfda81910b165536f10f8e9df54cbe7ed9e08" [label=""];
  "sha256:0e927db6e4b2a652b2101a4e6febfda81910b165536f10f8e9df54cbe7ed9e08" -> "sha256:49cc1e637fe8eeaacf448fe1068773b7903ef418d72d12034cdd7588fd07b75e" [label=""];
}

