[app/sources/321240787.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:a042bf5889cc716228729271e1dc621a001db02db0caf3943cdf1e7bd1a00a68" [label="local://context" shape="ellipse"];
  "sha256:18ed4d7820c01effd9ba55edb4c7f46bc5081c4ddd2b3f5d876ab27d2f841bf4" [label="copy{src=/target/NexClipper-0.0.1.war, dest=/NexClipper.war}" shape="note"];
  "sha256:2d6676388f74a38a9734920e19b667859f1348c661da58a92843fb67a4f65c7c" [label="/bin/sh -c sh -c 'touch /NexClipper.war'" shape="box"];
  "sha256:1eb7046f2d884613cd523436b43e9e2282bd0fa70f2707cc4ab9c02d6b0bd7ba" [label="/bin/sh -c apk add --no-cache curl" shape="box"];
  "sha256:fbdbc12de24a4cf6be1bd3abd2ed2f353555a34ffdde4cd8109c04beb35a47e7" [label="sha256:fbdbc12de24a4cf6be1bd3abd2ed2f353555a34ffdde4cd8109c04beb35a47e7" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:18ed4d7820c01effd9ba55edb4c7f46bc5081c4ddd2b3f5d876ab27d2f841bf4" [label=""];
  "sha256:a042bf5889cc716228729271e1dc621a001db02db0caf3943cdf1e7bd1a00a68" -> "sha256:18ed4d7820c01effd9ba55edb4c7f46bc5081c4ddd2b3f5d876ab27d2f841bf4" [label=""];
  "sha256:18ed4d7820c01effd9ba55edb4c7f46bc5081c4ddd2b3f5d876ab27d2f841bf4" -> "sha256:2d6676388f74a38a9734920e19b667859f1348c661da58a92843fb67a4f65c7c" [label=""];
  "sha256:2d6676388f74a38a9734920e19b667859f1348c661da58a92843fb67a4f65c7c" -> "sha256:1eb7046f2d884613cd523436b43e9e2282bd0fa70f2707cc4ab9c02d6b0bd7ba" [label=""];
  "sha256:1eb7046f2d884613cd523436b43e9e2282bd0fa70f2707cc4ab9c02d6b0bd7ba" -> "sha256:fbdbc12de24a4cf6be1bd3abd2ed2f353555a34ffdde4cd8109c04beb35a47e7" [label=""];
}

