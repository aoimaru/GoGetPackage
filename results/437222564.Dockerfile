[app/sources/437222564.Dockerfile]
digraph {
  "sha256:7bc49f80c57d58e641db989e74ab9b6ad159b1d00911a64353913cd2c8052a00" [label="docker-image://docker.io/cdssnc/seekret:5b62fc5" shape="ellipse"];
  "sha256:fcc609f23333d068b4a7f094a8a797942b6cd15e2d7d335ca296485f56305467" [label="local://context" shape="ellipse"];
  "sha256:e2292c2c3718f752f66f748445bac29cf5093d899ebe25483a396b293727e74d" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:d0d615092066fbdbe5bd61fb39793c200906a917f9a18f378b19b6344adaecfa" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:f94f8f44ab12779d0169bc648b3231f8716e84f54c623f9757e319336b6423e3" [label="sha256:f94f8f44ab12779d0169bc648b3231f8716e84f54c623f9757e319336b6423e3" shape="plaintext"];
  "sha256:7bc49f80c57d58e641db989e74ab9b6ad159b1d00911a64353913cd2c8052a00" -> "sha256:e2292c2c3718f752f66f748445bac29cf5093d899ebe25483a396b293727e74d" [label=""];
  "sha256:fcc609f23333d068b4a7f094a8a797942b6cd15e2d7d335ca296485f56305467" -> "sha256:e2292c2c3718f752f66f748445bac29cf5093d899ebe25483a396b293727e74d" [label=""];
  "sha256:e2292c2c3718f752f66f748445bac29cf5093d899ebe25483a396b293727e74d" -> "sha256:d0d615092066fbdbe5bd61fb39793c200906a917f9a18f378b19b6344adaecfa" [label=""];
  "sha256:d0d615092066fbdbe5bd61fb39793c200906a917f9a18f378b19b6344adaecfa" -> "sha256:f94f8f44ab12779d0169bc648b3231f8716e84f54c623f9757e319336b6423e3" [label=""];
}

