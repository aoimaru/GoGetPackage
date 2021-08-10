[app/sources/157117556.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:a173769111fb1f2302a0f66b1e496c7e7c27c016693becaf073015559805cf8c" [label="mkdir{path=/pg_web_stats}" shape="note"];
  "sha256:0b42e8e9021dfb3b1bd9ec230a9ceba539d2106fdc884217225390f9ca0e0c71" [label="local://context" shape="ellipse"];
  "sha256:7a94bc8d5c654eab6b36115c3b4b12cac4dd2ce65d7d55e92d7d0247e65d267f" [label="copy{src=/Gemfile, dest=/pg_web_stats/},copy{src=/Gemfile.lock, dest=/pg_web_stats/},copy{src=/pg_web_stats.gemspec, dest=/pg_web_stats/}" shape="note"];
  "sha256:10e566048989b153e3b4fdb187761808a8e2182caec73f69e73e886574109b00" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:e7c4af45cc1bbe96d828f4b4224bc3b715ca92aba0e8a774c1e8d959e130ef77" [label="copy{src=/, dest=/pg_web_stats/}" shape="note"];
  "sha256:bcbf7426c138b8313007bea373e3775d670104855b7fa2099ae90be43ad09f01" [label="/bin/sh -c mkdir /etc/pg_web_stats  && ln -sf /etc/pg_web_stats/config.yml /pg_web_stats/config.yml" shape="box"];
  "sha256:809dbb799413179ab102b70f79deade5bacc2abfcb219f6c5a694a236730a82b" [label="sha256:809dbb799413179ab102b70f79deade5bacc2abfcb219f6c5a694a236730a82b" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:a173769111fb1f2302a0f66b1e496c7e7c27c016693becaf073015559805cf8c" [label=""];
  "sha256:a173769111fb1f2302a0f66b1e496c7e7c27c016693becaf073015559805cf8c" -> "sha256:7a94bc8d5c654eab6b36115c3b4b12cac4dd2ce65d7d55e92d7d0247e65d267f" [label=""];
  "sha256:0b42e8e9021dfb3b1bd9ec230a9ceba539d2106fdc884217225390f9ca0e0c71" -> "sha256:7a94bc8d5c654eab6b36115c3b4b12cac4dd2ce65d7d55e92d7d0247e65d267f" [label=""];
  "sha256:7a94bc8d5c654eab6b36115c3b4b12cac4dd2ce65d7d55e92d7d0247e65d267f" -> "sha256:10e566048989b153e3b4fdb187761808a8e2182caec73f69e73e886574109b00" [label=""];
  "sha256:10e566048989b153e3b4fdb187761808a8e2182caec73f69e73e886574109b00" -> "sha256:e7c4af45cc1bbe96d828f4b4224bc3b715ca92aba0e8a774c1e8d959e130ef77" [label=""];
  "sha256:0b42e8e9021dfb3b1bd9ec230a9ceba539d2106fdc884217225390f9ca0e0c71" -> "sha256:e7c4af45cc1bbe96d828f4b4224bc3b715ca92aba0e8a774c1e8d959e130ef77" [label=""];
  "sha256:e7c4af45cc1bbe96d828f4b4224bc3b715ca92aba0e8a774c1e8d959e130ef77" -> "sha256:bcbf7426c138b8313007bea373e3775d670104855b7fa2099ae90be43ad09f01" [label=""];
  "sha256:bcbf7426c138b8313007bea373e3775d670104855b7fa2099ae90be43ad09f01" -> "sha256:809dbb799413179ab102b70f79deade5bacc2abfcb219f6c5a694a236730a82b" [label=""];
}

