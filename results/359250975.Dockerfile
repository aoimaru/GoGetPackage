[app/sources/359250975.Dockerfile]
digraph {
  "sha256:f2230a9c81b5a734515e7a175affb3f360f768f96dbe7e2fe6fd609b5e9b0981" [label="docker-image://docker.io/stimela/katdal:1.0.1@sha256:cf7716d2f3da95ea874553ca9a2942761b2a89ef2aa1b4ee72e2c75bcc8ca787" shape="ellipse"];
  "sha256:69481edc6d386354fc17f470572d00c20fddfb92d9d1531abfcaf0286bf06449" [label="local://context" shape="ellipse"];
  "sha256:b1ca85e0c5939df87d204b5fb64c1056e0003070118ef454bf56036f8d37aea7" [label="copy{src=/src, dest=/scratch/code}" shape="note"];
  "sha256:0e6fc9dc7019628dd62f737a2baf6d5091fafd36cba358470b504a55f0a936d5" [label="sha256:0e6fc9dc7019628dd62f737a2baf6d5091fafd36cba358470b504a55f0a936d5" shape="plaintext"];
  "sha256:f2230a9c81b5a734515e7a175affb3f360f768f96dbe7e2fe6fd609b5e9b0981" -> "sha256:b1ca85e0c5939df87d204b5fb64c1056e0003070118ef454bf56036f8d37aea7" [label=""];
  "sha256:69481edc6d386354fc17f470572d00c20fddfb92d9d1531abfcaf0286bf06449" -> "sha256:b1ca85e0c5939df87d204b5fb64c1056e0003070118ef454bf56036f8d37aea7" [label=""];
  "sha256:b1ca85e0c5939df87d204b5fb64c1056e0003070118ef454bf56036f8d37aea7" -> "sha256:0e6fc9dc7019628dd62f737a2baf6d5091fafd36cba358470b504a55f0a936d5" [label=""];
}

