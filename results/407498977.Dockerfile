[app/sources/407498977.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:1d29c4a24604b9eda8d55c04412261d3958ff09d4ecba4879ee40451e5d32ded" [label="/bin/sh -c apk add --no-cache redis" shape="box"];
  "sha256:47a59ea05a8e13b19d9a1e71cdc1eab634fc521a18236725da7f9ab37d055e1e" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:5d0636aafe022f885e6fb44fe77534dce7ecac812a8060bc91d01ed73a588ff8" [label="mkdir{path=/app}" shape="note"];
  "sha256:5ed394a1c8401f4945d2c7cb41db76709ab422c13c4d2c5e53b870fdb40b1808" [label="local://context" shape="ellipse"];
  "sha256:9b0813db6347003e367d7acf79a748d94bf809380501a3edfbe6e31f79b71af9" [label="copy{src=/requirements-dev.txt, dest=/app/},copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:3dae9620a06a275f0eed5db50fd1904a407229b8b59ee8fba34b571da2672c0c" [label="/bin/sh -c pip install -r requirements-dev.txt" shape="box"];
  "sha256:e3cefa7f004961bc448c590a4b146a2c57f2e051312f2e26c76e54d5639e9ad6" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:ab4ac4ba1d5542bae4b168855adb6a7ee9413c785ab2718c2c9bf00531ee644a" [label="sha256:ab4ac4ba1d5542bae4b168855adb6a7ee9413c785ab2718c2c9bf00531ee644a" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:1d29c4a24604b9eda8d55c04412261d3958ff09d4ecba4879ee40451e5d32ded" [label=""];
  "sha256:1d29c4a24604b9eda8d55c04412261d3958ff09d4ecba4879ee40451e5d32ded" -> "sha256:47a59ea05a8e13b19d9a1e71cdc1eab634fc521a18236725da7f9ab37d055e1e" [label=""];
  "sha256:47a59ea05a8e13b19d9a1e71cdc1eab634fc521a18236725da7f9ab37d055e1e" -> "sha256:5d0636aafe022f885e6fb44fe77534dce7ecac812a8060bc91d01ed73a588ff8" [label=""];
  "sha256:5d0636aafe022f885e6fb44fe77534dce7ecac812a8060bc91d01ed73a588ff8" -> "sha256:9b0813db6347003e367d7acf79a748d94bf809380501a3edfbe6e31f79b71af9" [label=""];
  "sha256:5ed394a1c8401f4945d2c7cb41db76709ab422c13c4d2c5e53b870fdb40b1808" -> "sha256:9b0813db6347003e367d7acf79a748d94bf809380501a3edfbe6e31f79b71af9" [label=""];
  "sha256:9b0813db6347003e367d7acf79a748d94bf809380501a3edfbe6e31f79b71af9" -> "sha256:3dae9620a06a275f0eed5db50fd1904a407229b8b59ee8fba34b571da2672c0c" [label=""];
  "sha256:3dae9620a06a275f0eed5db50fd1904a407229b8b59ee8fba34b571da2672c0c" -> "sha256:e3cefa7f004961bc448c590a4b146a2c57f2e051312f2e26c76e54d5639e9ad6" [label=""];
  "sha256:5ed394a1c8401f4945d2c7cb41db76709ab422c13c4d2c5e53b870fdb40b1808" -> "sha256:e3cefa7f004961bc448c590a4b146a2c57f2e051312f2e26c76e54d5639e9ad6" [label=""];
  "sha256:e3cefa7f004961bc448c590a4b146a2c57f2e051312f2e26c76e54d5639e9ad6" -> "sha256:ab4ac4ba1d5542bae4b168855adb6a7ee9413c785ab2718c2c9bf00531ee644a" [label=""];
}

