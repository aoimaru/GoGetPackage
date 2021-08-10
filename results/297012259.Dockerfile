[app/sources/297012259.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:fa5657dca98a85097bf471d96131ebcc3469dff93855acec8e8da4eed9b3535b" [label="/bin/sh -c pip --no-cache-dir install         numpy         scipy         sklearn         pandas         SQLAlchemy         Flask         gevent         redis         rq         six" shape="box"];
  "sha256:fb7851508f5f9f6dfa25ff7ba988924d0d598872d03bfef7363a89c831f0fb20" [label="/bin/sh -c pip --no-cache-dir install xcessiv" shape="box"];
  "sha256:3250a64d86c08960c889facc495c2b5b2637a68f0aa49040d879ee1b193712e8" [label="/bin/sh -c mkdir /XcessivProjects" shape="box"];
  "sha256:85c075611e56d2ae1ad788df054f9e2e70b4ab3293c7eec4e9f30a972e70e20e" [label="mkdir{path=/XcessivProjects}" shape="note"];
  "sha256:7ceb84f2cac30422f33fe43ee8de5c1bad41096d5c56a5d50384fe0473ec88e8" [label="sha256:7ceb84f2cac30422f33fe43ee8de5c1bad41096d5c56a5d50384fe0473ec88e8" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:fa5657dca98a85097bf471d96131ebcc3469dff93855acec8e8da4eed9b3535b" [label=""];
  "sha256:fa5657dca98a85097bf471d96131ebcc3469dff93855acec8e8da4eed9b3535b" -> "sha256:fb7851508f5f9f6dfa25ff7ba988924d0d598872d03bfef7363a89c831f0fb20" [label=""];
  "sha256:fb7851508f5f9f6dfa25ff7ba988924d0d598872d03bfef7363a89c831f0fb20" -> "sha256:3250a64d86c08960c889facc495c2b5b2637a68f0aa49040d879ee1b193712e8" [label=""];
  "sha256:3250a64d86c08960c889facc495c2b5b2637a68f0aa49040d879ee1b193712e8" -> "sha256:85c075611e56d2ae1ad788df054f9e2e70b4ab3293c7eec4e9f30a972e70e20e" [label=""];
  "sha256:85c075611e56d2ae1ad788df054f9e2e70b4ab3293c7eec4e9f30a972e70e20e" -> "sha256:7ceb84f2cac30422f33fe43ee8de5c1bad41096d5c56a5d50384fe0473ec88e8" [label=""];
}

