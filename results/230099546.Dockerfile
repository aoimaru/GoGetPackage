[app/sources/230099546.Dockerfile]
digraph {
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" [label="docker-image://docker.io/mhart/alpine-node:8" shape="ellipse"];
  "sha256:3f0a1e63178fbc1e208da65f4d9f438ed5cb26de1a99a34eddaf74e1e1ff379a" [label="/bin/sh -c mkdir -p /app/" shape="box"];
  "sha256:45acf4aa5a16446047cca4a46229c5f1eae1764670e12ecfe9d088847138d8c3" [label="mkdir{path=/app}" shape="note"];
  "sha256:0c87463dac62bdc58ea1a4e4791b094b8a292902ada002d0a1e9df0f085dd718" [label="/bin/sh -c apk add --no-cache make gcc g++ python" shape="box"];
  "sha256:f5aa79a4e456eda44806d2201ce93dcec7ccb0880b7f2f464ec2e86864f7723a" [label="local://context" shape="ellipse"];
  "sha256:9fd96071ddfc7d5ddd0cf93ddddff0054330e9e3fd374f18ba0150ea4e7829c9" [label="copy{src=/package.json, dest=/app/},copy{src=/yarn.lock, dest=/app/}" shape="note"];
  "sha256:9146d21f5a81df378398d4a56237e935b1bc53694f75b290acaf2f7f5653b72c" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:060cd632afa9c754223a8cae3a7f3ae662a458ca0eb31a9d0604175c9d8afa70" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:58952badf5ddc9e585d21e7286b11df7a18c0a7e0c230459282f7e92aac332d9" [label="/bin/sh -c yarn run compile" shape="box"];
  "sha256:3a7b6b28d97c73725e6cbb03f84b80916639a81fe2fb63e818d275ff0dab6916" [label="sha256:3a7b6b28d97c73725e6cbb03f84b80916639a81fe2fb63e818d275ff0dab6916" shape="plaintext"];
  "sha256:365cfd895c94cefb8e2d668ebf3267fec81feca7f5687a95c9f4fb14f850c168" -> "sha256:3f0a1e63178fbc1e208da65f4d9f438ed5cb26de1a99a34eddaf74e1e1ff379a" [label=""];
  "sha256:3f0a1e63178fbc1e208da65f4d9f438ed5cb26de1a99a34eddaf74e1e1ff379a" -> "sha256:45acf4aa5a16446047cca4a46229c5f1eae1764670e12ecfe9d088847138d8c3" [label=""];
  "sha256:45acf4aa5a16446047cca4a46229c5f1eae1764670e12ecfe9d088847138d8c3" -> "sha256:0c87463dac62bdc58ea1a4e4791b094b8a292902ada002d0a1e9df0f085dd718" [label=""];
  "sha256:0c87463dac62bdc58ea1a4e4791b094b8a292902ada002d0a1e9df0f085dd718" -> "sha256:9fd96071ddfc7d5ddd0cf93ddddff0054330e9e3fd374f18ba0150ea4e7829c9" [label=""];
  "sha256:f5aa79a4e456eda44806d2201ce93dcec7ccb0880b7f2f464ec2e86864f7723a" -> "sha256:9fd96071ddfc7d5ddd0cf93ddddff0054330e9e3fd374f18ba0150ea4e7829c9" [label=""];
  "sha256:9fd96071ddfc7d5ddd0cf93ddddff0054330e9e3fd374f18ba0150ea4e7829c9" -> "sha256:9146d21f5a81df378398d4a56237e935b1bc53694f75b290acaf2f7f5653b72c" [label=""];
  "sha256:9146d21f5a81df378398d4a56237e935b1bc53694f75b290acaf2f7f5653b72c" -> "sha256:060cd632afa9c754223a8cae3a7f3ae662a458ca0eb31a9d0604175c9d8afa70" [label=""];
  "sha256:f5aa79a4e456eda44806d2201ce93dcec7ccb0880b7f2f464ec2e86864f7723a" -> "sha256:060cd632afa9c754223a8cae3a7f3ae662a458ca0eb31a9d0604175c9d8afa70" [label=""];
  "sha256:060cd632afa9c754223a8cae3a7f3ae662a458ca0eb31a9d0604175c9d8afa70" -> "sha256:58952badf5ddc9e585d21e7286b11df7a18c0a7e0c230459282f7e92aac332d9" [label=""];
  "sha256:58952badf5ddc9e585d21e7286b11df7a18c0a7e0c230459282f7e92aac332d9" -> "sha256:3a7b6b28d97c73725e6cbb03f84b80916639a81fe2fb63e818d275ff0dab6916" [label=""];
}

