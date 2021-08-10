[app/sources/358875029.Dockerfile]
digraph {
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" [label="docker-image://docker.io/library/python:2.7.10" shape="ellipse"];
  "sha256:15dd8d05b70a283970915d0c297f5c96b6efe936fd438e73910f11b5a7186701" [label="/bin/sh -c apt-get update && apt-get install -y python-pycurl nginx && \tapt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:c583554d0590ce9d60620e050907edc33010fe9e8d1d0e554daa64088ba4c493" [label="local://context" shape="ellipse"];
  "sha256:f09b8219dc0c54f676e62d38a8ebe57fa004d3b21241516a0eb7492acb79388d" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:ac6639a0ad0e162256274d71d8ed845e7325462c78b55c1b68dd42907a63a77a" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:b191b1841a3542c278f355a1513c67f061493dbc9d6e87bb7abe748fe4983791" [label="copy{src=/app.py, dest=/tmp/}" shape="note"];
  "sha256:28527c27c62ab3e4901059e8a07e5da84cba6e2dfe0478fc3af987f55681de2c" [label="copy{src=/benchmark.py, dest=/tmp/}" shape="note"];
  "sha256:b126143c2d1b377ee59776d2dd8e034875e04745a2323e9cb6341b2067e36e2e" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:f8b0d7c2bf5a83183fddf4353bc468ebce87d21ea0f30b88e0bab37cda4917cf" [label="sha256:f8b0d7c2bf5a83183fddf4353bc468ebce87d21ea0f30b88e0bab37cda4917cf" shape="plaintext"];
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" -> "sha256:15dd8d05b70a283970915d0c297f5c96b6efe936fd438e73910f11b5a7186701" [label=""];
  "sha256:15dd8d05b70a283970915d0c297f5c96b6efe936fd438e73910f11b5a7186701" -> "sha256:f09b8219dc0c54f676e62d38a8ebe57fa004d3b21241516a0eb7492acb79388d" [label=""];
  "sha256:c583554d0590ce9d60620e050907edc33010fe9e8d1d0e554daa64088ba4c493" -> "sha256:f09b8219dc0c54f676e62d38a8ebe57fa004d3b21241516a0eb7492acb79388d" [label=""];
  "sha256:f09b8219dc0c54f676e62d38a8ebe57fa004d3b21241516a0eb7492acb79388d" -> "sha256:ac6639a0ad0e162256274d71d8ed845e7325462c78b55c1b68dd42907a63a77a" [label=""];
  "sha256:ac6639a0ad0e162256274d71d8ed845e7325462c78b55c1b68dd42907a63a77a" -> "sha256:b191b1841a3542c278f355a1513c67f061493dbc9d6e87bb7abe748fe4983791" [label=""];
  "sha256:c583554d0590ce9d60620e050907edc33010fe9e8d1d0e554daa64088ba4c493" -> "sha256:b191b1841a3542c278f355a1513c67f061493dbc9d6e87bb7abe748fe4983791" [label=""];
  "sha256:b191b1841a3542c278f355a1513c67f061493dbc9d6e87bb7abe748fe4983791" -> "sha256:28527c27c62ab3e4901059e8a07e5da84cba6e2dfe0478fc3af987f55681de2c" [label=""];
  "sha256:c583554d0590ce9d60620e050907edc33010fe9e8d1d0e554daa64088ba4c493" -> "sha256:28527c27c62ab3e4901059e8a07e5da84cba6e2dfe0478fc3af987f55681de2c" [label=""];
  "sha256:28527c27c62ab3e4901059e8a07e5da84cba6e2dfe0478fc3af987f55681de2c" -> "sha256:b126143c2d1b377ee59776d2dd8e034875e04745a2323e9cb6341b2067e36e2e" [label=""];
  "sha256:c583554d0590ce9d60620e050907edc33010fe9e8d1d0e554daa64088ba4c493" -> "sha256:b126143c2d1b377ee59776d2dd8e034875e04745a2323e9cb6341b2067e36e2e" [label=""];
  "sha256:b126143c2d1b377ee59776d2dd8e034875e04745a2323e9cb6341b2067e36e2e" -> "sha256:f8b0d7c2bf5a83183fddf4353bc468ebce87d21ea0f30b88e0bab37cda4917cf" [label=""];
}

