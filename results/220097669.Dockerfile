[app/sources/220097669.Dockerfile]
digraph {
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:c00ff2c02c28f98655177a679d44ff43646a5c214c6e93a86c3d1ff5c0d69beb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:61b90826c64651a665337e97130f7d930b739af843230781a801fe24e732d3cb" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:d94892ad58c8e0914036060d6ebd25fe57e137a1122a9c3cf6922ea047a61462" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:d10281e9e23b86ef5fc2c7250d2bf0359b938a622f007d70f98bc7ca65ff17d6" [label="/bin/sh -c apt-get install -y mercurial" shape="box"];
  "sha256:a574257d154ecd6cfe292d1aee284d35ebb8fdbe0f2750fd37377bb27555b57d" [label="/bin/sh -c apt-get install -y subversion" shape="box"];
  "sha256:53b6ba8bcac9ae5bab30ced25275d884b48d613e30eb51b13ee8670bd9a0fd27" [label="/bin/sh -c apt-get install -y unzip" shape="box"];
  "sha256:a752d2a13363a45fc9760e2509d84baa6f11ca70e7b7b4685e3a56b9f0a4221a" [label="/bin/sh -c apt-get install -y build-essential" shape="box"];
  "sha256:d9c297189dec044e454c90b50f5813e80d00213b68cd550b15fc63866e873293" [label="/bin/sh -c apt-get -y install software-properties-common" shape="box"];
  "sha256:0d5e121a0bf0a1f2f47624245b41477349350a89c76c5948f0fcc0312dcbbc47" [label="/bin/sh -c apt-add-repository ppa:brightbox/ruby-ng" shape="box"];
  "sha256:b9748bd1f15c2ecf4cdac741d4aa3a546f119bcc28c85a8f704ec1c925c3f6d5" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e04a2d4ce3ed17dd0c886fc75a9195e2156477dc2288b9aee896082e6480db25" [label="/bin/sh -c apt-get -y install ruby2.1" shape="box"];
  "sha256:856e9cf2bc4520a068439cfcbf32526099630903eed4c0518aa6c38571cef86a" [label="/bin/sh -c apt-get -y install ruby2.1-dev" shape="box"];
  "sha256:94ef9f7a31d519bf61799fc745b92c7730510a979b8b0d7436a465e47adaada0" [label="/bin/sh -c gem update --system --verbose" shape="box"];
  "sha256:4ec71db61c32cbd9f71da0163142f78fc7df9d980a67363668a9d0751697b7c5" [label="/bin/sh -c echo \"gem: --no-document\" >> ~/.gemrc" shape="box"];
  "sha256:90abbfc72294ca6b09ae15f78d11b54cfda25489e17190f98301a9282bc8507a" [label="/bin/sh -c gem install fpm-cookery -v 0.31.0" shape="box"];
  "sha256:d3e0f5fc2e73bae57e600789fcc2e7ff631262d09fe2b9a98d3f65843c5f4954" [label="/bin/sh -c echo 'StrictHostKeyChecking no' >> /etc/ssh/ssh_config" shape="box"];
  "sha256:2b81191a43dc5a09c2b87da36cfab4a69efbbb71e9546d3f587d5fdfe991e275" [label="sha256:2b81191a43dc5a09c2b87da36cfab4a69efbbb71e9546d3f587d5fdfe991e275" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:c00ff2c02c28f98655177a679d44ff43646a5c214c6e93a86c3d1ff5c0d69beb" [label=""];
  "sha256:c00ff2c02c28f98655177a679d44ff43646a5c214c6e93a86c3d1ff5c0d69beb" -> "sha256:61b90826c64651a665337e97130f7d930b739af843230781a801fe24e732d3cb" [label=""];
  "sha256:61b90826c64651a665337e97130f7d930b739af843230781a801fe24e732d3cb" -> "sha256:d94892ad58c8e0914036060d6ebd25fe57e137a1122a9c3cf6922ea047a61462" [label=""];
  "sha256:d94892ad58c8e0914036060d6ebd25fe57e137a1122a9c3cf6922ea047a61462" -> "sha256:d10281e9e23b86ef5fc2c7250d2bf0359b938a622f007d70f98bc7ca65ff17d6" [label=""];
  "sha256:d10281e9e23b86ef5fc2c7250d2bf0359b938a622f007d70f98bc7ca65ff17d6" -> "sha256:a574257d154ecd6cfe292d1aee284d35ebb8fdbe0f2750fd37377bb27555b57d" [label=""];
  "sha256:a574257d154ecd6cfe292d1aee284d35ebb8fdbe0f2750fd37377bb27555b57d" -> "sha256:53b6ba8bcac9ae5bab30ced25275d884b48d613e30eb51b13ee8670bd9a0fd27" [label=""];
  "sha256:53b6ba8bcac9ae5bab30ced25275d884b48d613e30eb51b13ee8670bd9a0fd27" -> "sha256:a752d2a13363a45fc9760e2509d84baa6f11ca70e7b7b4685e3a56b9f0a4221a" [label=""];
  "sha256:a752d2a13363a45fc9760e2509d84baa6f11ca70e7b7b4685e3a56b9f0a4221a" -> "sha256:d9c297189dec044e454c90b50f5813e80d00213b68cd550b15fc63866e873293" [label=""];
  "sha256:d9c297189dec044e454c90b50f5813e80d00213b68cd550b15fc63866e873293" -> "sha256:0d5e121a0bf0a1f2f47624245b41477349350a89c76c5948f0fcc0312dcbbc47" [label=""];
  "sha256:0d5e121a0bf0a1f2f47624245b41477349350a89c76c5948f0fcc0312dcbbc47" -> "sha256:b9748bd1f15c2ecf4cdac741d4aa3a546f119bcc28c85a8f704ec1c925c3f6d5" [label=""];
  "sha256:b9748bd1f15c2ecf4cdac741d4aa3a546f119bcc28c85a8f704ec1c925c3f6d5" -> "sha256:e04a2d4ce3ed17dd0c886fc75a9195e2156477dc2288b9aee896082e6480db25" [label=""];
  "sha256:e04a2d4ce3ed17dd0c886fc75a9195e2156477dc2288b9aee896082e6480db25" -> "sha256:856e9cf2bc4520a068439cfcbf32526099630903eed4c0518aa6c38571cef86a" [label=""];
  "sha256:856e9cf2bc4520a068439cfcbf32526099630903eed4c0518aa6c38571cef86a" -> "sha256:94ef9f7a31d519bf61799fc745b92c7730510a979b8b0d7436a465e47adaada0" [label=""];
  "sha256:94ef9f7a31d519bf61799fc745b92c7730510a979b8b0d7436a465e47adaada0" -> "sha256:4ec71db61c32cbd9f71da0163142f78fc7df9d980a67363668a9d0751697b7c5" [label=""];
  "sha256:4ec71db61c32cbd9f71da0163142f78fc7df9d980a67363668a9d0751697b7c5" -> "sha256:90abbfc72294ca6b09ae15f78d11b54cfda25489e17190f98301a9282bc8507a" [label=""];
  "sha256:90abbfc72294ca6b09ae15f78d11b54cfda25489e17190f98301a9282bc8507a" -> "sha256:d3e0f5fc2e73bae57e600789fcc2e7ff631262d09fe2b9a98d3f65843c5f4954" [label=""];
  "sha256:d3e0f5fc2e73bae57e600789fcc2e7ff631262d09fe2b9a98d3f65843c5f4954" -> "sha256:2b81191a43dc5a09c2b87da36cfab4a69efbbb71e9546d3f587d5fdfe991e275" [label=""];
}

