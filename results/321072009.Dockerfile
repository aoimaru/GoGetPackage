[app/sources/321072009.Dockerfile]
digraph {
  "sha256:c172fe7f522edafee242d49715bf1487d5dbf43b799b8b736868a6cc4050ce99" [label="docker-image://docker.io/azureiotedge/azureiotedge-hub-base:1.0.0-preview013-linux-arm32v7@sha256:102eaaa6bffaf3a74b1471671c6dc85854af7541ad14a2db8cf7ef20738017a3" shape="ellipse"];
  "sha256:e8e2af890685a7adf269a25505f4ab9266548eae7602dcf1298dcfba85f2d538" [label="mkdir{path=/app}" shape="note"];
  "sha256:bf966da51b7c11b641574735fd9af7cec631dc1f6bc29b064aedf5311ee56a30" [label="local://context" shape="ellipse"];
  "sha256:9e20d91e83b9c8b2430367a1bed69b6535485fc33e59f1f573856d1b636b5093" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:133b74eec3747653914653d8e5c9abe981e8cacc05945de9e1fb9e765823384e" [label="sha256:133b74eec3747653914653d8e5c9abe981e8cacc05945de9e1fb9e765823384e" shape="plaintext"];
  "sha256:c172fe7f522edafee242d49715bf1487d5dbf43b799b8b736868a6cc4050ce99" -> "sha256:e8e2af890685a7adf269a25505f4ab9266548eae7602dcf1298dcfba85f2d538" [label=""];
  "sha256:e8e2af890685a7adf269a25505f4ab9266548eae7602dcf1298dcfba85f2d538" -> "sha256:9e20d91e83b9c8b2430367a1bed69b6535485fc33e59f1f573856d1b636b5093" [label=""];
  "sha256:bf966da51b7c11b641574735fd9af7cec631dc1f6bc29b064aedf5311ee56a30" -> "sha256:9e20d91e83b9c8b2430367a1bed69b6535485fc33e59f1f573856d1b636b5093" [label=""];
  "sha256:9e20d91e83b9c8b2430367a1bed69b6535485fc33e59f1f573856d1b636b5093" -> "sha256:133b74eec3747653914653d8e5c9abe981e8cacc05945de9e1fb9e765823384e" [label=""];
}

