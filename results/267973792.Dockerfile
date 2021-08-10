[app/sources/267973792.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6e17f882b32c1471c9ffd31bbd4c4d763635f4ed6b515ccd7df0d83d15798ba7" [label="/bin/sh -c apt-get install -y git     rubygems ruby-dev patch gcc make zlib1g-dev rpm curl dpkg-sig     yum python-deltarpm     expect" shape="box"];
  "sha256:657019da50bbe19cbb9f2ef7e965338366bc7359dd30405ae6e4249e641ea1f2" [label="/bin/sh -c git clone git://github.com/boto/boto.git &&     cd boto &&     git checkout 2.38.0 &&     python setup.py install" shape="box"];
  "sha256:cd604103a715fb1722557bd57dedc29b9681e08e393836dca3e9742a2d33f2cf" [label="/bin/sh -c gem install deb-s3" shape="box"];
  "sha256:03b0ca31215d0e062a61cd0cd816ee794125081dbf0f6c02442e2389b27a36f6" [label="/bin/sh -c cd /usr/local &&     git clone https://github.com/crohr/rpm-s3 --recursive &&     echo '[s3]\\ncalling_format = boto.s3.connection.OrdinaryCallingFormat' > /etc/boto.cfg" shape="box"];
  "sha256:c3e0fef99bd37cd2685986891896ba9d1345b6c1318f0ef06b13cf4ef5dc52cb" [label="local://context" shape="ellipse"];
  "sha256:7857af42aa75e0d6054cf263c32864c97ebcc8811c3f4d59d3394ce03641c31b" [label="copy{src=/rpmmacros, dest=/root/.rpmmacros}" shape="note"];
  "sha256:f74176900159991368f183b4aa331ebcc020d7ada68b02d4445e4132d5cbe14e" [label="copy{src=/*.expect, dest=/}" shape="note"];
  "sha256:e7126a653dae83efbc6b427aa3ca728ff519e82ebca2c218beb1c04650962bac" [label="copy{src=/publish-package-repositories.sh, dest=/}" shape="note"];
  "sha256:dd13f570bee70e6021fed6db998696db61a5fc2a497ef036986688f2b8343c0d" [label="sha256:dd13f570bee70e6021fed6db998696db61a5fc2a497ef036986688f2b8343c0d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label=""];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" -> "sha256:6e17f882b32c1471c9ffd31bbd4c4d763635f4ed6b515ccd7df0d83d15798ba7" [label=""];
  "sha256:6e17f882b32c1471c9ffd31bbd4c4d763635f4ed6b515ccd7df0d83d15798ba7" -> "sha256:657019da50bbe19cbb9f2ef7e965338366bc7359dd30405ae6e4249e641ea1f2" [label=""];
  "sha256:657019da50bbe19cbb9f2ef7e965338366bc7359dd30405ae6e4249e641ea1f2" -> "sha256:cd604103a715fb1722557bd57dedc29b9681e08e393836dca3e9742a2d33f2cf" [label=""];
  "sha256:cd604103a715fb1722557bd57dedc29b9681e08e393836dca3e9742a2d33f2cf" -> "sha256:03b0ca31215d0e062a61cd0cd816ee794125081dbf0f6c02442e2389b27a36f6" [label=""];
  "sha256:03b0ca31215d0e062a61cd0cd816ee794125081dbf0f6c02442e2389b27a36f6" -> "sha256:7857af42aa75e0d6054cf263c32864c97ebcc8811c3f4d59d3394ce03641c31b" [label=""];
  "sha256:c3e0fef99bd37cd2685986891896ba9d1345b6c1318f0ef06b13cf4ef5dc52cb" -> "sha256:7857af42aa75e0d6054cf263c32864c97ebcc8811c3f4d59d3394ce03641c31b" [label=""];
  "sha256:7857af42aa75e0d6054cf263c32864c97ebcc8811c3f4d59d3394ce03641c31b" -> "sha256:f74176900159991368f183b4aa331ebcc020d7ada68b02d4445e4132d5cbe14e" [label=""];
  "sha256:c3e0fef99bd37cd2685986891896ba9d1345b6c1318f0ef06b13cf4ef5dc52cb" -> "sha256:f74176900159991368f183b4aa331ebcc020d7ada68b02d4445e4132d5cbe14e" [label=""];
  "sha256:f74176900159991368f183b4aa331ebcc020d7ada68b02d4445e4132d5cbe14e" -> "sha256:e7126a653dae83efbc6b427aa3ca728ff519e82ebca2c218beb1c04650962bac" [label=""];
  "sha256:c3e0fef99bd37cd2685986891896ba9d1345b6c1318f0ef06b13cf4ef5dc52cb" -> "sha256:e7126a653dae83efbc6b427aa3ca728ff519e82ebca2c218beb1c04650962bac" [label=""];
  "sha256:e7126a653dae83efbc6b427aa3ca728ff519e82ebca2c218beb1c04650962bac" -> "sha256:dd13f570bee70e6021fed6db998696db61a5fc2a497ef036986688f2b8343c0d" [label=""];
}

