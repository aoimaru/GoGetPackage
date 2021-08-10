[app/sources/282307086.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" [label="docker-image://docker.io/library/golang:1.9.2" shape="ellipse"];
  "sha256:7b3443ecf63bd78148f954e783fa079b8c6302308366f942e109c55f27ba9d1c" [label="mkdir{path=/go/src/github.com/radu-matei/kube-toolkit}" shape="note"];
  "sha256:5ffb8e8e74d6c154e8459fb4a5c3227f8e7d8ed636b2994fb675d9b04db100b6" [label="local://context" shape="ellipse"];
  "sha256:65e7f9ebdccbc96f1ef990c0353aa846214d935f3cf79f7b2307f0842a33e600" [label="copy{src=/, dest=/go/src/github.com/radu-matei/kube-toolkit/}" shape="note"];
  "sha256:418237e142df6c3da72d17104203d9eba77d39191bbfd7ce5ab619df66a5d9e7" [label="chmod +x prerequisites.sh" shape="box"];
  "sha256:2ad8fcdb02e3caa80ab7252e69827ee8901d04992a348dc368e8fd4ee1c8528b" [label="/bin/sh -c ./prerequisites.sh" shape="box"];
  "sha256:08f971fa33ee8397d0628971ee5c3bf280200bf1e3ed8bd4f41adf636e23d4a8" [label="/bin/sh -c make server-linux" shape="box"];
  "sha256:d41263280e539ffb2bd1a61190b16c09fa6a0f22663deaad2e84ee939f1c4e24" [label="copy{src=/go/src/github.com/radu-matei/kube-toolkit/bin, dest=/app}" shape="note"];
  "sha256:78837da499507c81d2853d262157e872979073ef344f3a42f20c74cde93d2393" [label="mkdir{path=/app}" shape="note"];
  "sha256:d4b9833b54a491ad111817396ba2c9e711e01eb422effd8fb6d126a02b7be61d" [label="sha256:d4b9833b54a491ad111817396ba2c9e711e01eb422effd8fb6d126a02b7be61d" shape="plaintext"];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" -> "sha256:7b3443ecf63bd78148f954e783fa079b8c6302308366f942e109c55f27ba9d1c" [label=""];
  "sha256:7b3443ecf63bd78148f954e783fa079b8c6302308366f942e109c55f27ba9d1c" -> "sha256:65e7f9ebdccbc96f1ef990c0353aa846214d935f3cf79f7b2307f0842a33e600" [label=""];
  "sha256:5ffb8e8e74d6c154e8459fb4a5c3227f8e7d8ed636b2994fb675d9b04db100b6" -> "sha256:65e7f9ebdccbc96f1ef990c0353aa846214d935f3cf79f7b2307f0842a33e600" [label=""];
  "sha256:65e7f9ebdccbc96f1ef990c0353aa846214d935f3cf79f7b2307f0842a33e600" -> "sha256:418237e142df6c3da72d17104203d9eba77d39191bbfd7ce5ab619df66a5d9e7" [label=""];
  "sha256:418237e142df6c3da72d17104203d9eba77d39191bbfd7ce5ab619df66a5d9e7" -> "sha256:2ad8fcdb02e3caa80ab7252e69827ee8901d04992a348dc368e8fd4ee1c8528b" [label=""];
  "sha256:2ad8fcdb02e3caa80ab7252e69827ee8901d04992a348dc368e8fd4ee1c8528b" -> "sha256:08f971fa33ee8397d0628971ee5c3bf280200bf1e3ed8bd4f41adf636e23d4a8" [label=""];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d41263280e539ffb2bd1a61190b16c09fa6a0f22663deaad2e84ee939f1c4e24" [label=""];
  "sha256:08f971fa33ee8397d0628971ee5c3bf280200bf1e3ed8bd4f41adf636e23d4a8" -> "sha256:d41263280e539ffb2bd1a61190b16c09fa6a0f22663deaad2e84ee939f1c4e24" [label=""];
  "sha256:d41263280e539ffb2bd1a61190b16c09fa6a0f22663deaad2e84ee939f1c4e24" -> "sha256:78837da499507c81d2853d262157e872979073ef344f3a42f20c74cde93d2393" [label=""];
  "sha256:78837da499507c81d2853d262157e872979073ef344f3a42f20c74cde93d2393" -> "sha256:d4b9833b54a491ad111817396ba2c9e711e01eb422effd8fb6d126a02b7be61d" [label=""];
}

