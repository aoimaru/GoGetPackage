[app/sources/201224817.Dockerfile]
digraph {
  "sha256:7824a85cd5827b055abe2c38fdf6dc9acbfa87d8a6bbf2127d0282315e90652e" [label="docker-image://docker.io/pypi/matplotlib:latest" shape="ellipse"];
  "sha256:ff64252710e9809c78c05acc4145a423a511b5e4a3e8a803803bd57266576553" [label="local://context" shape="ellipse"];
  "sha256:0380f3fc5b799831a585e3240b6561260c647de3b73b61aab670f73b04014c7a" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:bacf29ae8534ac9ea991cd562cf35a51d809c37bc976d5613f6e02f93ae0219c" [label="/bin/sh -c sed -i.bak '/matplotlib/d' requirements.txt && \tpip3 install --upgrade --no-cache-dir pip && \tpip3 install --no-cache-dir -r requirements.txt &&    \t rm -rf ~/.cache/pip" shape="box"];
  "sha256:db8e3ab43f5e5880efb11c35a3802968d74a61a5c762bfc69c63e37973266cab" [label="/bin/sh -c mkdir -p /bot-mv-telegram" shape="box"];
  "sha256:33c08cb143a03625b5b980b02bc35913b4b49d17015a6cae65714fe69f343fef" [label="mkdir{path=/bot-mv-telegram}" shape="note"];
  "sha256:57ad5594d07288e133976f5f59e78aa6571ba5a888cbd599d640c6e817a8ac9b" [label="copy{src=/, dest=/bot-mv-telegram/}" shape="note"];
  "sha256:791c52601a4d78be6c10dbbccfcf66d7fed7711795789b63b9d4122d3ea910d5" [label="sha256:791c52601a4d78be6c10dbbccfcf66d7fed7711795789b63b9d4122d3ea910d5" shape="plaintext"];
  "sha256:7824a85cd5827b055abe2c38fdf6dc9acbfa87d8a6bbf2127d0282315e90652e" -> "sha256:0380f3fc5b799831a585e3240b6561260c647de3b73b61aab670f73b04014c7a" [label=""];
  "sha256:ff64252710e9809c78c05acc4145a423a511b5e4a3e8a803803bd57266576553" -> "sha256:0380f3fc5b799831a585e3240b6561260c647de3b73b61aab670f73b04014c7a" [label=""];
  "sha256:0380f3fc5b799831a585e3240b6561260c647de3b73b61aab670f73b04014c7a" -> "sha256:bacf29ae8534ac9ea991cd562cf35a51d809c37bc976d5613f6e02f93ae0219c" [label=""];
  "sha256:bacf29ae8534ac9ea991cd562cf35a51d809c37bc976d5613f6e02f93ae0219c" -> "sha256:db8e3ab43f5e5880efb11c35a3802968d74a61a5c762bfc69c63e37973266cab" [label=""];
  "sha256:db8e3ab43f5e5880efb11c35a3802968d74a61a5c762bfc69c63e37973266cab" -> "sha256:33c08cb143a03625b5b980b02bc35913b4b49d17015a6cae65714fe69f343fef" [label=""];
  "sha256:33c08cb143a03625b5b980b02bc35913b4b49d17015a6cae65714fe69f343fef" -> "sha256:57ad5594d07288e133976f5f59e78aa6571ba5a888cbd599d640c6e817a8ac9b" [label=""];
  "sha256:ff64252710e9809c78c05acc4145a423a511b5e4a3e8a803803bd57266576553" -> "sha256:57ad5594d07288e133976f5f59e78aa6571ba5a888cbd599d640c6e817a8ac9b" [label=""];
  "sha256:57ad5594d07288e133976f5f59e78aa6571ba5a888cbd599d640c6e817a8ac9b" -> "sha256:791c52601a4d78be6c10dbbccfcf66d7fed7711795789b63b9d4122d3ea910d5" [label=""];
}

