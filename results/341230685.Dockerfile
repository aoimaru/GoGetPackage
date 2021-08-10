[app/sources/341230685.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:98ba09e4a7f78da3a1521513084f39695abe0860fc9e3f444537bc18c1476842" [label="local://context" shape="ellipse"];
  "sha256:8501164a1d8e59156f06e013a4d50d231a55e513e4ef1346825fd3c5f33effd9" [label="copy{src=/, dest=/go/src/wordfilter}" shape="note"];
  "sha256:e3e05a42266ead1ebc2cb22a5e9224b7f2af4b01c365fb85b5c4eee384700af4" [label="/bin/sh -c go install wordfilter" shape="box"];
  "sha256:9cced4e9e8c342f6c2ac275bcb83de473e8779e744823d637a9f804adaee8ce1" [label="sha256:9cced4e9e8c342f6c2ac275bcb83de473e8779e744823d637a9f804adaee8ce1" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:8501164a1d8e59156f06e013a4d50d231a55e513e4ef1346825fd3c5f33effd9" [label=""];
  "sha256:98ba09e4a7f78da3a1521513084f39695abe0860fc9e3f444537bc18c1476842" -> "sha256:8501164a1d8e59156f06e013a4d50d231a55e513e4ef1346825fd3c5f33effd9" [label=""];
  "sha256:8501164a1d8e59156f06e013a4d50d231a55e513e4ef1346825fd3c5f33effd9" -> "sha256:e3e05a42266ead1ebc2cb22a5e9224b7f2af4b01c365fb85b5c4eee384700af4" [label=""];
  "sha256:e3e05a42266ead1ebc2cb22a5e9224b7f2af4b01c365fb85b5c4eee384700af4" -> "sha256:9cced4e9e8c342f6c2ac275bcb83de473e8779e744823d637a9f804adaee8ce1" [label=""];
}

