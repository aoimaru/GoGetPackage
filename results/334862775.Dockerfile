[app/sources/334862775.Dockerfile]
digraph {
  "sha256:327b91b3d659eec44a3aa4d74202e35851cb421d9d4768f257081b111fccd417" [label="docker-image://gcr.io/google-appengine/debian9@sha256:1d6a9a6d106bd795098f60f4abb7083626354fa6735e81743c7f8cfca11259f0" shape="ellipse"];
  "sha256:a4c6ae52abb5d19e5e12d841ac6a589085c5b18436107fe187337f67870cce9b" [label="mkdir{path=/foo}" shape="note"];
  "sha256:c4dfb4cc26e52804e035cb30da7ead4fd08e03cedb9cf1e144bd6eba482d3080" [label="/bin/sh -c apt-get update && apt-get install -y make" shape="box"];
  "sha256:8d0f68b10d1950706f642a393117cb3a89c660bac1dcc9d3a97b21030f0d8f8d" [label="local://context" shape="ellipse"];
  "sha256:be366cc1f418d7558f61bb9ddb87e6aa8a18b55a3ac0ebdfdf1c8b1726a90ea1" [label="copy{src=/context/bar, dest=/context}" shape="note"];
  "sha256:0020cc24f1be0e7531770292daa87fbd2fa40f5053487c1c813f3302f0731405" [label="/bin/sh -c echo \"hey\" > foo" shape="box"];
  "sha256:8c97cd1166b92f32924e78b9daa0b44a3fc9556fea78a80c10c406bc67ffe163" [label="sha256:8c97cd1166b92f32924e78b9daa0b44a3fc9556fea78a80c10c406bc67ffe163" shape="plaintext"];
  "sha256:327b91b3d659eec44a3aa4d74202e35851cb421d9d4768f257081b111fccd417" -> "sha256:a4c6ae52abb5d19e5e12d841ac6a589085c5b18436107fe187337f67870cce9b" [label=""];
  "sha256:a4c6ae52abb5d19e5e12d841ac6a589085c5b18436107fe187337f67870cce9b" -> "sha256:c4dfb4cc26e52804e035cb30da7ead4fd08e03cedb9cf1e144bd6eba482d3080" [label=""];
  "sha256:c4dfb4cc26e52804e035cb30da7ead4fd08e03cedb9cf1e144bd6eba482d3080" -> "sha256:be366cc1f418d7558f61bb9ddb87e6aa8a18b55a3ac0ebdfdf1c8b1726a90ea1" [label=""];
  "sha256:8d0f68b10d1950706f642a393117cb3a89c660bac1dcc9d3a97b21030f0d8f8d" -> "sha256:be366cc1f418d7558f61bb9ddb87e6aa8a18b55a3ac0ebdfdf1c8b1726a90ea1" [label=""];
  "sha256:be366cc1f418d7558f61bb9ddb87e6aa8a18b55a3ac0ebdfdf1c8b1726a90ea1" -> "sha256:0020cc24f1be0e7531770292daa87fbd2fa40f5053487c1c813f3302f0731405" [label=""];
  "sha256:0020cc24f1be0e7531770292daa87fbd2fa40f5053487c1c813f3302f0731405" -> "sha256:8c97cd1166b92f32924e78b9daa0b44a3fc9556fea78a80c10c406bc67ffe163" [label=""];
}

