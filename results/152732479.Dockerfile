[app/sources/152732479.Dockerfile]
digraph {
  "sha256:008eb27e04e6bbef677d670cd09822d1d981c4ad26dd80f646aa9bd6317d17fd" [label="docker-image://gcr.io/skia-public/basealpine:3.8" shape="ellipse"];
  "sha256:ba9611b5fe37d209edd792dcc80729b3e81bb3aa8e2268e3ff2c4bb5bd6be65a" [label="local://context" shape="ellipse"];
  "sha256:2b7bdf978c065f21f772dea5475df6fc40fc5ee7bb0a0bab22ab4ef9f464ebbf" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:0daf189265706a548170bd07b97169aebbd94f1ba436968e58bdf8f557b521e5" [label="sha256:0daf189265706a548170bd07b97169aebbd94f1ba436968e58bdf8f557b521e5" shape="plaintext"];
  "sha256:008eb27e04e6bbef677d670cd09822d1d981c4ad26dd80f646aa9bd6317d17fd" -> "sha256:2b7bdf978c065f21f772dea5475df6fc40fc5ee7bb0a0bab22ab4ef9f464ebbf" [label=""];
  "sha256:ba9611b5fe37d209edd792dcc80729b3e81bb3aa8e2268e3ff2c4bb5bd6be65a" -> "sha256:2b7bdf978c065f21f772dea5475df6fc40fc5ee7bb0a0bab22ab4ef9f464ebbf" [label=""];
  "sha256:2b7bdf978c065f21f772dea5475df6fc40fc5ee7bb0a0bab22ab4ef9f464ebbf" -> "sha256:0daf189265706a548170bd07b97169aebbd94f1ba436968e58bdf8f557b521e5" [label=""];
}

