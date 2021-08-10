[app/sources/336358308.Dockerfile]
digraph {
  "sha256:e3ab66a1d3d43688407a39aba208fa6bbf3deaebb779daabbe8816d441ec24b0" [label="docker-image://docker.io/library/python:3.6-slim-jessie" shape="ellipse"];
  "sha256:dc924fa7fdb4063287adfe1b2af4e104488f9e44a7d84900fe6b8fa01e33f069" [label="mkdir{path=/InsightDocker}" shape="note"];
  "sha256:86e8609a341df5069f59e3f2ababc24eb26b7dcab16a1a3cfbb3bc39c14e78cd" [label="docker-image://docker.io/swaggerapi/swagger-codegen-cli:latest" shape="ellipse"];
  "sha256:fc3ed658abece7cabb1dd57dfa53a83aa99b294c1f3a4df80f22b11e27cae09d" [label="docker-image://docker.io/library/openjdk:12-jdk-alpine" shape="ellipse"];
  "sha256:f92a6983a6177e04c0846c690a7e643373fd94c72565438364c26c02fc3d37dd" [label="copy{src=/opt/swagger-codegen-cli/swagger-codegen-cli.jar, dest=/swagger-codegen-cli.jar}" shape="note"];
  "sha256:ddd5c2c0d0d1eab66f6d2a3bdf23fa5ad6ee52df44dfda129eba6ccc8730ffb4" [label="/bin/sh -c java -jar ./swagger-codegen-cli.jar generate  -i \"https://esi.evetech.net/_latest/swagger.json\"  -l python  -o /python-client" shape="box"];
  "sha256:663decc39f600075dd0e470819d8d8fe6c132208a9af52db9d8b8ca0a1daf43a" [label="copy{src=/python-client, dest=/InsightDocker/python-client}" shape="note"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:66b3a5c263c3ef29dd5c7e14aa627fe925ff08ac9faea4155ac79553cf33b8b0" [label="/bin/sh -c wget https://www.fuzzwork.co.uk/dump/sqlite-latest.sqlite.bz2" shape="box"];
  "sha256:0f0185433d9a21466f45fb3e933902899086ba7a79e0c0ad502ccc5613cc0157" [label="/bin/sh -c wget https://www.fuzzwork.co.uk/dump/sqlite-latest.sqlite.bz2.md5" shape="box"];
  "sha256:acb886ffefb3d0ac74c12931d9225568543bd894db9a049a99d35dafedc49b04" [label="/bin/sh -c md5sum -c sqlite-latest.sqlite.bz2.md5" shape="box"];
  "sha256:c1197f607aa158c9f327fd397e9998fd279d195eec3c52c16c079ff756ccfbe8" [label="/bin/sh -c bunzip2 sqlite-latest.sqlite.bz2" shape="box"];
  "sha256:509067ba95a235d6b0d88b5383dc6984e4069b31411452eaaf4a2fbaff58b999" [label="copy{src=/sqlite-latest.sqlite, dest=/InsightDocker/sqlite-latest.sqlite}" shape="note"];
  "sha256:a9db4d2758f2b430552aaa6c132e27de9c25450cd05e363c0444f17a8918613b" [label="/bin/sh -c apt-get update && apt-get install -y  git  build-essential  zip  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0e7c669120a1987d16958b1456b39e2483616c5f028a039b1b6f53a340aa2eaf" [label="/bin/sh -c git clone -b $branch --single-branch https://github.com/Nathan-LS/Insight.git" shape="box"];
  "sha256:b5e720e482964f40aba54b779a234c62c6b40e339c2ea0bf2399eaa5c29ac491" [label="/bin/sh -c pip3 install wheel" shape="box"];
  "sha256:5c3104d68bce52738aa844766eac2899b73fac861b56e53f9ca2821d6a96c6d0" [label="/bin/sh -c pip3 install setuptools" shape="box"];
  "sha256:3fd1a59c26947ae3dcce53e0c275a831233baf4ceba04100d4ca060252a06e8b" [label="/bin/sh -c cp /InsightDocker/python-client /InsightDocker/python-client-2 -R" shape="box"];
  "sha256:e0d4e5b8b30153a3b7f06b1c567ff03a9120a56e7c210117e16cb8d0020024f4" [label="mkdir{path=/InsightDocker/python-client-2}" shape="note"];
  "sha256:7077286fee9f8a8bc5ef03a1ed4e38a2827fd2f0fd664328b9b7770f9f3f795f" [label="/bin/sh -c python3 setup.py install" shape="box"];
  "sha256:cd5ec502d82da2be5c3718a46aef744835eb62aaee2ffd98f18cdfd14d43ed52" [label="mkdir{path=/InsightDocker/Insight}" shape="note"];
  "sha256:1da4c0c028dd5c7d400846026aee0d23cb2153791bb7319a46bf3a49a13b4cbc" [label="/bin/sh -c pip3 install --upgrade -r requirements.txt" shape="box"];
  "sha256:a24f41270d5bb6bd3dd0ddb5a065571ddd9780c943499255ea947b202180fa26" [label="/bin/sh -c cp /InsightDocker/Insight/scripts/Docker/DockerEntry.sh /InsightDocker" shape="box"];
  "sha256:e7844974c15c211e776f7a6ca8c2c1156679b4a1c1f7d579e7bad8b226dff415" [label="/bin/sh -c cp /InsightDocker/Insight/scripts/Docker/DockerBinBuild.sh /InsightDocker" shape="box"];
  "sha256:a5477c32b2882fd436e0a71a95fbf202d3dccc5a6d8913e1558656c065ce32c8" [label="/bin/sh -c rm /InsightDocker/python-client-2 -R" shape="box"];
  "sha256:de9724bd83897c2f31c31f4935e6e2cdbfb564b28e83f2651e1b83e4bed060fa" [label="/bin/sh -c chmod +x /InsightDocker/DockerEntry.sh /InsightDocker/DockerBinBuild.sh" shape="box"];
  "sha256:050d025989ace6c2aa097bc090e7fd26b7bbe3b80deccc4be08c293ddd137cec" [label="mkdir{path=/app}" shape="note"];
  "sha256:46c85d61e47a5a06626e86dc4873d2b3159754e3216c29a08ea6d84a2d8cd6fb" [label="sha256:46c85d61e47a5a06626e86dc4873d2b3159754e3216c29a08ea6d84a2d8cd6fb" shape="plaintext"];
  "sha256:e3ab66a1d3d43688407a39aba208fa6bbf3deaebb779daabbe8816d441ec24b0" -> "sha256:dc924fa7fdb4063287adfe1b2af4e104488f9e44a7d84900fe6b8fa01e33f069" [label=""];
  "sha256:fc3ed658abece7cabb1dd57dfa53a83aa99b294c1f3a4df80f22b11e27cae09d" -> "sha256:f92a6983a6177e04c0846c690a7e643373fd94c72565438364c26c02fc3d37dd" [label=""];
  "sha256:86e8609a341df5069f59e3f2ababc24eb26b7dcab16a1a3cfbb3bc39c14e78cd" -> "sha256:f92a6983a6177e04c0846c690a7e643373fd94c72565438364c26c02fc3d37dd" [label=""];
  "sha256:f92a6983a6177e04c0846c690a7e643373fd94c72565438364c26c02fc3d37dd" -> "sha256:ddd5c2c0d0d1eab66f6d2a3bdf23fa5ad6ee52df44dfda129eba6ccc8730ffb4" [label=""];
  "sha256:dc924fa7fdb4063287adfe1b2af4e104488f9e44a7d84900fe6b8fa01e33f069" -> "sha256:663decc39f600075dd0e470819d8d8fe6c132208a9af52db9d8b8ca0a1daf43a" [label=""];
  "sha256:ddd5c2c0d0d1eab66f6d2a3bdf23fa5ad6ee52df44dfda129eba6ccc8730ffb4" -> "sha256:663decc39f600075dd0e470819d8d8fe6c132208a9af52db9d8b8ca0a1daf43a" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:66b3a5c263c3ef29dd5c7e14aa627fe925ff08ac9faea4155ac79553cf33b8b0" [label=""];
  "sha256:66b3a5c263c3ef29dd5c7e14aa627fe925ff08ac9faea4155ac79553cf33b8b0" -> "sha256:0f0185433d9a21466f45fb3e933902899086ba7a79e0c0ad502ccc5613cc0157" [label=""];
  "sha256:0f0185433d9a21466f45fb3e933902899086ba7a79e0c0ad502ccc5613cc0157" -> "sha256:acb886ffefb3d0ac74c12931d9225568543bd894db9a049a99d35dafedc49b04" [label=""];
  "sha256:acb886ffefb3d0ac74c12931d9225568543bd894db9a049a99d35dafedc49b04" -> "sha256:c1197f607aa158c9f327fd397e9998fd279d195eec3c52c16c079ff756ccfbe8" [label=""];
  "sha256:663decc39f600075dd0e470819d8d8fe6c132208a9af52db9d8b8ca0a1daf43a" -> "sha256:509067ba95a235d6b0d88b5383dc6984e4069b31411452eaaf4a2fbaff58b999" [label=""];
  "sha256:c1197f607aa158c9f327fd397e9998fd279d195eec3c52c16c079ff756ccfbe8" -> "sha256:509067ba95a235d6b0d88b5383dc6984e4069b31411452eaaf4a2fbaff58b999" [label=""];
  "sha256:509067ba95a235d6b0d88b5383dc6984e4069b31411452eaaf4a2fbaff58b999" -> "sha256:a9db4d2758f2b430552aaa6c132e27de9c25450cd05e363c0444f17a8918613b" [label=""];
  "sha256:a9db4d2758f2b430552aaa6c132e27de9c25450cd05e363c0444f17a8918613b" -> "sha256:0e7c669120a1987d16958b1456b39e2483616c5f028a039b1b6f53a340aa2eaf" [label=""];
  "sha256:0e7c669120a1987d16958b1456b39e2483616c5f028a039b1b6f53a340aa2eaf" -> "sha256:b5e720e482964f40aba54b779a234c62c6b40e339c2ea0bf2399eaa5c29ac491" [label=""];
  "sha256:b5e720e482964f40aba54b779a234c62c6b40e339c2ea0bf2399eaa5c29ac491" -> "sha256:5c3104d68bce52738aa844766eac2899b73fac861b56e53f9ca2821d6a96c6d0" [label=""];
  "sha256:5c3104d68bce52738aa844766eac2899b73fac861b56e53f9ca2821d6a96c6d0" -> "sha256:3fd1a59c26947ae3dcce53e0c275a831233baf4ceba04100d4ca060252a06e8b" [label=""];
  "sha256:3fd1a59c26947ae3dcce53e0c275a831233baf4ceba04100d4ca060252a06e8b" -> "sha256:e0d4e5b8b30153a3b7f06b1c567ff03a9120a56e7c210117e16cb8d0020024f4" [label=""];
  "sha256:e0d4e5b8b30153a3b7f06b1c567ff03a9120a56e7c210117e16cb8d0020024f4" -> "sha256:7077286fee9f8a8bc5ef03a1ed4e38a2827fd2f0fd664328b9b7770f9f3f795f" [label=""];
  "sha256:7077286fee9f8a8bc5ef03a1ed4e38a2827fd2f0fd664328b9b7770f9f3f795f" -> "sha256:cd5ec502d82da2be5c3718a46aef744835eb62aaee2ffd98f18cdfd14d43ed52" [label=""];
  "sha256:cd5ec502d82da2be5c3718a46aef744835eb62aaee2ffd98f18cdfd14d43ed52" -> "sha256:1da4c0c028dd5c7d400846026aee0d23cb2153791bb7319a46bf3a49a13b4cbc" [label=""];
  "sha256:1da4c0c028dd5c7d400846026aee0d23cb2153791bb7319a46bf3a49a13b4cbc" -> "sha256:a24f41270d5bb6bd3dd0ddb5a065571ddd9780c943499255ea947b202180fa26" [label=""];
  "sha256:a24f41270d5bb6bd3dd0ddb5a065571ddd9780c943499255ea947b202180fa26" -> "sha256:e7844974c15c211e776f7a6ca8c2c1156679b4a1c1f7d579e7bad8b226dff415" [label=""];
  "sha256:e7844974c15c211e776f7a6ca8c2c1156679b4a1c1f7d579e7bad8b226dff415" -> "sha256:a5477c32b2882fd436e0a71a95fbf202d3dccc5a6d8913e1558656c065ce32c8" [label=""];
  "sha256:a5477c32b2882fd436e0a71a95fbf202d3dccc5a6d8913e1558656c065ce32c8" -> "sha256:de9724bd83897c2f31c31f4935e6e2cdbfb564b28e83f2651e1b83e4bed060fa" [label=""];
  "sha256:de9724bd83897c2f31c31f4935e6e2cdbfb564b28e83f2651e1b83e4bed060fa" -> "sha256:050d025989ace6c2aa097bc090e7fd26b7bbe3b80deccc4be08c293ddd137cec" [label=""];
  "sha256:050d025989ace6c2aa097bc090e7fd26b7bbe3b80deccc4be08c293ddd137cec" -> "sha256:46c85d61e47a5a06626e86dc4873d2b3159754e3216c29a08ea6d84a2d8cd6fb" [label=""];
}
