[app/sources/213774975.Dockerfile]
digraph {
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" [label="docker-image://docker.io/library/ruby:2.2" shape="ellipse"];
  "sha256:82d7f7f091e51b940c68c4f7cb71177ec71e9fa4fd212b52db93717db5dbba74" [label="/bin/sh -c apt-get update && apt-get install -y node python-pygments && apt-get clean" shape="box"];
  "sha256:b2e216ebb7c310874807cc78c8e70d04d821301399ae06f084ad61ef5d2c0e4c" [label="/bin/sh -c gem install github-pages" shape="box"];
  "sha256:58b3418ff23078d4738a5d94dea4f4b3d2324ad50f8a3c1624576873b7420e04" [label="mkdir{path=/src}" shape="note"];
  "sha256:da64060de85e54f035da3ad550db59e0664b502cc2bc7b888a821c5ee23212bf" [label="sha256:da64060de85e54f035da3ad550db59e0664b502cc2bc7b888a821c5ee23212bf" shape="plaintext"];
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" -> "sha256:82d7f7f091e51b940c68c4f7cb71177ec71e9fa4fd212b52db93717db5dbba74" [label=""];
  "sha256:82d7f7f091e51b940c68c4f7cb71177ec71e9fa4fd212b52db93717db5dbba74" -> "sha256:b2e216ebb7c310874807cc78c8e70d04d821301399ae06f084ad61ef5d2c0e4c" [label=""];
  "sha256:b2e216ebb7c310874807cc78c8e70d04d821301399ae06f084ad61ef5d2c0e4c" -> "sha256:58b3418ff23078d4738a5d94dea4f4b3d2324ad50f8a3c1624576873b7420e04" [label=""];
  "sha256:58b3418ff23078d4738a5d94dea4f4b3d2324ad50f8a3c1624576873b7420e04" -> "sha256:da64060de85e54f035da3ad550db59e0664b502cc2bc7b888a821c5ee23212bf" [label=""];
}

