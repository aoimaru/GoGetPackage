[app/sources/440881356.Dockerfile]
digraph {
  "sha256:e09c00bb214170e2f38000fc3adc061c1f9de0acedf5ddf7245f623d29e4378b" [label="docker-image://docker.io/teleivo/openmrs-platform:2.0.0-1" shape="ellipse"];
  "sha256:a0e3c42c2a9c49035130fe27ec16e37e9ae79d31c718b15f028a4c92cc4a50a5" [label="/bin/sh -c curl -L     \"https://openmrs.jfrog.io/openmrs/omods/omod/legacyui-1.2.omod\"     -o \"${OPENMRS_MODULES}/legacyui-1.2.omod\"" shape="box"];
  "sha256:b0474454f450852adf3a987f9d23753c7c6df269a0fca69cb56e1144bb4699de" [label="/bin/sh -c curl -L     \"https://openmrs.jfrog.io/openmrs/omods/omod/webservices.rest-2.17.omod\"     -o \"${OPENMRS_MODULES}/webservices.rest-2.17.omod\"" shape="box"];
  "sha256:120f4f3681373c7c003c7559641b051b593c6abfe7e9f52da4e3104d5448089a" [label="local://context" shape="ellipse"];
  "sha256:c65a0acca0e364b06b17eb8b926a3a9e7aa03199c16dd90e6bc2c28e0e8f23ea" [label="copy{src=/maven/*.omod, dest=/}" shape="note"];
  "sha256:e7e37cc2ae2f3e835085533d704cd6e6142a95b48f6e7868fe875329829e11ce" [label="sha256:e7e37cc2ae2f3e835085533d704cd6e6142a95b48f6e7868fe875329829e11ce" shape="plaintext"];
  "sha256:e09c00bb214170e2f38000fc3adc061c1f9de0acedf5ddf7245f623d29e4378b" -> "sha256:a0e3c42c2a9c49035130fe27ec16e37e9ae79d31c718b15f028a4c92cc4a50a5" [label=""];
  "sha256:a0e3c42c2a9c49035130fe27ec16e37e9ae79d31c718b15f028a4c92cc4a50a5" -> "sha256:b0474454f450852adf3a987f9d23753c7c6df269a0fca69cb56e1144bb4699de" [label=""];
  "sha256:b0474454f450852adf3a987f9d23753c7c6df269a0fca69cb56e1144bb4699de" -> "sha256:c65a0acca0e364b06b17eb8b926a3a9e7aa03199c16dd90e6bc2c28e0e8f23ea" [label=""];
  "sha256:120f4f3681373c7c003c7559641b051b593c6abfe7e9f52da4e3104d5448089a" -> "sha256:c65a0acca0e364b06b17eb8b926a3a9e7aa03199c16dd90e6bc2c28e0e8f23ea" [label=""];
  "sha256:c65a0acca0e364b06b17eb8b926a3a9e7aa03199c16dd90e6bc2c28e0e8f23ea" -> "sha256:e7e37cc2ae2f3e835085533d704cd6e6142a95b48f6e7868fe875329829e11ce" [label=""];
}

