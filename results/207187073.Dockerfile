[app/sources/207187073.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:1be541610e2fa7762992be12ab6f74f994d964c21d55f35d2e3c853952d32c94" [label="local://context" shape="ellipse"];
  "sha256:168eec633330f493477a73968899b8c77c90c5bbf1fe1b2339498c33eebde624" [label="copy{src=/qa.pipeline-1.1.2.jar, dest=/app.jar}" shape="note"];
  "sha256:af36d4e85ea7aa2ca922c8e7d6d8766df0531738137b03caf80051b7796535c5" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:e85179cb96ce8205914eb237af7b238ef2f6cb852008a0d0df1df8e2400d9553" [label="sha256:e85179cb96ce8205914eb237af7b238ef2f6cb852008a0d0df1df8e2400d9553" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:168eec633330f493477a73968899b8c77c90c5bbf1fe1b2339498c33eebde624" [label=""];
  "sha256:1be541610e2fa7762992be12ab6f74f994d964c21d55f35d2e3c853952d32c94" -> "sha256:168eec633330f493477a73968899b8c77c90c5bbf1fe1b2339498c33eebde624" [label=""];
  "sha256:168eec633330f493477a73968899b8c77c90c5bbf1fe1b2339498c33eebde624" -> "sha256:af36d4e85ea7aa2ca922c8e7d6d8766df0531738137b03caf80051b7796535c5" [label=""];
  "sha256:af36d4e85ea7aa2ca922c8e7d6d8766df0531738137b03caf80051b7796535c5" -> "sha256:e85179cb96ce8205914eb237af7b238ef2f6cb852008a0d0df1df8e2400d9553" [label=""];
}

