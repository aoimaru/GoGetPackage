[app/sources/288207315.Dockerfile]
digraph {
  "sha256:c9b09c1f92cf3fbc7d6c013f48c9bc77a879f99dab4be4d6de6fcd4f1bf789da" [label="local://context" shape="ellipse"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" [label="docker-image://docker.io/library/nginx:1.7" shape="ellipse"];
  "sha256:3040c28b5fc2057be0e3fcedf81381c6ff90b101362510c5619ae2b5008f2479" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:78c7b00f707a16dd83c7d8170989e6ccb0265de5e617c19725bafa54184fc19c" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:1b282b4a1404f462a0ec56382b13f9227fd095ee0824826a6e6b211b0cee0bfb" [label="copy{src=/docker-registry.conf, dest=/etc/nginx/docker-registry.conf}" shape="note"];
  "sha256:b43b2d2fd584645551dba7ef6f6e9a43d81507b3ae93d3cda0acf7e68cd419c4" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:78de9aa58edd7ce76fa1f8421a76f72ec01f5c83c84b2e2edc9dd0436e557699" [label="sha256:78de9aa58edd7ce76fa1f8421a76f72ec01f5c83c84b2e2edc9dd0436e557699" shape="plaintext"];
  "sha256:e2c09379e676679eb29e9eb4efe7fe36dc6ecd1607bb433cfaa045840222b99e" -> "sha256:3040c28b5fc2057be0e3fcedf81381c6ff90b101362510c5619ae2b5008f2479" [label=""];
  "sha256:c9b09c1f92cf3fbc7d6c013f48c9bc77a879f99dab4be4d6de6fcd4f1bf789da" -> "sha256:3040c28b5fc2057be0e3fcedf81381c6ff90b101362510c5619ae2b5008f2479" [label=""];
  "sha256:3040c28b5fc2057be0e3fcedf81381c6ff90b101362510c5619ae2b5008f2479" -> "sha256:78c7b00f707a16dd83c7d8170989e6ccb0265de5e617c19725bafa54184fc19c" [label=""];
  "sha256:c9b09c1f92cf3fbc7d6c013f48c9bc77a879f99dab4be4d6de6fcd4f1bf789da" -> "sha256:78c7b00f707a16dd83c7d8170989e6ccb0265de5e617c19725bafa54184fc19c" [label=""];
  "sha256:78c7b00f707a16dd83c7d8170989e6ccb0265de5e617c19725bafa54184fc19c" -> "sha256:1b282b4a1404f462a0ec56382b13f9227fd095ee0824826a6e6b211b0cee0bfb" [label=""];
  "sha256:c9b09c1f92cf3fbc7d6c013f48c9bc77a879f99dab4be4d6de6fcd4f1bf789da" -> "sha256:1b282b4a1404f462a0ec56382b13f9227fd095ee0824826a6e6b211b0cee0bfb" [label=""];
  "sha256:1b282b4a1404f462a0ec56382b13f9227fd095ee0824826a6e6b211b0cee0bfb" -> "sha256:b43b2d2fd584645551dba7ef6f6e9a43d81507b3ae93d3cda0acf7e68cd419c4" [label=""];
  "sha256:c9b09c1f92cf3fbc7d6c013f48c9bc77a879f99dab4be4d6de6fcd4f1bf789da" -> "sha256:b43b2d2fd584645551dba7ef6f6e9a43d81507b3ae93d3cda0acf7e68cd419c4" [label=""];
  "sha256:b43b2d2fd584645551dba7ef6f6e9a43d81507b3ae93d3cda0acf7e68cd419c4" -> "sha256:78de9aa58edd7ce76fa1f8421a76f72ec01f5c83c84b2e2edc9dd0436e557699" [label=""];
}

