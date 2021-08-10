[app/sources/324721610.Dockerfile]
digraph {
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:8f96509a6e6a1b78593201f9f3fc6e24adc718de3c3c59c558e39894a8b8bd8a" [label="/bin/sh -c apt-get update && apt-get install -y   wget   xz-utils   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:29d2f5ba6f462806054c371f409936c43f62943226c4bb642693227340bf901e" [label="/bin/sh -c mkdir /sfdx     && wget -qO- https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz | tar xJ -C sfdx --strip-components 1     && /sfdx/install     && rm -rf /sfdx" shape="box"];
  "sha256:7d53dd673fc0aa3a0e08215a231d9b87f5822a3303f603071e87d8b46b2fffa2" [label="copy{src=/usr/local/lib/sfdx, dest=/usr/local/lib/sfdx}" shape="note"];
  "sha256:434d255890a93d53e4d885bf9b24a23fb9c86a7d4a75508c18dc85d357a224a7" [label="/bin/sh -c ln -sf /usr/local/lib/sfdx/bin/sfdx /usr/local/bin/sfdx" shape="box"];
  "sha256:9660945a9ab1ea8743b83b54875d00de49e8c8759093797a05698a6b2420b389" [label="/bin/sh -c sfdx update" shape="box"];
  "sha256:3b1e0e79eb41f3660a97d29a45f7ead91e0a315ff42a1986800b7db3cf3e7b4e" [label="local://context" shape="ellipse"];
  "sha256:6eae325b864de5c1a7e2c63084fa9439dca6eb13ae032173945fd2ab3c7dbcda" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:7a5a0bb4426cc91c307ac325c37c82708086085248f09f35222e5ecbd33c6340" [label="/bin/sh -c chmod +x docker-entrypoint.sh" shape="box"];
  "sha256:138b53d464897f7cc6f5d6e05f5fe02fa7cdbee06f8dcf2da7f922331f48cd89" [label="sha256:138b53d464897f7cc6f5d6e05f5fe02fa7cdbee06f8dcf2da7f922331f48cd89" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:8f96509a6e6a1b78593201f9f3fc6e24adc718de3c3c59c558e39894a8b8bd8a" [label=""];
  "sha256:8f96509a6e6a1b78593201f9f3fc6e24adc718de3c3c59c558e39894a8b8bd8a" -> "sha256:29d2f5ba6f462806054c371f409936c43f62943226c4bb642693227340bf901e" [label=""];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:7d53dd673fc0aa3a0e08215a231d9b87f5822a3303f603071e87d8b46b2fffa2" [label=""];
  "sha256:29d2f5ba6f462806054c371f409936c43f62943226c4bb642693227340bf901e" -> "sha256:7d53dd673fc0aa3a0e08215a231d9b87f5822a3303f603071e87d8b46b2fffa2" [label=""];
  "sha256:7d53dd673fc0aa3a0e08215a231d9b87f5822a3303f603071e87d8b46b2fffa2" -> "sha256:434d255890a93d53e4d885bf9b24a23fb9c86a7d4a75508c18dc85d357a224a7" [label=""];
  "sha256:434d255890a93d53e4d885bf9b24a23fb9c86a7d4a75508c18dc85d357a224a7" -> "sha256:9660945a9ab1ea8743b83b54875d00de49e8c8759093797a05698a6b2420b389" [label=""];
  "sha256:9660945a9ab1ea8743b83b54875d00de49e8c8759093797a05698a6b2420b389" -> "sha256:6eae325b864de5c1a7e2c63084fa9439dca6eb13ae032173945fd2ab3c7dbcda" [label=""];
  "sha256:3b1e0e79eb41f3660a97d29a45f7ead91e0a315ff42a1986800b7db3cf3e7b4e" -> "sha256:6eae325b864de5c1a7e2c63084fa9439dca6eb13ae032173945fd2ab3c7dbcda" [label=""];
  "sha256:6eae325b864de5c1a7e2c63084fa9439dca6eb13ae032173945fd2ab3c7dbcda" -> "sha256:7a5a0bb4426cc91c307ac325c37c82708086085248f09f35222e5ecbd33c6340" [label=""];
  "sha256:7a5a0bb4426cc91c307ac325c37c82708086085248f09f35222e5ecbd33c6340" -> "sha256:138b53d464897f7cc6f5d6e05f5fe02fa7cdbee06f8dcf2da7f922331f48cd89" [label=""];
}

