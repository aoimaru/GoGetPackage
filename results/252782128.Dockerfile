[app/sources/252782128.Dockerfile]
digraph {
  "sha256:9cb9767b78ff57e7516c545208ac44764d04a958d8d250d4507258765da25bb0" [label="local://context" shape="ellipse"];
  "sha256:cf3ce3bd4781e23de7ce68d6513bb767f459f7acafbd61679f6b7c03309adba5" [label="docker-image://docker.io/onosproject/onos:1.2@sha256:a3977d37b21dc64e81aeff6a0c30e3d8cd3f70795fa490f3cc58ab2d1c33244a" shape="ellipse"];
  "sha256:d31dd3d9642d32d51a89e6f14d2cabe26a6c0563aba3fe6b58d71939717adecc" [label="copy{src=/onos-service, dest=/root/onos/bin/onos-service}" shape="note"];
  "sha256:1dc15a1a465a605ae432890daf8596e9247bf3e01fe255c2787f22cee562f7eb" [label="/bin/sh -c chmod 755 /root/onos/bin/onos-service" shape="box"];
  "sha256:38feb5bc5fd937d6d0856115df7ec1e92fc339327cca018dc3fd7b5b456e5a76" [label="sha256:38feb5bc5fd937d6d0856115df7ec1e92fc339327cca018dc3fd7b5b456e5a76" shape="plaintext"];
  "sha256:cf3ce3bd4781e23de7ce68d6513bb767f459f7acafbd61679f6b7c03309adba5" -> "sha256:d31dd3d9642d32d51a89e6f14d2cabe26a6c0563aba3fe6b58d71939717adecc" [label=""];
  "sha256:9cb9767b78ff57e7516c545208ac44764d04a958d8d250d4507258765da25bb0" -> "sha256:d31dd3d9642d32d51a89e6f14d2cabe26a6c0563aba3fe6b58d71939717adecc" [label=""];
  "sha256:d31dd3d9642d32d51a89e6f14d2cabe26a6c0563aba3fe6b58d71939717adecc" -> "sha256:1dc15a1a465a605ae432890daf8596e9247bf3e01fe255c2787f22cee562f7eb" [label=""];
  "sha256:1dc15a1a465a605ae432890daf8596e9247bf3e01fe255c2787f22cee562f7eb" -> "sha256:38feb5bc5fd937d6d0856115df7ec1e92fc339327cca018dc3fd7b5b456e5a76" [label=""];
}

