[app/sources/302853850.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:91b45b779141a424cf68a031d057105e91d6a74a0570f1eafaa78d93aaf107fd" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       curl ca-certificates ca-certificates-java       git pkg-config       zip unzip zlib1g-dev libarchive-dev       g++ gcc openjdk-8-jdk python &&     apt-get clean" shape="box"];
  "sha256:b9b0bbbc3f132ccb38b1fa05c0743a2ea3b6937493dae7adf6ea587c9597ec46" [label="sha256:b9b0bbbc3f132ccb38b1fa05c0743a2ea3b6937493dae7adf6ea587c9597ec46" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:91b45b779141a424cf68a031d057105e91d6a74a0570f1eafaa78d93aaf107fd" [label=""];
  "sha256:91b45b779141a424cf68a031d057105e91d6a74a0570f1eafaa78d93aaf107fd" -> "sha256:b9b0bbbc3f132ccb38b1fa05c0743a2ea3b6937493dae7adf6ea587c9597ec46" [label=""];
}

