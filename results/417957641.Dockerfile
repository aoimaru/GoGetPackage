[app/sources/417957641.Dockerfile]
digraph {
  "sha256:05a13cff7ae281267bc4f04152a427d8913115cbb7925450dfa8e0f7bf0ba199" [label="docker-image://docker.io/gliderlabs/alpine:3.8" shape="ellipse"];
  "sha256:ffe27f6671bec511d877f7d04491578c6298219c52275ed5d98ea81205baf954" [label="docker-image://docker.io/library/golang:1.11.2" shape="ellipse"];
  "sha256:ac02142f49e8c3342cfcfdee1bb084b2531f2f29c940fd10cb11d2eb596e402f" [label="local://context" shape="ellipse"];
  "sha256:0e6a39c0e1ddbaf9c3f04b2e6c5fbce690004a688e7691f110d4f3843c3409a9" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:b3bed5fccd7576d5a225ec1512f6c70716703bab7b5f3eefe53c22e5f0e92b33" [label="mkdir{path=/src}" shape="note"];
  "sha256:66b2b3e601744a51e3935d59999944e2074d278fdb0421d1fb8f33d5f8f011a4" [label="copy{src=/testdata/.kube/config, dest=/root/.kube/config}" shape="note"];
  "sha256:7dcd9e5779a548eda73e3f98de755c954e565d98450303d8a48957610d000402" [label="/bin/sh -c make clean   && make test   && make" shape="box"];
  "sha256:5ce61a725c7d1e5fb3afc95c0149e7a7512cb4fb2868f8345b0415af206dab3c" [label="copy{src=/src/kubernetes-deployment-restart-controller, dest=/usr/bin/kubernetes-deployment-restart-controller}" shape="note"];
  "sha256:862fd477654ed83fec6a9d56e811903238581ee7f9d372992c1505a1e988d3d3" [label="sha256:862fd477654ed83fec6a9d56e811903238581ee7f9d372992c1505a1e988d3d3" shape="plaintext"];
  "sha256:ffe27f6671bec511d877f7d04491578c6298219c52275ed5d98ea81205baf954" -> "sha256:0e6a39c0e1ddbaf9c3f04b2e6c5fbce690004a688e7691f110d4f3843c3409a9" [label=""];
  "sha256:ac02142f49e8c3342cfcfdee1bb084b2531f2f29c940fd10cb11d2eb596e402f" -> "sha256:0e6a39c0e1ddbaf9c3f04b2e6c5fbce690004a688e7691f110d4f3843c3409a9" [label=""];
  "sha256:0e6a39c0e1ddbaf9c3f04b2e6c5fbce690004a688e7691f110d4f3843c3409a9" -> "sha256:b3bed5fccd7576d5a225ec1512f6c70716703bab7b5f3eefe53c22e5f0e92b33" [label=""];
  "sha256:b3bed5fccd7576d5a225ec1512f6c70716703bab7b5f3eefe53c22e5f0e92b33" -> "sha256:66b2b3e601744a51e3935d59999944e2074d278fdb0421d1fb8f33d5f8f011a4" [label=""];
  "sha256:ac02142f49e8c3342cfcfdee1bb084b2531f2f29c940fd10cb11d2eb596e402f" -> "sha256:66b2b3e601744a51e3935d59999944e2074d278fdb0421d1fb8f33d5f8f011a4" [label=""];
  "sha256:66b2b3e601744a51e3935d59999944e2074d278fdb0421d1fb8f33d5f8f011a4" -> "sha256:7dcd9e5779a548eda73e3f98de755c954e565d98450303d8a48957610d000402" [label=""];
  "sha256:05a13cff7ae281267bc4f04152a427d8913115cbb7925450dfa8e0f7bf0ba199" -> "sha256:5ce61a725c7d1e5fb3afc95c0149e7a7512cb4fb2868f8345b0415af206dab3c" [label=""];
  "sha256:7dcd9e5779a548eda73e3f98de755c954e565d98450303d8a48957610d000402" -> "sha256:5ce61a725c7d1e5fb3afc95c0149e7a7512cb4fb2868f8345b0415af206dab3c" [label=""];
  "sha256:5ce61a725c7d1e5fb3afc95c0149e7a7512cb4fb2868f8345b0415af206dab3c" -> "sha256:862fd477654ed83fec6a9d56e811903238581ee7f9d372992c1505a1e988d3d3" [label=""];
}

