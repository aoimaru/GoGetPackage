[app/sources/252782892.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:276275bddf4f45c8585e3601ecd7e6ac8b4007939db6c836105c6d95ab45bcae" [label="local://context" shape="ellipse"];
  "sha256:175377580c04ef8030df95481371c277fc52bd168c38118d84b73ca5546651be" [label="copy{src=/build/libs/dropwizard71-fat-1.0.jar, dest=/data/dropwizard71-fat-1.0.jar}" shape="note"];
  "sha256:31991b1ef75a032eb2558c1346dee2b4a82281b7ee6881dd8af953c1516003b6" [label="copy{src=/prod.yml, dest=/data/prod.yml}" shape="note"];
  "sha256:a3467e17613490f0b21bd10bafda197cfe42ef8bfa4da5d48080502ee5093013" [label="sha256:a3467e17613490f0b21bd10bafda197cfe42ef8bfa4da5d48080502ee5093013" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:175377580c04ef8030df95481371c277fc52bd168c38118d84b73ca5546651be" [label=""];
  "sha256:276275bddf4f45c8585e3601ecd7e6ac8b4007939db6c836105c6d95ab45bcae" -> "sha256:175377580c04ef8030df95481371c277fc52bd168c38118d84b73ca5546651be" [label=""];
  "sha256:175377580c04ef8030df95481371c277fc52bd168c38118d84b73ca5546651be" -> "sha256:31991b1ef75a032eb2558c1346dee2b4a82281b7ee6881dd8af953c1516003b6" [label=""];
  "sha256:276275bddf4f45c8585e3601ecd7e6ac8b4007939db6c836105c6d95ab45bcae" -> "sha256:31991b1ef75a032eb2558c1346dee2b4a82281b7ee6881dd8af953c1516003b6" [label=""];
  "sha256:31991b1ef75a032eb2558c1346dee2b4a82281b7ee6881dd8af953c1516003b6" -> "sha256:a3467e17613490f0b21bd10bafda197cfe42ef8bfa4da5d48080502ee5093013" [label=""];
}

