[app/sources/280935051.Dockerfile]
digraph {
  "sha256:1cc4f6ef70542123563b01aa644cb17810982fdeddfdb12a19ee38978715334a" [label="docker-image://docker.io/library/amazoncorretto:8" shape="ellipse"];
  "sha256:fd628d5119aa24d1d7a9c712a9123f0fbd904eb75782b634e39d5b4c64ace950" [label="local://context" shape="ellipse"];
  "sha256:30bc4be1ad6ef51da09b6e386c4e8974727498a87772ad0e08a1f95559e99d4a" [label="copy{src=/target/blah.jar, dest=/app/blah.jar}" shape="note"];
  "sha256:11103f4b5e7da88a2775aa6f70c0b355d0ed813e2d80b4b7c58e91eaa5e5fa0a" [label="sha256:11103f4b5e7da88a2775aa6f70c0b355d0ed813e2d80b4b7c58e91eaa5e5fa0a" shape="plaintext"];
  "sha256:1cc4f6ef70542123563b01aa644cb17810982fdeddfdb12a19ee38978715334a" -> "sha256:30bc4be1ad6ef51da09b6e386c4e8974727498a87772ad0e08a1f95559e99d4a" [label=""];
  "sha256:fd628d5119aa24d1d7a9c712a9123f0fbd904eb75782b634e39d5b4c64ace950" -> "sha256:30bc4be1ad6ef51da09b6e386c4e8974727498a87772ad0e08a1f95559e99d4a" [label=""];
  "sha256:30bc4be1ad6ef51da09b6e386c4e8974727498a87772ad0e08a1f95559e99d4a" -> "sha256:11103f4b5e7da88a2775aa6f70c0b355d0ed813e2d80b4b7c58e91eaa5e5fa0a" [label=""];
}

