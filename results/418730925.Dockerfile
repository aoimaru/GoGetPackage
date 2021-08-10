[app/sources/418730925.Dockerfile]
digraph {
  "sha256:e3c4aae27c240f7125ae4995ca4e89b43d9766f490a70cbed132f15ac987dc76" [label="docker-image://docker.io/library/python:3.7.2-slim" shape="ellipse"];
  "sha256:e383215de92388e1fc0b49e59b422f0062552aff894358725a423a9c297f91d7" [label="/bin/sh -c apt-get update &&     apt-get -y install netcat &&     apt-get clean" shape="box"];
  "sha256:81904262bd1011dab941919c2f33068daa16b06dbf71de1a758407b3719dabb8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:090709b0a345242eb50a967d96c9e24a7147ca648c47747f8083c45cba56f060" [label="local://context" shape="ellipse"];
  "sha256:a1254ccefbb64f222a2d9ba0f20ec3687e2793f0fa0c0681dc75bbb1fca06e87" [label="copy{src=/requirements.txt, dest=/usr/src/app/requirements.txt}" shape="note"];
  "sha256:14d425ab57b4faa025d39fda1132909dd6346e0c2aa8e0a5e995237eb43ce453" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:9c408ec3f478a9c1496e00e8eef6f21ebdfce0f14a032b56b3ecb5848ea4b741" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:7f1f9abdf8262aacba437b793180103c7998f2821ee9f89f1818fa57fb67ce83" [label="sha256:7f1f9abdf8262aacba437b793180103c7998f2821ee9f89f1818fa57fb67ce83" shape="plaintext"];
  "sha256:e3c4aae27c240f7125ae4995ca4e89b43d9766f490a70cbed132f15ac987dc76" -> "sha256:e383215de92388e1fc0b49e59b422f0062552aff894358725a423a9c297f91d7" [label=""];
  "sha256:e383215de92388e1fc0b49e59b422f0062552aff894358725a423a9c297f91d7" -> "sha256:81904262bd1011dab941919c2f33068daa16b06dbf71de1a758407b3719dabb8" [label=""];
  "sha256:81904262bd1011dab941919c2f33068daa16b06dbf71de1a758407b3719dabb8" -> "sha256:a1254ccefbb64f222a2d9ba0f20ec3687e2793f0fa0c0681dc75bbb1fca06e87" [label=""];
  "sha256:090709b0a345242eb50a967d96c9e24a7147ca648c47747f8083c45cba56f060" -> "sha256:a1254ccefbb64f222a2d9ba0f20ec3687e2793f0fa0c0681dc75bbb1fca06e87" [label=""];
  "sha256:a1254ccefbb64f222a2d9ba0f20ec3687e2793f0fa0c0681dc75bbb1fca06e87" -> "sha256:14d425ab57b4faa025d39fda1132909dd6346e0c2aa8e0a5e995237eb43ce453" [label=""];
  "sha256:14d425ab57b4faa025d39fda1132909dd6346e0c2aa8e0a5e995237eb43ce453" -> "sha256:9c408ec3f478a9c1496e00e8eef6f21ebdfce0f14a032b56b3ecb5848ea4b741" [label=""];
  "sha256:090709b0a345242eb50a967d96c9e24a7147ca648c47747f8083c45cba56f060" -> "sha256:9c408ec3f478a9c1496e00e8eef6f21ebdfce0f14a032b56b3ecb5848ea4b741" [label=""];
  "sha256:9c408ec3f478a9c1496e00e8eef6f21ebdfce0f14a032b56b3ecb5848ea4b741" -> "sha256:7f1f9abdf8262aacba437b793180103c7998f2821ee9f89f1818fa57fb67ce83" [label=""];
}

