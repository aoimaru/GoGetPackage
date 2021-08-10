[app/sources/469836413.Dockerfile]
digraph {
  "sha256:52fb7107c3d77aaa76b7652a180839918df77fa02b4f4361d83e530fdaf04ab2" [label="docker-image://docker.io/library/node:12-slim@sha256:f1b769780a594dfab1f54db4a11e58562e2ee7c5727a93c311af922302467913" shape="ellipse"];
  "sha256:835fec9d6f8fcf4ef63c376f245ba353f6c7a315da9698edaa1279ebf3ecbcc0" [label="mkdir{path=/src}" shape="note"];
  "sha256:809514bd4dac8819369a0a45f308da6f05f201f60fbf4036e9bb0d6bc77db742" [label="local://context" shape="ellipse"];
  "sha256:b9d36c5dac4d1c2fd08cb833d13d123d0cacd2b054ba96d50b45b04a40dd8d45" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:a39aea5375ed5c486ecb66f5334b9b949e1ea5c027216b822ca0942295ad3ef0" [label="/bin/sh -c yarn" shape="box"];
  "sha256:39615e7cbc34a1f9ebf80b0bd20c2ad749ae42f40f894b46925792676378ef8d" [label="mkdir{path=/src}" shape="note"];
  "sha256:50a61f829371e5b613b958f6c755f946d2d1523b7e1c34d14fdc049d11a08a11" [label="sha256:50a61f829371e5b613b958f6c755f946d2d1523b7e1c34d14fdc049d11a08a11" shape="plaintext"];
  "sha256:52fb7107c3d77aaa76b7652a180839918df77fa02b4f4361d83e530fdaf04ab2" -> "sha256:835fec9d6f8fcf4ef63c376f245ba353f6c7a315da9698edaa1279ebf3ecbcc0" [label=""];
  "sha256:835fec9d6f8fcf4ef63c376f245ba353f6c7a315da9698edaa1279ebf3ecbcc0" -> "sha256:b9d36c5dac4d1c2fd08cb833d13d123d0cacd2b054ba96d50b45b04a40dd8d45" [label=""];
  "sha256:809514bd4dac8819369a0a45f308da6f05f201f60fbf4036e9bb0d6bc77db742" -> "sha256:b9d36c5dac4d1c2fd08cb833d13d123d0cacd2b054ba96d50b45b04a40dd8d45" [label=""];
  "sha256:b9d36c5dac4d1c2fd08cb833d13d123d0cacd2b054ba96d50b45b04a40dd8d45" -> "sha256:a39aea5375ed5c486ecb66f5334b9b949e1ea5c027216b822ca0942295ad3ef0" [label=""];
  "sha256:a39aea5375ed5c486ecb66f5334b9b949e1ea5c027216b822ca0942295ad3ef0" -> "sha256:39615e7cbc34a1f9ebf80b0bd20c2ad749ae42f40f894b46925792676378ef8d" [label=""];
  "sha256:39615e7cbc34a1f9ebf80b0bd20c2ad749ae42f40f894b46925792676378ef8d" -> "sha256:50a61f829371e5b613b958f6c755f946d2d1523b7e1c34d14fdc049d11a08a11" [label=""];
}

