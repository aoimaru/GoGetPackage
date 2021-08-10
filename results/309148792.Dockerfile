[app/sources/309148792.Dockerfile]
digraph {
  "sha256:057989183c67b4b1e6c3074ff088a8e6ddc4dbecf750da54682a8b9e3f43d28b" [label="docker-image://docker.elastic.co/elasticsearch/elasticsearch-oss:6.5.4@sha256:220a9a988288baf446e36d74aa93eb747c086c63e9f23717679fac37ca603cc5" shape="ellipse"];
  "sha256:3f9f0ab58815c3231fbf042c00d733ba7aa31ce101bb7fd50fb94825cd3e1a79" [label="local://context" shape="ellipse"];
  "sha256:aabfdb22d6a693086ef7bd1dcbf146d4ff69b0756732f5cfed673908a3942800" [label="copy{src=/elasticsearch.yml, dest=/usr/share/elasticsearch/config/elasticsearch.yml}" shape="note"];
  "sha256:67f3b6af4c2feb821d0927702634fd87e95edd7a05ae76f5c2ed883572d6762a" [label="copy{src=/version, dest=/IMAGE_VERSION}" shape="note"];
  "sha256:3139f4572329067d8991a3a43f5497ff80c3039c23e62d067b7bdf662a211b51" [label="sha256:3139f4572329067d8991a3a43f5497ff80c3039c23e62d067b7bdf662a211b51" shape="plaintext"];
  "sha256:057989183c67b4b1e6c3074ff088a8e6ddc4dbecf750da54682a8b9e3f43d28b" -> "sha256:aabfdb22d6a693086ef7bd1dcbf146d4ff69b0756732f5cfed673908a3942800" [label=""];
  "sha256:3f9f0ab58815c3231fbf042c00d733ba7aa31ce101bb7fd50fb94825cd3e1a79" -> "sha256:aabfdb22d6a693086ef7bd1dcbf146d4ff69b0756732f5cfed673908a3942800" [label=""];
  "sha256:aabfdb22d6a693086ef7bd1dcbf146d4ff69b0756732f5cfed673908a3942800" -> "sha256:67f3b6af4c2feb821d0927702634fd87e95edd7a05ae76f5c2ed883572d6762a" [label=""];
  "sha256:3f9f0ab58815c3231fbf042c00d733ba7aa31ce101bb7fd50fb94825cd3e1a79" -> "sha256:67f3b6af4c2feb821d0927702634fd87e95edd7a05ae76f5c2ed883572d6762a" [label=""];
  "sha256:67f3b6af4c2feb821d0927702634fd87e95edd7a05ae76f5c2ed883572d6762a" -> "sha256:3139f4572329067d8991a3a43f5497ff80c3039c23e62d067b7bdf662a211b51" [label=""];
}

