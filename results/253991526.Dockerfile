[app/sources/253991526.Dockerfile]
digraph {
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" [label="docker-image://registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest" shape="ellipse"];
  "sha256:73a34a7d5fe58be8e35adb16f6ed752676fc5f32a5e5764f7e46e09486c3ddf1" [label="local://context" shape="ellipse"];
  "sha256:cb1ac7572edceff94f7d8204ec08f62b5f2048c4f09bd17dc93e657856079298" [label="copy{src=/target/database-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:a620a98f7987aaa495648d5c6b3cdc01dafcfe718102060951b8e8303ec13d77" [label="sha256:a620a98f7987aaa495648d5c6b3cdc01dafcfe718102060951b8e8303ec13d77" shape="plaintext"];
  "sha256:af900c6faeb6077f9cddbfa40761b950b94f2a5afa190ba5823cb17144a208a7" -> "sha256:cb1ac7572edceff94f7d8204ec08f62b5f2048c4f09bd17dc93e657856079298" [label=""];
  "sha256:73a34a7d5fe58be8e35adb16f6ed752676fc5f32a5e5764f7e46e09486c3ddf1" -> "sha256:cb1ac7572edceff94f7d8204ec08f62b5f2048c4f09bd17dc93e657856079298" [label=""];
  "sha256:cb1ac7572edceff94f7d8204ec08f62b5f2048c4f09bd17dc93e657856079298" -> "sha256:a620a98f7987aaa495648d5c6b3cdc01dafcfe718102060951b8e8303ec13d77" [label=""];
}

