[app/sources/233183409.Dockerfile]
digraph {
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" [label="docker-image://docker.io/library/spark-test-base:latest" shape="ellipse"];
  "sha256:f142bdfc4b9bd07510b2295d911ae2d7f8f622e8ea037c185daad5f5c9f25f10" [label="local://context" shape="ellipse"];
  "sha256:96ee21c764bc7c3509f009446c18b7d9e26dc7a01c0477e1e776e1353da6b998" [label="copy{src=/default_cmd, dest=/root/}" shape="note"];
  "sha256:8f64ab56a88c5cd574635f96492970ad66961692de990507407b140d8aead9fd" [label="sha256:8f64ab56a88c5cd574635f96492970ad66961692de990507407b140d8aead9fd" shape="plaintext"];
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" -> "sha256:96ee21c764bc7c3509f009446c18b7d9e26dc7a01c0477e1e776e1353da6b998" [label=""];
  "sha256:f142bdfc4b9bd07510b2295d911ae2d7f8f622e8ea037c185daad5f5c9f25f10" -> "sha256:96ee21c764bc7c3509f009446c18b7d9e26dc7a01c0477e1e776e1353da6b998" [label=""];
  "sha256:96ee21c764bc7c3509f009446c18b7d9e26dc7a01c0477e1e776e1353da6b998" -> "sha256:8f64ab56a88c5cd574635f96492970ad66961692de990507407b140d8aead9fd" [label=""];
}

