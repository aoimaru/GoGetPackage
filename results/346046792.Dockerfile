[app/sources/346046792.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:abcb56a1e31b1e8d1db72dae5f04d16be3dd31974124a6655bfa5409a7206a05" [label="/bin/sh -c mkdir /webapp" shape="box"];
  "sha256:90771beddd5f4a95e35556003582bd80efcb2ae4189c4895274d801c56d3ca69" [label="local://context" shape="ellipse"];
  "sha256:d8c26ec4b8cf05a46915d8693a815973a0c7b7984b19f453b4c574285fcc162d" [label="copy{src=/start.sh, dest=/webapp/start.sh}" shape="note"];
  "sha256:595a4477c299afff3eb7561cfb744d5970462d7c9b01c8f4bb870e0d7b1be276" [label="copy{src=/public, dest=/webapp}" shape="note"];
  "sha256:e3fadea0c8aec39169c84cf4cf15fde032f5bef353f2210f675c2da2056e19f1" [label="mkdir{path=/webapp}" shape="note"];
  "sha256:fa1bc2e91ad4652c03623d90727dad5f79bda08c540d6f0b32af8f175931f0c6" [label="sha256:fa1bc2e91ad4652c03623d90727dad5f79bda08c540d6f0b32af8f175931f0c6" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:abcb56a1e31b1e8d1db72dae5f04d16be3dd31974124a6655bfa5409a7206a05" [label=""];
  "sha256:abcb56a1e31b1e8d1db72dae5f04d16be3dd31974124a6655bfa5409a7206a05" -> "sha256:d8c26ec4b8cf05a46915d8693a815973a0c7b7984b19f453b4c574285fcc162d" [label=""];
  "sha256:90771beddd5f4a95e35556003582bd80efcb2ae4189c4895274d801c56d3ca69" -> "sha256:d8c26ec4b8cf05a46915d8693a815973a0c7b7984b19f453b4c574285fcc162d" [label=""];
  "sha256:d8c26ec4b8cf05a46915d8693a815973a0c7b7984b19f453b4c574285fcc162d" -> "sha256:595a4477c299afff3eb7561cfb744d5970462d7c9b01c8f4bb870e0d7b1be276" [label=""];
  "sha256:90771beddd5f4a95e35556003582bd80efcb2ae4189c4895274d801c56d3ca69" -> "sha256:595a4477c299afff3eb7561cfb744d5970462d7c9b01c8f4bb870e0d7b1be276" [label=""];
  "sha256:595a4477c299afff3eb7561cfb744d5970462d7c9b01c8f4bb870e0d7b1be276" -> "sha256:e3fadea0c8aec39169c84cf4cf15fde032f5bef353f2210f675c2da2056e19f1" [label=""];
  "sha256:e3fadea0c8aec39169c84cf4cf15fde032f5bef353f2210f675c2da2056e19f1" -> "sha256:fa1bc2e91ad4652c03623d90727dad5f79bda08c540d6f0b32af8f175931f0c6" [label=""];
}

