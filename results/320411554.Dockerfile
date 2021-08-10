[app/sources/320411554.Dockerfile]
digraph {
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" [label="docker-image://docker.io/bitnami/minideb:jessie@sha256:095c0610f92c0d9ad329902d7a4989596c0ca28ebeefc844b2ec0ea5ce50a7d8" shape="ellipse"];
  "sha256:2f7d37d9e0e39acf099f08bafce2a66c8a03b50bfebe18d8c646410ca0a6a7bf" [label="/bin/sh -c install_packages ca-certificates" shape="box"];
  "sha256:8c930975378b0a2f645aa19019f0b31444a88ce31c5651d5903e876dd3ea657c" [label="local://context" shape="ellipse"];
  "sha256:02be60732fb9e3161b576680d432ff04a038118d7eaed6ee56b4695ed8bdbdf5" [label="copy{src=/kubeless-function-controller, dest=/kubeless-function-controller}" shape="note"];
  "sha256:514e906f0836dfd07332cc4b2f93ce880e346d29b298831c0ce1d068dbfea281" [label="sha256:514e906f0836dfd07332cc4b2f93ce880e346d29b298831c0ce1d068dbfea281" shape="plaintext"];
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" -> "sha256:2f7d37d9e0e39acf099f08bafce2a66c8a03b50bfebe18d8c646410ca0a6a7bf" [label=""];
  "sha256:2f7d37d9e0e39acf099f08bafce2a66c8a03b50bfebe18d8c646410ca0a6a7bf" -> "sha256:02be60732fb9e3161b576680d432ff04a038118d7eaed6ee56b4695ed8bdbdf5" [label=""];
  "sha256:8c930975378b0a2f645aa19019f0b31444a88ce31c5651d5903e876dd3ea657c" -> "sha256:02be60732fb9e3161b576680d432ff04a038118d7eaed6ee56b4695ed8bdbdf5" [label=""];
  "sha256:02be60732fb9e3161b576680d432ff04a038118d7eaed6ee56b4695ed8bdbdf5" -> "sha256:514e906f0836dfd07332cc4b2f93ce880e346d29b298831c0ce1d068dbfea281" [label=""];
}

