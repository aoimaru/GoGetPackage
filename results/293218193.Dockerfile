[app/sources/293218193.Dockerfile]
digraph {
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" [label="docker-image://docker.io/library/java:latest" shape="ellipse"];
  "sha256:00befdbbb512f0fff46d73bb0302829d7152bc061cdfad4fd256b35e65820dd7" [label="local://context" shape="ellipse"];
  "sha256:f85af08b54d323b646cbca6a15e72c94d3448e9afef9569acec82467fff876f4" [label="copy{src=/target/order-0.0.1-SNAPSHOT.jar, dest=/order.jar}" shape="note"];
  "sha256:c7f8c176c8c4b3cb89a25bca21839225fc98518eb9ac37d7c0e96befdfd611c1" [label="sha256:c7f8c176c8c4b3cb89a25bca21839225fc98518eb9ac37d7c0e96befdfd611c1" shape="plaintext"];
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" -> "sha256:f85af08b54d323b646cbca6a15e72c94d3448e9afef9569acec82467fff876f4" [label=""];
  "sha256:00befdbbb512f0fff46d73bb0302829d7152bc061cdfad4fd256b35e65820dd7" -> "sha256:f85af08b54d323b646cbca6a15e72c94d3448e9afef9569acec82467fff876f4" [label=""];
  "sha256:f85af08b54d323b646cbca6a15e72c94d3448e9afef9569acec82467fff876f4" -> "sha256:c7f8c176c8c4b3cb89a25bca21839225fc98518eb9ac37d7c0e96befdfd611c1" [label=""];
}

