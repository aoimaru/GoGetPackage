[app/sources/419541470.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:282139171ca0315146d40bb08fa036470b6fe94287a4d50268ae0e3ab5116f55" [label="/bin/sh -c apt-get update &&     apt-get clean &&     rm -rf /var/lib/apt/*" shape="box"];
  "sha256:38cc44b5c656fff6f8a8261f0b7e41f0aca1c9e735d8c590b32487b5716df197" [label="local://context" shape="ellipse"];
  "sha256:f39644268083eaa270fb9a874b2cbbf0226921042bfb35220659f1b825104d39" [label="copy{src=/target/movie-database-*.jar, dest=/service.jar}" shape="note"];
  "sha256:ed99f6d3b31d5bc8f49cec210e17dd62334641c726c8a161afc97ef504877c55" [label="sha256:ed99f6d3b31d5bc8f49cec210e17dd62334641c726c8a161afc97ef504877c55" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:282139171ca0315146d40bb08fa036470b6fe94287a4d50268ae0e3ab5116f55" [label=""];
  "sha256:282139171ca0315146d40bb08fa036470b6fe94287a4d50268ae0e3ab5116f55" -> "sha256:f39644268083eaa270fb9a874b2cbbf0226921042bfb35220659f1b825104d39" [label=""];
  "sha256:38cc44b5c656fff6f8a8261f0b7e41f0aca1c9e735d8c590b32487b5716df197" -> "sha256:f39644268083eaa270fb9a874b2cbbf0226921042bfb35220659f1b825104d39" [label=""];
  "sha256:f39644268083eaa270fb9a874b2cbbf0226921042bfb35220659f1b825104d39" -> "sha256:ed99f6d3b31d5bc8f49cec210e17dd62334641c726c8a161afc97ef504877c55" [label=""];
}

