[app/sources/261417818.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:a47d4a099531578b334058da6723325ae65e33cda5186045303f910f4aaa4e05" [label="/bin/sh -c pip install --no-cache-dir flask environs gunicorn" shape="box"];
  "sha256:1755bb0bea9dd2552c99161d47c84e7c4616992e7727bfcab132e29a832982a1" [label="local://context" shape="ellipse"];
  "sha256:bf790e42dd3566fac8a3a78108a81f3411123fbcd08c32e31d3e926ef9470dd1" [label="copy{src=/src, dest=/app}" shape="note"];
  "sha256:f065a8afc30d95f8e82d7f72e5249f2edead0e8747e2f59433acc824f2f2486e" [label="mkdir{path=/app}" shape="note"];
  "sha256:1e1378866bdab9f613a6c5283b8d5292d43293f4e847a9b32e07a7042f3d22ad" [label="sha256:1e1378866bdab9f613a6c5283b8d5292d43293f4e847a9b32e07a7042f3d22ad" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:a47d4a099531578b334058da6723325ae65e33cda5186045303f910f4aaa4e05" [label=""];
  "sha256:a47d4a099531578b334058da6723325ae65e33cda5186045303f910f4aaa4e05" -> "sha256:bf790e42dd3566fac8a3a78108a81f3411123fbcd08c32e31d3e926ef9470dd1" [label=""];
  "sha256:1755bb0bea9dd2552c99161d47c84e7c4616992e7727bfcab132e29a832982a1" -> "sha256:bf790e42dd3566fac8a3a78108a81f3411123fbcd08c32e31d3e926ef9470dd1" [label=""];
  "sha256:bf790e42dd3566fac8a3a78108a81f3411123fbcd08c32e31d3e926ef9470dd1" -> "sha256:f065a8afc30d95f8e82d7f72e5249f2edead0e8747e2f59433acc824f2f2486e" [label=""];
  "sha256:f065a8afc30d95f8e82d7f72e5249f2edead0e8747e2f59433acc824f2f2486e" -> "sha256:1e1378866bdab9f613a6c5283b8d5292d43293f4e847a9b32e07a7042f3d22ad" [label=""];
}

