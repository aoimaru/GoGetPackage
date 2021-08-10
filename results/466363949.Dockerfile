[app/sources/466363949.Dockerfile]
digraph {
  "sha256:f9ff27ecf03434de375498327ff54c84b569c5cc709ce2c73f074e56190918ea" [label="docker-image://mcr.microsoft.com/aiforearth/base-py:1.4@sha256:9e87be278d66ec937e7f4514e4c5396fb5c2f2ebd7b1a945beab4cda0432d665" shape="ellipse"];
  "sha256:27661cb7594ea908ceedb93ea83c6badb9bbb14f375e87ad13c7723259776183" [label="/bin/sh -c wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb &&     dpkg -i packages-microsoft-prod.deb &&     apt-get update &&     apt-get install blobfuse -y" shape="box"];
  "sha256:63dff86cc14b91335fbbdc3cdbf68cc7a81e13294adb292036759b35e2724a3b" [label="local://context" shape="ellipse"];
  "sha256:c790bb7e0d49eecae7e090f3c4657df6498778cebd8f56029c540c4d7e404d0d" [label="copy{src=/common/blob_mounting/blob_mounter.py, dest=/app/fuse/blob_mounter.py}" shape="note"];
  "sha256:a3aca07a61e7274812f04cd1630b550d974355677bff8d36b75e5b8705738c49" [label="/bin/sh -c chmod +x /app/fuse/blob_mounter.py" shape="box"];
  "sha256:b838ecd7f5557cd4c5b3f2b9b95857e48bb9d4ad6bec784030a5e43a2342d632" [label="sha256:b838ecd7f5557cd4c5b3f2b9b95857e48bb9d4ad6bec784030a5e43a2342d632" shape="plaintext"];
  "sha256:f9ff27ecf03434de375498327ff54c84b569c5cc709ce2c73f074e56190918ea" -> "sha256:27661cb7594ea908ceedb93ea83c6badb9bbb14f375e87ad13c7723259776183" [label=""];
  "sha256:27661cb7594ea908ceedb93ea83c6badb9bbb14f375e87ad13c7723259776183" -> "sha256:c790bb7e0d49eecae7e090f3c4657df6498778cebd8f56029c540c4d7e404d0d" [label=""];
  "sha256:63dff86cc14b91335fbbdc3cdbf68cc7a81e13294adb292036759b35e2724a3b" -> "sha256:c790bb7e0d49eecae7e090f3c4657df6498778cebd8f56029c540c4d7e404d0d" [label=""];
  "sha256:c790bb7e0d49eecae7e090f3c4657df6498778cebd8f56029c540c4d7e404d0d" -> "sha256:a3aca07a61e7274812f04cd1630b550d974355677bff8d36b75e5b8705738c49" [label=""];
  "sha256:a3aca07a61e7274812f04cd1630b550d974355677bff8d36b75e5b8705738c49" -> "sha256:b838ecd7f5557cd4c5b3f2b9b95857e48bb9d4ad6bec784030a5e43a2342d632" [label=""];
}

