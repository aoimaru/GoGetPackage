[app/sources/386033488.Dockerfile]
digraph {
  "sha256:b93f496d86e928384650928da2a9b83ffa1cd7d43dfa53e8145c235c29eeeded" [label="local://context" shape="ellipse"];
  "sha256:7efc40e81f9c99c0604f6ba149b491c1839f9c759c937183ae0ab2333b9496e7" [label="copy{src=/Dockerfile.name, dest=/}" shape="note"];
  "sha256:222f8ce09e9799e64f0b4baacf53ae3ae0d6d56dd59ebd01af9952560c92129f" [label="copy{src=/Dockerfile.name, dest=/Dockerfile.name}" shape="note"];
  "sha256:de5f2ca86a0457da46efaa5059dda000970d136743d952c789962e10f3109375" [label="copy{src=/Dockerfile.index, dest=/}" shape="note"];
  "sha256:f7e13a4a4be842011f9460e498132cbb773890d184376be1c89f397347f6ba03" [label="copy{src=/Dockerfile.index, dest=/Dockerfile.index}" shape="note"];
  "sha256:2e0f960a48a11d8224f19b0d83b255828397b1d41dec6bbd928e182f2cedbe20" [label="copy{src=/Dockerfile.mixed, dest=/}" shape="note"];
  "sha256:858d2b6c1558a87c8c6d3a103d538e18a933d399fc7c78396261465a4072d6ce" [label="copy{src=/Dockerfile.mixed, dest=/Dockerfile.mixed}" shape="note"];
  "sha256:7eacd25ce6deeaf564a01c33432a89a05c1874ba91d3ff28d5cdad137de1d754" [label="sha256:7eacd25ce6deeaf564a01c33432a89a05c1874ba91d3ff28d5cdad137de1d754" shape="plaintext"];
  "sha256:b93f496d86e928384650928da2a9b83ffa1cd7d43dfa53e8145c235c29eeeded" -> "sha256:7efc40e81f9c99c0604f6ba149b491c1839f9c759c937183ae0ab2333b9496e7" [label=""];
  "sha256:7efc40e81f9c99c0604f6ba149b491c1839f9c759c937183ae0ab2333b9496e7" -> "sha256:222f8ce09e9799e64f0b4baacf53ae3ae0d6d56dd59ebd01af9952560c92129f" [label=""];
  "sha256:b93f496d86e928384650928da2a9b83ffa1cd7d43dfa53e8145c235c29eeeded" -> "sha256:de5f2ca86a0457da46efaa5059dda000970d136743d952c789962e10f3109375" [label=""];
  "sha256:222f8ce09e9799e64f0b4baacf53ae3ae0d6d56dd59ebd01af9952560c92129f" -> "sha256:f7e13a4a4be842011f9460e498132cbb773890d184376be1c89f397347f6ba03" [label=""];
  "sha256:de5f2ca86a0457da46efaa5059dda000970d136743d952c789962e10f3109375" -> "sha256:f7e13a4a4be842011f9460e498132cbb773890d184376be1c89f397347f6ba03" [label=""];
  "sha256:b93f496d86e928384650928da2a9b83ffa1cd7d43dfa53e8145c235c29eeeded" -> "sha256:2e0f960a48a11d8224f19b0d83b255828397b1d41dec6bbd928e182f2cedbe20" [label=""];
  "sha256:f7e13a4a4be842011f9460e498132cbb773890d184376be1c89f397347f6ba03" -> "sha256:858d2b6c1558a87c8c6d3a103d538e18a933d399fc7c78396261465a4072d6ce" [label=""];
  "sha256:2e0f960a48a11d8224f19b0d83b255828397b1d41dec6bbd928e182f2cedbe20" -> "sha256:858d2b6c1558a87c8c6d3a103d538e18a933d399fc7c78396261465a4072d6ce" [label=""];
  "sha256:858d2b6c1558a87c8c6d3a103d538e18a933d399fc7c78396261465a4072d6ce" -> "sha256:7eacd25ce6deeaf564a01c33432a89a05c1874ba91d3ff28d5cdad137de1d754" [label=""];
}

