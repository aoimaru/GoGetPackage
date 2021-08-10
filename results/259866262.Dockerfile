[app/sources/259866262.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:646fe9b383ca478c1a5933333ffdc7ef2bcd76c5e105f7b0427d135a643abbd9" [label="/bin/sh -c pip install click" shape="box"];
  "sha256:6ea87f9db7fb8d7a7b0869e1f32d58519ca0c6a59dac889017e5c6cab9d8f409" [label="local://context" shape="ellipse"];
  "sha256:648cfdec6aa95da42aaaf6ace23d293f015d036e4166e9448ede7e0dd30895d0" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:1863249481a7bfdc621110e46d0bd97e6c412c308834c3b8d59a9feb275380aa" [label="sha256:1863249481a7bfdc621110e46d0bd97e6c412c308834c3b8d59a9feb275380aa" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:646fe9b383ca478c1a5933333ffdc7ef2bcd76c5e105f7b0427d135a643abbd9" [label=""];
  "sha256:646fe9b383ca478c1a5933333ffdc7ef2bcd76c5e105f7b0427d135a643abbd9" -> "sha256:648cfdec6aa95da42aaaf6ace23d293f015d036e4166e9448ede7e0dd30895d0" [label=""];
  "sha256:6ea87f9db7fb8d7a7b0869e1f32d58519ca0c6a59dac889017e5c6cab9d8f409" -> "sha256:648cfdec6aa95da42aaaf6ace23d293f015d036e4166e9448ede7e0dd30895d0" [label=""];
  "sha256:648cfdec6aa95da42aaaf6ace23d293f015d036e4166e9448ede7e0dd30895d0" -> "sha256:1863249481a7bfdc621110e46d0bd97e6c412c308834c3b8d59a9feb275380aa" [label=""];
}

