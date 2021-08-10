[app/sources/247918283.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:56d5aa717e6c6840054f2a30aab8632d4b1be0f9ecb887240deee1e9741fcc94" [label="local://context" shape="ellipse"];
  "sha256:9f5437feef4ebea4871aec853578db8eff23be0ae490bd45fbc89f5e23986808" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:7159cc941b2c0964eb86855ad49ae148174625fe0c40fb026d2612a8f598f650" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:ef222650c5c3ef8887ba0167ff46aa50a4b176af091f58bbb84da4c170bd795b" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:5f4054c35c19c0233b2ea51709102007894b1733bb3904fa86d935d98d079431" [label="sha256:5f4054c35c19c0233b2ea51709102007894b1733bb3904fa86d935d98d079431" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:9f5437feef4ebea4871aec853578db8eff23be0ae490bd45fbc89f5e23986808" [label=""];
  "sha256:56d5aa717e6c6840054f2a30aab8632d4b1be0f9ecb887240deee1e9741fcc94" -> "sha256:9f5437feef4ebea4871aec853578db8eff23be0ae490bd45fbc89f5e23986808" [label=""];
  "sha256:9f5437feef4ebea4871aec853578db8eff23be0ae490bd45fbc89f5e23986808" -> "sha256:7159cc941b2c0964eb86855ad49ae148174625fe0c40fb026d2612a8f598f650" [label=""];
  "sha256:7159cc941b2c0964eb86855ad49ae148174625fe0c40fb026d2612a8f598f650" -> "sha256:ef222650c5c3ef8887ba0167ff46aa50a4b176af091f58bbb84da4c170bd795b" [label=""];
  "sha256:ef222650c5c3ef8887ba0167ff46aa50a4b176af091f58bbb84da4c170bd795b" -> "sha256:5f4054c35c19c0233b2ea51709102007894b1733bb3904fa86d935d98d079431" [label=""];
}

