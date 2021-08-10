[app/sources/346803838.Dockerfile]
digraph {
  "sha256:cd7abc6c3264dac6eab208eee8823fe26fad4976a390ac41df255c8f7e87c4f3" [label="https://www.prestashop.com/download/old/prestashop_1.6.0.6.zip" shape="ellipse"];
  "sha256:b88feedfa95f0d1f6621a9eb3a668ade4851d97e0e46568e50e8cf8b82aab546" [label="docker-image://docker.io/prestashop/base:5.6-apache@sha256:c84818dc7d994e2483d69be759dfd0ec2cea60d7df243b3499d20388c552cab2" shape="ellipse"];
  "sha256:44630812f9f71841b5eed5a0ae8b8aeb0c1d959a235405512ccc12dee6cd683a" [label="copy{src=/prestashop_1.6.0.6.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:2930cb5d457d43cc126d0911d8e662bdda9e6d36f514c81658d4f6bf830ea3d0" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:de82ece03450b0fd5a1a8d164c4dbfecaa4d11e9a2d138c29597fa31624f1389" [label="sha256:de82ece03450b0fd5a1a8d164c4dbfecaa4d11e9a2d138c29597fa31624f1389" shape="plaintext"];
  "sha256:b88feedfa95f0d1f6621a9eb3a668ade4851d97e0e46568e50e8cf8b82aab546" -> "sha256:44630812f9f71841b5eed5a0ae8b8aeb0c1d959a235405512ccc12dee6cd683a" [label=""];
  "sha256:cd7abc6c3264dac6eab208eee8823fe26fad4976a390ac41df255c8f7e87c4f3" -> "sha256:44630812f9f71841b5eed5a0ae8b8aeb0c1d959a235405512ccc12dee6cd683a" [label=""];
  "sha256:44630812f9f71841b5eed5a0ae8b8aeb0c1d959a235405512ccc12dee6cd683a" -> "sha256:2930cb5d457d43cc126d0911d8e662bdda9e6d36f514c81658d4f6bf830ea3d0" [label=""];
  "sha256:2930cb5d457d43cc126d0911d8e662bdda9e6d36f514c81658d4f6bf830ea3d0" -> "sha256:de82ece03450b0fd5a1a8d164c4dbfecaa4d11e9a2d138c29597fa31624f1389" [label=""];
}

