[app/sources/262082751.Dockerfile]
digraph {
  "sha256:8bfa3d2e9589b53b0c5bc02b051c2b5791aa2d55a8347df69b4990a62d5ed206" [label="docker-image://docker.io/library/node:8.9.4" shape="ellipse"];
  "sha256:b352b6b4ecf8c807302aceb2ee1410de85678adf5dc7c49f43cafdddcd3cdcd6" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:160b19285c09426479651af9908f4a53be7cf71e323d6b994fcf334115fb2558" [label="local://context" shape="ellipse"];
  "sha256:6b74af8ee8873e069d2425296e56ba9c4e63e85bcdc10a1dfad984ddd74fb103" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:9ea075e10a15a8ca83677fc042cc2bcc35fc1d28a0886fffb619a06b87e9dd6d" [label="/bin/sh -c docker -d &" shape="box"];
  "sha256:fda24e74bfdd86a8d1e40f085a6884f19da986c04e7a4b600ad333b913c1791b" [label="/bin/sh -c npm config set strict-ssl false" shape="box"];
  "sha256:be6714845b401a8c4b4036fdfc3e1862bb5604c658181f925580ca4b2ce77b14" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0920448bc33ed3028abe2d31326fcc4186dca8455fea5454f739664cba69c62e" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:a4064bf20a59d3a708e9aea3bd823edcd115cb3ca9bd28d688586a8002be3ac6" [label="/bin/sh -c npm cache verify" shape="box"];
  "sha256:8d009dc1b544896b8459ab8ae9b0a91e8f4d7576ef00477bea1807c74f1e8308" [label="/bin/sh -c npm install -g -D ember-cli" shape="box"];
  "sha256:a2971c8dfdbffdb738fcdcd9db45384f4cc1983f174c446417ff8b287410da13" [label="/bin/sh -c npm config set registry=https://registry.npmjs.com/" shape="box"];
  "sha256:3c27daea40374a07037cdf952bf665eef20b78a7eab4d12d71b1e094b133b3d3" [label="/bin/sh -c npm install -D" shape="box"];
  "sha256:01d260302abcd642a9eafa9da36bd0b899bc942b514a4d455334c3a60a130baa" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:ef233950fdf232f098974bf6b01a6b16383c3ec4543dde00917158d229403831" [label="sha256:ef233950fdf232f098974bf6b01a6b16383c3ec4543dde00917158d229403831" shape="plaintext"];
  "sha256:8bfa3d2e9589b53b0c5bc02b051c2b5791aa2d55a8347df69b4990a62d5ed206" -> "sha256:b352b6b4ecf8c807302aceb2ee1410de85678adf5dc7c49f43cafdddcd3cdcd6" [label=""];
  "sha256:b352b6b4ecf8c807302aceb2ee1410de85678adf5dc7c49f43cafdddcd3cdcd6" -> "sha256:6b74af8ee8873e069d2425296e56ba9c4e63e85bcdc10a1dfad984ddd74fb103" [label=""];
  "sha256:160b19285c09426479651af9908f4a53be7cf71e323d6b994fcf334115fb2558" -> "sha256:6b74af8ee8873e069d2425296e56ba9c4e63e85bcdc10a1dfad984ddd74fb103" [label=""];
  "sha256:6b74af8ee8873e069d2425296e56ba9c4e63e85bcdc10a1dfad984ddd74fb103" -> "sha256:9ea075e10a15a8ca83677fc042cc2bcc35fc1d28a0886fffb619a06b87e9dd6d" [label=""];
  "sha256:9ea075e10a15a8ca83677fc042cc2bcc35fc1d28a0886fffb619a06b87e9dd6d" -> "sha256:fda24e74bfdd86a8d1e40f085a6884f19da986c04e7a4b600ad333b913c1791b" [label=""];
  "sha256:fda24e74bfdd86a8d1e40f085a6884f19da986c04e7a4b600ad333b913c1791b" -> "sha256:be6714845b401a8c4b4036fdfc3e1862bb5604c658181f925580ca4b2ce77b14" [label=""];
  "sha256:be6714845b401a8c4b4036fdfc3e1862bb5604c658181f925580ca4b2ce77b14" -> "sha256:0920448bc33ed3028abe2d31326fcc4186dca8455fea5454f739664cba69c62e" [label=""];
  "sha256:0920448bc33ed3028abe2d31326fcc4186dca8455fea5454f739664cba69c62e" -> "sha256:a4064bf20a59d3a708e9aea3bd823edcd115cb3ca9bd28d688586a8002be3ac6" [label=""];
  "sha256:a4064bf20a59d3a708e9aea3bd823edcd115cb3ca9bd28d688586a8002be3ac6" -> "sha256:8d009dc1b544896b8459ab8ae9b0a91e8f4d7576ef00477bea1807c74f1e8308" [label=""];
  "sha256:8d009dc1b544896b8459ab8ae9b0a91e8f4d7576ef00477bea1807c74f1e8308" -> "sha256:a2971c8dfdbffdb738fcdcd9db45384f4cc1983f174c446417ff8b287410da13" [label=""];
  "sha256:a2971c8dfdbffdb738fcdcd9db45384f4cc1983f174c446417ff8b287410da13" -> "sha256:3c27daea40374a07037cdf952bf665eef20b78a7eab4d12d71b1e094b133b3d3" [label=""];
  "sha256:3c27daea40374a07037cdf952bf665eef20b78a7eab4d12d71b1e094b133b3d3" -> "sha256:01d260302abcd642a9eafa9da36bd0b899bc942b514a4d455334c3a60a130baa" [label=""];
  "sha256:160b19285c09426479651af9908f4a53be7cf71e323d6b994fcf334115fb2558" -> "sha256:01d260302abcd642a9eafa9da36bd0b899bc942b514a4d455334c3a60a130baa" [label=""];
  "sha256:01d260302abcd642a9eafa9da36bd0b899bc942b514a4d455334c3a60a130baa" -> "sha256:ef233950fdf232f098974bf6b01a6b16383c3ec4543dde00917158d229403831" [label=""];
}

