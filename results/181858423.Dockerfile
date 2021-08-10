[app/sources/181858423.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:c85134a9af87dc87c2602a7efddd1c071a6292790e578c6b5222aeb1fdf4ca1f" [label="/bin/sh -c mkdir /www/" shape="box"];
  "sha256:0998effafb0e09aca214473123d6f90540ef22fb39f3b666f1f5bd993e048ef4" [label="local://context" shape="ellipse"];
  "sha256:913f443a5a3c3200a5b1580c1d267bc36c2dfde0a4b2e6dd9aa202c55e324fc6" [label="copy{src=/static_assets_server.go, dest=/www/}" shape="note"];
  "sha256:26eb14f3372839748b8f44a1cbc21261efea90b1781c40ebb55916f2767a5ccd" [label="copy{src=/dist_channelz, dest=/www/dist_channelz/}" shape="note"];
  "sha256:39c41c23a06f8cb74801ec46b59b3b6bbfc664b4e06cd7fa5038096de8c0bda8" [label="sha256:39c41c23a06f8cb74801ec46b59b3b6bbfc664b4e06cd7fa5038096de8c0bda8" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:c85134a9af87dc87c2602a7efddd1c071a6292790e578c6b5222aeb1fdf4ca1f" [label=""];
  "sha256:c85134a9af87dc87c2602a7efddd1c071a6292790e578c6b5222aeb1fdf4ca1f" -> "sha256:913f443a5a3c3200a5b1580c1d267bc36c2dfde0a4b2e6dd9aa202c55e324fc6" [label=""];
  "sha256:0998effafb0e09aca214473123d6f90540ef22fb39f3b666f1f5bd993e048ef4" -> "sha256:913f443a5a3c3200a5b1580c1d267bc36c2dfde0a4b2e6dd9aa202c55e324fc6" [label=""];
  "sha256:913f443a5a3c3200a5b1580c1d267bc36c2dfde0a4b2e6dd9aa202c55e324fc6" -> "sha256:26eb14f3372839748b8f44a1cbc21261efea90b1781c40ebb55916f2767a5ccd" [label=""];
  "sha256:0998effafb0e09aca214473123d6f90540ef22fb39f3b666f1f5bd993e048ef4" -> "sha256:26eb14f3372839748b8f44a1cbc21261efea90b1781c40ebb55916f2767a5ccd" [label=""];
  "sha256:26eb14f3372839748b8f44a1cbc21261efea90b1781c40ebb55916f2767a5ccd" -> "sha256:39c41c23a06f8cb74801ec46b59b3b6bbfc664b4e06cd7fa5038096de8c0bda8" [label=""];
}

