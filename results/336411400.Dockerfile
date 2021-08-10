[app/sources/336411400.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:f8ac7a87f74e0c4c3c001f665e350e9ee645671ad3e8b10231e15cea0c3f8abc" [label="local://context" shape="ellipse"];
  "sha256:b625af9876b047ea54a373ae8ac212dfe7ad5d1915de86f18b0e4265ec513e7e" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8da68485bb4f50d29cb97eb1f5d229a77c5bb8ed21ad2ea9b575d3dbab456ec7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:63b48f5cf6ed55555edd593c1678c60cf70fd8e4398f19371ce20865b053d889" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:2cf747f5840d14e8b77a1d1a118e589833162db6aa11fd08f5a0786dc549be05" [label="sha256:2cf747f5840d14e8b77a1d1a118e589833162db6aa11fd08f5a0786dc549be05" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:b625af9876b047ea54a373ae8ac212dfe7ad5d1915de86f18b0e4265ec513e7e" [label=""];
  "sha256:f8ac7a87f74e0c4c3c001f665e350e9ee645671ad3e8b10231e15cea0c3f8abc" -> "sha256:b625af9876b047ea54a373ae8ac212dfe7ad5d1915de86f18b0e4265ec513e7e" [label=""];
  "sha256:b625af9876b047ea54a373ae8ac212dfe7ad5d1915de86f18b0e4265ec513e7e" -> "sha256:8da68485bb4f50d29cb97eb1f5d229a77c5bb8ed21ad2ea9b575d3dbab456ec7" [label=""];
  "sha256:8da68485bb4f50d29cb97eb1f5d229a77c5bb8ed21ad2ea9b575d3dbab456ec7" -> "sha256:63b48f5cf6ed55555edd593c1678c60cf70fd8e4398f19371ce20865b053d889" [label=""];
  "sha256:63b48f5cf6ed55555edd593c1678c60cf70fd8e4398f19371ce20865b053d889" -> "sha256:2cf747f5840d14e8b77a1d1a118e589833162db6aa11fd08f5a0786dc549be05" [label=""];
}

