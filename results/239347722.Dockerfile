[app/sources/239347722.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:c037220672fb85997b30ee08afdc1e62c86d9d806b83e9f9b179c26f28187bc5" [label="/bin/sh -c pip install git+https://github.com/raccoonyy/buster.git#egg=buster" shape="box"];
  "sha256:523e0b57a6665e1172430be000bbf20df9fce688e504a442d1c365d23ec97308" [label="/bin/sh -c mkdir /deploy" shape="box"];
  "sha256:70f822ca68dc7f5daace2fbdcd02b75d1a469309500a4149afbc6428f16f0792" [label="mkdir{path=/deploy}" shape="note"];
  "sha256:029c05e53be572162694113fc5d836b2f95fe89b78984928b877a5176af63a04" [label="local://context" shape="ellipse"];
  "sha256:fc5ef3b84d6bae51ad2fd3b5fab9d2f93f464e08a6834bf80e5b29d7906d28f7" [label="copy{src=/scripts, dest=/deploy/}" shape="note"];
  "sha256:e37c18ce522211e2d56e8f7132a4a220dca0db28c567cdc02fba59f8e0c2b49c" [label="/bin/sh -c chmod a+x     /deploy/*.sh" shape="box"];
  "sha256:e28a4386d63b28ba9b13155f2e28de46076e6b7125955d5c6a71c4c69c6d96b2" [label="sha256:e28a4386d63b28ba9b13155f2e28de46076e6b7125955d5c6a71c4c69c6d96b2" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:c037220672fb85997b30ee08afdc1e62c86d9d806b83e9f9b179c26f28187bc5" [label=""];
  "sha256:c037220672fb85997b30ee08afdc1e62c86d9d806b83e9f9b179c26f28187bc5" -> "sha256:523e0b57a6665e1172430be000bbf20df9fce688e504a442d1c365d23ec97308" [label=""];
  "sha256:523e0b57a6665e1172430be000bbf20df9fce688e504a442d1c365d23ec97308" -> "sha256:70f822ca68dc7f5daace2fbdcd02b75d1a469309500a4149afbc6428f16f0792" [label=""];
  "sha256:70f822ca68dc7f5daace2fbdcd02b75d1a469309500a4149afbc6428f16f0792" -> "sha256:fc5ef3b84d6bae51ad2fd3b5fab9d2f93f464e08a6834bf80e5b29d7906d28f7" [label=""];
  "sha256:029c05e53be572162694113fc5d836b2f95fe89b78984928b877a5176af63a04" -> "sha256:fc5ef3b84d6bae51ad2fd3b5fab9d2f93f464e08a6834bf80e5b29d7906d28f7" [label=""];
  "sha256:fc5ef3b84d6bae51ad2fd3b5fab9d2f93f464e08a6834bf80e5b29d7906d28f7" -> "sha256:e37c18ce522211e2d56e8f7132a4a220dca0db28c567cdc02fba59f8e0c2b49c" [label=""];
  "sha256:e37c18ce522211e2d56e8f7132a4a220dca0db28c567cdc02fba59f8e0c2b49c" -> "sha256:e28a4386d63b28ba9b13155f2e28de46076e6b7125955d5c6a71c4c69c6d96b2" [label=""];
}

