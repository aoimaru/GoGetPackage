[app/sources/221079897.Dockerfile]
digraph {
  "sha256:4fd1dd70abf41e252b22227b84082ae59aab94e503c39ea79d2669f9b1ea53c0" [label="docker-image://docker.elastic.co/beats/filebeat:6.3.1@sha256:339ffde106ae930b00afd9fb9feb91fc9643de8257df9c68b4bc1a88ecf5e2f2" shape="ellipse"];
  "sha256:bd015aee4254d77987483431e0e6b2adf4846e9e71442614b80942be6a400b51" [label="local://context" shape="ellipse"];
  "sha256:46a29b6bf3692de07926c1978d92f47100561ea863eb8666952f2e2190a59549" [label="copy{src=/filebeat.yml, dest=/usr/share/filebeat/filebeat.yml}" shape="note"];
  "sha256:c0fadecd4d25646ac2ba76c24caa346e6a9f8a659dd68f73c043f16c3e033006" [label="/bin/sh -c chown filebeat /usr/share/filebeat/filebeat.yml" shape="box"];
  "sha256:a80a09ec114aebe621000b518ff686ce1d05d7d7f4baade30e186fd913390464" [label="sha256:a80a09ec114aebe621000b518ff686ce1d05d7d7f4baade30e186fd913390464" shape="plaintext"];
  "sha256:4fd1dd70abf41e252b22227b84082ae59aab94e503c39ea79d2669f9b1ea53c0" -> "sha256:46a29b6bf3692de07926c1978d92f47100561ea863eb8666952f2e2190a59549" [label=""];
  "sha256:bd015aee4254d77987483431e0e6b2adf4846e9e71442614b80942be6a400b51" -> "sha256:46a29b6bf3692de07926c1978d92f47100561ea863eb8666952f2e2190a59549" [label=""];
  "sha256:46a29b6bf3692de07926c1978d92f47100561ea863eb8666952f2e2190a59549" -> "sha256:c0fadecd4d25646ac2ba76c24caa346e6a9f8a659dd68f73c043f16c3e033006" [label=""];
  "sha256:c0fadecd4d25646ac2ba76c24caa346e6a9f8a659dd68f73c043f16c3e033006" -> "sha256:a80a09ec114aebe621000b518ff686ce1d05d7d7f4baade30e186fd913390464" [label=""];
}

