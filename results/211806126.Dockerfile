[app/sources/211806126.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:7148f4866d134ba098af64cada1bcef3d15708a3ee606f4b83d97a539b18cf04" [label="local://context" shape="ellipse"];
  "sha256:64059e3ea7c8bd8c31043cbadde5d2cab54cfc820996f8ed66287de9c9f7d6ce" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:157ef68a50f3468fe038734260ef95f51e7bcb4dd153d9a6f6244e1816ba7b3d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:1a7968b2527712c2a1df6d1d2d47948be188816ce9ae0bb6030be8b43b2e87ba" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:8874110613b26616d0324a3bbeb8f9bb37dfcfef52f9203d0bf77e47a977975b" [label="sha256:8874110613b26616d0324a3bbeb8f9bb37dfcfef52f9203d0bf77e47a977975b" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:64059e3ea7c8bd8c31043cbadde5d2cab54cfc820996f8ed66287de9c9f7d6ce" [label=""];
  "sha256:7148f4866d134ba098af64cada1bcef3d15708a3ee606f4b83d97a539b18cf04" -> "sha256:64059e3ea7c8bd8c31043cbadde5d2cab54cfc820996f8ed66287de9c9f7d6ce" [label=""];
  "sha256:64059e3ea7c8bd8c31043cbadde5d2cab54cfc820996f8ed66287de9c9f7d6ce" -> "sha256:157ef68a50f3468fe038734260ef95f51e7bcb4dd153d9a6f6244e1816ba7b3d" [label=""];
  "sha256:157ef68a50f3468fe038734260ef95f51e7bcb4dd153d9a6f6244e1816ba7b3d" -> "sha256:1a7968b2527712c2a1df6d1d2d47948be188816ce9ae0bb6030be8b43b2e87ba" [label=""];
  "sha256:1a7968b2527712c2a1df6d1d2d47948be188816ce9ae0bb6030be8b43b2e87ba" -> "sha256:8874110613b26616d0324a3bbeb8f9bb37dfcfef52f9203d0bf77e47a977975b" [label=""];
}

