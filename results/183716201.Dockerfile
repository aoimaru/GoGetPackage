[app/sources/183716201.Dockerfile]
digraph {
  "sha256:1646fe354fcea8ea586cc1a367d55b5d96290d9ba6945a73c2954b0c19ed11d5" [label="docker-image://docker.io/elementary/docker:loki" shape="ellipse"];
  "sha256:86b3b9b09bc75f7d86b2c0ae0076f5e26e507f448b11c25f3e3cbbd7c367e2fa" [label="local://context" shape="ellipse"];
  "sha256:b83961b6e891fb525e04117b64d1f860fefe9629c2f1085b2a7464bf3f831982" [label="copy{src=/pack-deb.sh, dest=/usr/local/bin/pack-deb}" shape="note"];
  "sha256:f56e6bb05b1b82b42c8d188a39bee49c521bcc6b610440ddc483ac5b16863286" [label="/bin/sh -c chmod +x /usr/local/bin/pack-deb" shape="box"];
  "sha256:5be2dbdda3f3d8d2f18941c998da15d6042ca45be67fa642441ea18a6b3471dc" [label="/bin/sh -c mkdir -p /tmp/houston" shape="box"];
  "sha256:2bf59aedf208002a22ffdb873818567193a262a9a6785bbe0cdeb44f218a6606" [label="mkdir{path=/tmp/houston}" shape="note"];
  "sha256:ae59367632d24e35e127bcff2c691160922785536294e337751c5be11481eb8f" [label="sha256:ae59367632d24e35e127bcff2c691160922785536294e337751c5be11481eb8f" shape="plaintext"];
  "sha256:1646fe354fcea8ea586cc1a367d55b5d96290d9ba6945a73c2954b0c19ed11d5" -> "sha256:b83961b6e891fb525e04117b64d1f860fefe9629c2f1085b2a7464bf3f831982" [label=""];
  "sha256:86b3b9b09bc75f7d86b2c0ae0076f5e26e507f448b11c25f3e3cbbd7c367e2fa" -> "sha256:b83961b6e891fb525e04117b64d1f860fefe9629c2f1085b2a7464bf3f831982" [label=""];
  "sha256:b83961b6e891fb525e04117b64d1f860fefe9629c2f1085b2a7464bf3f831982" -> "sha256:f56e6bb05b1b82b42c8d188a39bee49c521bcc6b610440ddc483ac5b16863286" [label=""];
  "sha256:f56e6bb05b1b82b42c8d188a39bee49c521bcc6b610440ddc483ac5b16863286" -> "sha256:5be2dbdda3f3d8d2f18941c998da15d6042ca45be67fa642441ea18a6b3471dc" [label=""];
  "sha256:5be2dbdda3f3d8d2f18941c998da15d6042ca45be67fa642441ea18a6b3471dc" -> "sha256:2bf59aedf208002a22ffdb873818567193a262a9a6785bbe0cdeb44f218a6606" [label=""];
  "sha256:2bf59aedf208002a22ffdb873818567193a262a9a6785bbe0cdeb44f218a6606" -> "sha256:ae59367632d24e35e127bcff2c691160922785536294e337751c5be11481eb8f" [label=""];
}

