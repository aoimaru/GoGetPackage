[app/sources/335320429.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:05cef670598818f8f3af88c58cc99867421eee3fa94aa06b24839d69dd913f7d" [label="local://context" shape="ellipse"];
  "sha256:9a255bf5840b21204bce676c0b3226c4d9a8de358637c70f04c560ba04dad70d" [label="copy{src=/, dest=/code/src/github.com/agtorre/go-solutions/section3/docker}" shape="note"];
  "sha256:c0c1f0c217477fe3e501f59e7c332b692b0a87427eb8a23a9dabfb501c2e89f1" [label="mkdir{path=/code/src/github.com/agtorre/go-solutions/section3/docker/example}" shape="note"];
  "sha256:eb7923f8154de6a1e05f3f64d3400bd961e60d9079a0ee1d6f707a1600dd46b3" [label="/bin/sh -c go build" shape="box"];
  "sha256:331929ff0cf78bf1b109518bdf23ae9440f66ff1cca3f57bf4daf112351f2cdb" [label="sha256:331929ff0cf78bf1b109518bdf23ae9440f66ff1cca3f57bf4daf112351f2cdb" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:9a255bf5840b21204bce676c0b3226c4d9a8de358637c70f04c560ba04dad70d" [label=""];
  "sha256:05cef670598818f8f3af88c58cc99867421eee3fa94aa06b24839d69dd913f7d" -> "sha256:9a255bf5840b21204bce676c0b3226c4d9a8de358637c70f04c560ba04dad70d" [label=""];
  "sha256:9a255bf5840b21204bce676c0b3226c4d9a8de358637c70f04c560ba04dad70d" -> "sha256:c0c1f0c217477fe3e501f59e7c332b692b0a87427eb8a23a9dabfb501c2e89f1" [label=""];
  "sha256:c0c1f0c217477fe3e501f59e7c332b692b0a87427eb8a23a9dabfb501c2e89f1" -> "sha256:eb7923f8154de6a1e05f3f64d3400bd961e60d9079a0ee1d6f707a1600dd46b3" [label=""];
  "sha256:eb7923f8154de6a1e05f3f64d3400bd961e60d9079a0ee1d6f707a1600dd46b3" -> "sha256:331929ff0cf78bf1b109518bdf23ae9440f66ff1cca3f57bf4daf112351f2cdb" [label=""];
}

