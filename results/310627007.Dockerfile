[app/sources/310627007.Dockerfile]
digraph {
  "sha256:464d02fe28e5c55bcb9694f4d7bbc1c5c35771ee2617cf6939c25a7e535181e9" [label="docker-image://docker.io/library/node:9.2.0" shape="ellipse"];
  "sha256:f5090e95d5932b780d5c57cc1eee08c3ea219d0ad26844ce7c6e399b278235f0" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:593b8738e4972db84646c2e0f4a85d763f5697ec2f17f5afd95177743175ef6a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:289108721d7161de4f23329dcbc63bef10478a65ac68a554ae280eaf7e359635" [label="local://context" shape="ellipse"];
  "sha256:7f9c4e5e2b9a09ad9a643d5dac5275ff534af99b009d1610a2d50714199d54c7" [label="copy{src=/package.json, dest=/usr/src/app}" shape="note"];
  "sha256:2005de722547cefd12ca07b12e220a87275bf2b0f8358a1b293cc4084e433604" [label="/bin/sh -c npm install" shape="box"];
  "sha256:8e4dcbf07a30adc930217c97cbe7d9a8c9dff446a801f3ac59b7cd1ccb18ee89" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:28afe289dbfd7c9b12388c9ef06fdc69cd6d1b61459c6acb97854e027870cbfa" [label="sha256:28afe289dbfd7c9b12388c9ef06fdc69cd6d1b61459c6acb97854e027870cbfa" shape="plaintext"];
  "sha256:464d02fe28e5c55bcb9694f4d7bbc1c5c35771ee2617cf6939c25a7e535181e9" -> "sha256:f5090e95d5932b780d5c57cc1eee08c3ea219d0ad26844ce7c6e399b278235f0" [label=""];
  "sha256:f5090e95d5932b780d5c57cc1eee08c3ea219d0ad26844ce7c6e399b278235f0" -> "sha256:593b8738e4972db84646c2e0f4a85d763f5697ec2f17f5afd95177743175ef6a" [label=""];
  "sha256:593b8738e4972db84646c2e0f4a85d763f5697ec2f17f5afd95177743175ef6a" -> "sha256:7f9c4e5e2b9a09ad9a643d5dac5275ff534af99b009d1610a2d50714199d54c7" [label=""];
  "sha256:289108721d7161de4f23329dcbc63bef10478a65ac68a554ae280eaf7e359635" -> "sha256:7f9c4e5e2b9a09ad9a643d5dac5275ff534af99b009d1610a2d50714199d54c7" [label=""];
  "sha256:7f9c4e5e2b9a09ad9a643d5dac5275ff534af99b009d1610a2d50714199d54c7" -> "sha256:2005de722547cefd12ca07b12e220a87275bf2b0f8358a1b293cc4084e433604" [label=""];
  "sha256:2005de722547cefd12ca07b12e220a87275bf2b0f8358a1b293cc4084e433604" -> "sha256:8e4dcbf07a30adc930217c97cbe7d9a8c9dff446a801f3ac59b7cd1ccb18ee89" [label=""];
  "sha256:289108721d7161de4f23329dcbc63bef10478a65ac68a554ae280eaf7e359635" -> "sha256:8e4dcbf07a30adc930217c97cbe7d9a8c9dff446a801f3ac59b7cd1ccb18ee89" [label=""];
  "sha256:8e4dcbf07a30adc930217c97cbe7d9a8c9dff446a801f3ac59b7cd1ccb18ee89" -> "sha256:28afe289dbfd7c9b12388c9ef06fdc69cd6d1b61459c6acb97854e027870cbfa" [label=""];
}

