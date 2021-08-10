[app/sources/282706176.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:c9a1499bd5e8ae9f6b2713b7eaae44d7890e7ce96b3a10f56de4094e6ce1822e" [label="/bin/sh -c apt-get update && apt-get install -y python && apt-get install -y wget && wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py" shape="box"];
  "sha256:d33b82920b88449a1ce18d2c540d617cbf9502634718888e17ca60d6bbadfe2b" [label="/bin/sh -c pip install awscli --upgrade" shape="box"];
  "sha256:6132c7d6e87f5432c887dceda009fcd33366c507f54d7d64145ba3c095cade66" [label="local://context" shape="ellipse"];
  "sha256:caa846ee22b5b65c827f9b2bb170e36a0136fb99eb705f2655d2408c7a1edb85" [label="copy{src=/create-dynamodb-tables.sh, dest=/}" shape="note"];
  "sha256:95d61d0b8743772886554e022041378eeb024fd29ce737646758761aad458a9d" [label="copy{src=/ftgo-order-history.json, dest=/}" shape="note"];
  "sha256:4f562d470cafc32bfcdcb44b3c70d7dab4384fd0e1118cf4f709cc578873a2b5" [label="copy{src=/wait-for-dynamodblocal.sh, dest=/}" shape="note"];
  "sha256:b11febad0cb0e9f0976ad823c353bda0220e905dd1843ab7aad85b254881ec5f" [label="sha256:b11febad0cb0e9f0976ad823c353bda0220e905dd1843ab7aad85b254881ec5f" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:c9a1499bd5e8ae9f6b2713b7eaae44d7890e7ce96b3a10f56de4094e6ce1822e" [label=""];
  "sha256:c9a1499bd5e8ae9f6b2713b7eaae44d7890e7ce96b3a10f56de4094e6ce1822e" -> "sha256:d33b82920b88449a1ce18d2c540d617cbf9502634718888e17ca60d6bbadfe2b" [label=""];
  "sha256:d33b82920b88449a1ce18d2c540d617cbf9502634718888e17ca60d6bbadfe2b" -> "sha256:caa846ee22b5b65c827f9b2bb170e36a0136fb99eb705f2655d2408c7a1edb85" [label=""];
  "sha256:6132c7d6e87f5432c887dceda009fcd33366c507f54d7d64145ba3c095cade66" -> "sha256:caa846ee22b5b65c827f9b2bb170e36a0136fb99eb705f2655d2408c7a1edb85" [label=""];
  "sha256:caa846ee22b5b65c827f9b2bb170e36a0136fb99eb705f2655d2408c7a1edb85" -> "sha256:95d61d0b8743772886554e022041378eeb024fd29ce737646758761aad458a9d" [label=""];
  "sha256:6132c7d6e87f5432c887dceda009fcd33366c507f54d7d64145ba3c095cade66" -> "sha256:95d61d0b8743772886554e022041378eeb024fd29ce737646758761aad458a9d" [label=""];
  "sha256:95d61d0b8743772886554e022041378eeb024fd29ce737646758761aad458a9d" -> "sha256:4f562d470cafc32bfcdcb44b3c70d7dab4384fd0e1118cf4f709cc578873a2b5" [label=""];
  "sha256:6132c7d6e87f5432c887dceda009fcd33366c507f54d7d64145ba3c095cade66" -> "sha256:4f562d470cafc32bfcdcb44b3c70d7dab4384fd0e1118cf4f709cc578873a2b5" [label=""];
  "sha256:4f562d470cafc32bfcdcb44b3c70d7dab4384fd0e1118cf4f709cc578873a2b5" -> "sha256:b11febad0cb0e9f0976ad823c353bda0220e905dd1843ab7aad85b254881ec5f" [label=""];
}

