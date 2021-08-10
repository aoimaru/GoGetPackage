[app/sources/201039034.Dockerfile]
digraph {
  "sha256:cd7b5d7dabf50b0b345d2af99770e45f9a749ee88db0cc180a65939d978e5b77" [label="docker-image://docker.io/cloudsuite/spark:latest" shape="ellipse"];
  "sha256:d062874a2b4c6da98b4ddf4d8653d4537830ad3490f7d9e15a453493fddba36d" [label="local://context" shape="ellipse"];
  "sha256:9bad71b72bbe36fe21e36b2dae9482a4dffd0fdf24bcf550cbc7c39239dda34e" [label="copy{src=/benchmark, dest=/root/benchmark}" shape="note"];
  "sha256:73a97b14a93954e9a8863d3b0d312810844308632f6deeeebdd6e2b3e79da892" [label="copy{src=/files, dest=/root/}" shape="note"];
  "sha256:93c993ae41fbac0a9991e17f9d30aabb6fb15df69653355c99a8491d39af2889" [label="mkdir{path=/root}" shape="note"];
  "sha256:b82288fadd161e581f67488d4f5aece35a3e30d106b3cb383dc0a5a5ba262f4c" [label="/bin/sh -c echo \"deb http://dl.bintray.com/sbt/debian /\" | tee -a /etc/apt/sources.list.d/sbt.list     && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823     && apt-get update -y     && apt-get install -y sbt     && rm -rf /var/lib/apt/lists/*     && sed -i \"s/EDGES_FILE/\\/data\\/edges\\.csv/g\" benchmark/src/main/scala/GraphAnalytics.scala     && (cd benchmark && sbt package)     && mkdir -p /benchmarks     && mv benchmark/target/scala-2.10/*.jar benchmark/run_benchmark.sh /benchmarks     && rm -r benchmark     && apt-get purge -y --auto-remove sbt     && rm -r .sbt .ivy2     && chmod +x /root/entrypoint.sh" shape="box"];
  "sha256:bafb8ad4f5d26608e7e5df6074eb6d76524a4d4e8051ef798c5f0ffeed2e09a5" [label="sha256:bafb8ad4f5d26608e7e5df6074eb6d76524a4d4e8051ef798c5f0ffeed2e09a5" shape="plaintext"];
  "sha256:cd7b5d7dabf50b0b345d2af99770e45f9a749ee88db0cc180a65939d978e5b77" -> "sha256:9bad71b72bbe36fe21e36b2dae9482a4dffd0fdf24bcf550cbc7c39239dda34e" [label=""];
  "sha256:d062874a2b4c6da98b4ddf4d8653d4537830ad3490f7d9e15a453493fddba36d" -> "sha256:9bad71b72bbe36fe21e36b2dae9482a4dffd0fdf24bcf550cbc7c39239dda34e" [label=""];
  "sha256:9bad71b72bbe36fe21e36b2dae9482a4dffd0fdf24bcf550cbc7c39239dda34e" -> "sha256:73a97b14a93954e9a8863d3b0d312810844308632f6deeeebdd6e2b3e79da892" [label=""];
  "sha256:d062874a2b4c6da98b4ddf4d8653d4537830ad3490f7d9e15a453493fddba36d" -> "sha256:73a97b14a93954e9a8863d3b0d312810844308632f6deeeebdd6e2b3e79da892" [label=""];
  "sha256:73a97b14a93954e9a8863d3b0d312810844308632f6deeeebdd6e2b3e79da892" -> "sha256:93c993ae41fbac0a9991e17f9d30aabb6fb15df69653355c99a8491d39af2889" [label=""];
  "sha256:93c993ae41fbac0a9991e17f9d30aabb6fb15df69653355c99a8491d39af2889" -> "sha256:b82288fadd161e581f67488d4f5aece35a3e30d106b3cb383dc0a5a5ba262f4c" [label=""];
  "sha256:b82288fadd161e581f67488d4f5aece35a3e30d106b3cb383dc0a5a5ba262f4c" -> "sha256:bafb8ad4f5d26608e7e5df6074eb6d76524a4d4e8051ef798c5f0ffeed2e09a5" [label=""];
}

