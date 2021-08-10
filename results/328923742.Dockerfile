[app/sources/328923742.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:05330535e3d663615dbac13fa2ad489aa9323b4256441a51ca49fe215878be0e" [label="local://context" shape="ellipse"];
  "sha256:3b5be266e2f91954b39096fa94bb4a3fa08218328f35c6044b104139b6c0c662" [label="copy{src=/index.html, dest=/var/www/html/}" shape="note"];
  "sha256:3fe40c55815510e224177094256f651030fa8804752790c11acefd5f2aa05ae8" [label="copy{src=/cook.js, dest=/var/www/html/}" shape="note"];
  "sha256:ebb7afcc5d6540fe98688a3ce910d3002530d0344c8f299f7f1ba5cf7b3e4b00" [label="copy{src=/cookies.html, dest=/var/www/html/}" shape="note"];
  "sha256:6e9ced3c06f1c60882e723cf26e97b896dce3a20af2746a90f63aa3a39fdb760" [label="copy{src=/cookie.jpg, dest=/var/www/html/}" shape="note"];
  "sha256:8dfb65b2141cb7a322f43fca5b2ed659b38056fd202fa9d8c419789a422f1a4e" [label="copy{src=/gigs.png, dest=/var/www/html/}" shape="note"];
  "sha256:586cbac1e49e0a2c0b25b53a959b315de720dedb61fb49c61e8ca179099c8f8e" [label="sha256:586cbac1e49e0a2c0b25b53a959b315de720dedb61fb49c61e8ca179099c8f8e" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:3b5be266e2f91954b39096fa94bb4a3fa08218328f35c6044b104139b6c0c662" [label=""];
  "sha256:05330535e3d663615dbac13fa2ad489aa9323b4256441a51ca49fe215878be0e" -> "sha256:3b5be266e2f91954b39096fa94bb4a3fa08218328f35c6044b104139b6c0c662" [label=""];
  "sha256:3b5be266e2f91954b39096fa94bb4a3fa08218328f35c6044b104139b6c0c662" -> "sha256:3fe40c55815510e224177094256f651030fa8804752790c11acefd5f2aa05ae8" [label=""];
  "sha256:05330535e3d663615dbac13fa2ad489aa9323b4256441a51ca49fe215878be0e" -> "sha256:3fe40c55815510e224177094256f651030fa8804752790c11acefd5f2aa05ae8" [label=""];
  "sha256:3fe40c55815510e224177094256f651030fa8804752790c11acefd5f2aa05ae8" -> "sha256:ebb7afcc5d6540fe98688a3ce910d3002530d0344c8f299f7f1ba5cf7b3e4b00" [label=""];
  "sha256:05330535e3d663615dbac13fa2ad489aa9323b4256441a51ca49fe215878be0e" -> "sha256:ebb7afcc5d6540fe98688a3ce910d3002530d0344c8f299f7f1ba5cf7b3e4b00" [label=""];
  "sha256:ebb7afcc5d6540fe98688a3ce910d3002530d0344c8f299f7f1ba5cf7b3e4b00" -> "sha256:6e9ced3c06f1c60882e723cf26e97b896dce3a20af2746a90f63aa3a39fdb760" [label=""];
  "sha256:05330535e3d663615dbac13fa2ad489aa9323b4256441a51ca49fe215878be0e" -> "sha256:6e9ced3c06f1c60882e723cf26e97b896dce3a20af2746a90f63aa3a39fdb760" [label=""];
  "sha256:6e9ced3c06f1c60882e723cf26e97b896dce3a20af2746a90f63aa3a39fdb760" -> "sha256:8dfb65b2141cb7a322f43fca5b2ed659b38056fd202fa9d8c419789a422f1a4e" [label=""];
  "sha256:05330535e3d663615dbac13fa2ad489aa9323b4256441a51ca49fe215878be0e" -> "sha256:8dfb65b2141cb7a322f43fca5b2ed659b38056fd202fa9d8c419789a422f1a4e" [label=""];
  "sha256:8dfb65b2141cb7a322f43fca5b2ed659b38056fd202fa9d8c419789a422f1a4e" -> "sha256:586cbac1e49e0a2c0b25b53a959b315de720dedb61fb49c61e8ca179099c8f8e" [label=""];
}

