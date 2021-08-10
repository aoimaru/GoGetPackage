[app/sources/336024012.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:12da27ce8b3f7d0c6050673c1415f4a1a7ddc7949607abc00af84512dfd0df70" [label="local://context" shape="ellipse"];
  "sha256:7d4e52305f6f4a9b77c7e691cff4bf0e6a2d23f4a6d94efbaa4e4332ae7abc23" [label="copy{src=/, dest=/go/src/littlefs}" shape="note"];
  "sha256:f352159136633052f182c2ee5d8500415ff0eac1f44f206bcaa8b2d396a46cd7" [label="mkdir{path=/go/src/littlefs}" shape="note"];
  "sha256:02644c44b0d10f22ad84879832dd75953e9226b795f92f01a1fd9a41de8494c7" [label="/bin/sh -c go install littlefs" shape="box"];
  "sha256:4fa5c9db894585fd2cf1ee2289291734611d8eb2919f5d40da67de2ec1b08157" [label="sha256:4fa5c9db894585fd2cf1ee2289291734611d8eb2919f5d40da67de2ec1b08157" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:7d4e52305f6f4a9b77c7e691cff4bf0e6a2d23f4a6d94efbaa4e4332ae7abc23" [label=""];
  "sha256:12da27ce8b3f7d0c6050673c1415f4a1a7ddc7949607abc00af84512dfd0df70" -> "sha256:7d4e52305f6f4a9b77c7e691cff4bf0e6a2d23f4a6d94efbaa4e4332ae7abc23" [label=""];
  "sha256:7d4e52305f6f4a9b77c7e691cff4bf0e6a2d23f4a6d94efbaa4e4332ae7abc23" -> "sha256:f352159136633052f182c2ee5d8500415ff0eac1f44f206bcaa8b2d396a46cd7" [label=""];
  "sha256:f352159136633052f182c2ee5d8500415ff0eac1f44f206bcaa8b2d396a46cd7" -> "sha256:02644c44b0d10f22ad84879832dd75953e9226b795f92f01a1fd9a41de8494c7" [label=""];
  "sha256:02644c44b0d10f22ad84879832dd75953e9226b795f92f01a1fd9a41de8494c7" -> "sha256:4fa5c9db894585fd2cf1ee2289291734611d8eb2919f5d40da67de2ec1b08157" [label=""];
}

