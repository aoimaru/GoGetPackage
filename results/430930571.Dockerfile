[app/sources/430930571.Dockerfile]
digraph {
  "sha256:9760c05b229962bc8a697961abfedff3970fc1a024af7bfc415ed7d0f0aa77f6" [label="docker-image://docker.io/library/php:7.3-cli-stretch" shape="ellipse"];
  "sha256:9c3753529c86b63ba178ae856db33bf043aef2dec0984151eaba6d98440d2e3c" [label="mkdir{path=/code}" shape="note"];
  "sha256:0563ee337bec82d45f38191d7af814b53b8e5a55eaec3525de04a88cdc983454" [label="local://context" shape="ellipse"];
  "sha256:b7d825323fda877a6a0601007de1216f7fbd9a79078e6f174c8154f7f847ebaf" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:838fa723f55972aa3953f63f0f5bafffa08bb13a5f8a0dd3b75e0073e666a596" [label="/bin/sh -c cp flatc_debian_stretch flatc" shape="box"];
  "sha256:bcc949d1ef105f439bf5abba89aa48af9a9801809e10a1f450ac058be41ef8fb" [label="mkdir{path=/code/tests}" shape="note"];
  "sha256:7771cc927ec14643593d47d9ff4d89be0a322265eae9fdf50de6ff2e2f0e8edc" [label="/bin/sh -c php --version" shape="box"];
  "sha256:509d4a167fcc4bc7ac71aa1bf9745f38238eaf5578241fceecfa5b5bb1a98fca" [label="/bin/sh -c php phpTest.php" shape="box"];
  "sha256:e90618e03e7425070b41265b637d25ff4f18be5df93bcebda3709cd3298373d2" [label="/bin/sh -c sh phpUnionVectorTest.sh" shape="box"];
  "sha256:d22ac6198e4c2f94fa72dbb1f1aeb6150ae5a7e41e6d75da99071dd79ff55bb1" [label="sha256:d22ac6198e4c2f94fa72dbb1f1aeb6150ae5a7e41e6d75da99071dd79ff55bb1" shape="plaintext"];
  "sha256:9760c05b229962bc8a697961abfedff3970fc1a024af7bfc415ed7d0f0aa77f6" -> "sha256:9c3753529c86b63ba178ae856db33bf043aef2dec0984151eaba6d98440d2e3c" [label=""];
  "sha256:9c3753529c86b63ba178ae856db33bf043aef2dec0984151eaba6d98440d2e3c" -> "sha256:b7d825323fda877a6a0601007de1216f7fbd9a79078e6f174c8154f7f847ebaf" [label=""];
  "sha256:0563ee337bec82d45f38191d7af814b53b8e5a55eaec3525de04a88cdc983454" -> "sha256:b7d825323fda877a6a0601007de1216f7fbd9a79078e6f174c8154f7f847ebaf" [label=""];
  "sha256:b7d825323fda877a6a0601007de1216f7fbd9a79078e6f174c8154f7f847ebaf" -> "sha256:838fa723f55972aa3953f63f0f5bafffa08bb13a5f8a0dd3b75e0073e666a596" [label=""];
  "sha256:838fa723f55972aa3953f63f0f5bafffa08bb13a5f8a0dd3b75e0073e666a596" -> "sha256:bcc949d1ef105f439bf5abba89aa48af9a9801809e10a1f450ac058be41ef8fb" [label=""];
  "sha256:bcc949d1ef105f439bf5abba89aa48af9a9801809e10a1f450ac058be41ef8fb" -> "sha256:7771cc927ec14643593d47d9ff4d89be0a322265eae9fdf50de6ff2e2f0e8edc" [label=""];
  "sha256:7771cc927ec14643593d47d9ff4d89be0a322265eae9fdf50de6ff2e2f0e8edc" -> "sha256:509d4a167fcc4bc7ac71aa1bf9745f38238eaf5578241fceecfa5b5bb1a98fca" [label=""];
  "sha256:509d4a167fcc4bc7ac71aa1bf9745f38238eaf5578241fceecfa5b5bb1a98fca" -> "sha256:e90618e03e7425070b41265b637d25ff4f18be5df93bcebda3709cd3298373d2" [label=""];
  "sha256:e90618e03e7425070b41265b637d25ff4f18be5df93bcebda3709cd3298373d2" -> "sha256:d22ac6198e4c2f94fa72dbb1f1aeb6150ae5a7e41e6d75da99071dd79ff55bb1" [label=""];
}

