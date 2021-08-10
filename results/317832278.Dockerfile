[app/sources/317832278.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:49b627bbf81ad0de137636ec5495a85961851b07c1578c7b9f034445d03db893" [label="/bin/sh -c apk -v --update add         python         py-pip         groff         less         mailcap \twget         jq          openssl \tca-certificates \tpy-setuptools         &&     pip install -U jdcloud_cli" shape="box"];
  "sha256:5f19accfe493c336d3ac1d3dfb390c21c1795dc657b265fa9b754b8b75dd17ba" [label="/bin/sh -c update-ca-certificates" shape="box"];
  "sha256:6b944be6e303870c0a9b2291bce202ba4c4680e5cd5675218952b110353ac5c5" [label="/bin/sh -c wget -q -c  -O kubectl https://storage.googleapis.com/kubernetes-release/release/v1.8.12/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl /usr/local/bin" shape="box"];
  "sha256:fe1f8860506a19d5e0bca22eebb33240c730aa6d03653de7b5d876bdfa0b2da4" [label="/bin/sh -c apk -v --purge del py-pip &&     rm /var/cache/apk/*" shape="box"];
  "sha256:45c37865219309ca3bd87befc2fee2b641d090f9719c19caf9b13ba582b22ed9" [label="/bin/sh -c echo 'eval \"$(register-python-argcomplete jdc)\"' >> /root/.bashrc" shape="box"];
  "sha256:776e3cb1011ec0fc4e93ad2d2cdc6a383f970887588384437fcdb79fb216878b" [label="/bin/sh -c echo 'export COLUMNS=100' >> /root/.bashrc" shape="box"];
  "sha256:70455ed9a045583a32ee318b53f7c02430b13c151c9a137af17a5615dc6710a5" [label="mkdir{path=/root}" shape="note"];
  "sha256:2b17faf325a37e2a87b4072666c4ef98a394c2188386113cca43267c711fd104" [label="sha256:2b17faf325a37e2a87b4072666c4ef98a394c2188386113cca43267c711fd104" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:49b627bbf81ad0de137636ec5495a85961851b07c1578c7b9f034445d03db893" [label=""];
  "sha256:49b627bbf81ad0de137636ec5495a85961851b07c1578c7b9f034445d03db893" -> "sha256:5f19accfe493c336d3ac1d3dfb390c21c1795dc657b265fa9b754b8b75dd17ba" [label=""];
  "sha256:5f19accfe493c336d3ac1d3dfb390c21c1795dc657b265fa9b754b8b75dd17ba" -> "sha256:6b944be6e303870c0a9b2291bce202ba4c4680e5cd5675218952b110353ac5c5" [label=""];
  "sha256:6b944be6e303870c0a9b2291bce202ba4c4680e5cd5675218952b110353ac5c5" -> "sha256:fe1f8860506a19d5e0bca22eebb33240c730aa6d03653de7b5d876bdfa0b2da4" [label=""];
  "sha256:fe1f8860506a19d5e0bca22eebb33240c730aa6d03653de7b5d876bdfa0b2da4" -> "sha256:45c37865219309ca3bd87befc2fee2b641d090f9719c19caf9b13ba582b22ed9" [label=""];
  "sha256:45c37865219309ca3bd87befc2fee2b641d090f9719c19caf9b13ba582b22ed9" -> "sha256:776e3cb1011ec0fc4e93ad2d2cdc6a383f970887588384437fcdb79fb216878b" [label=""];
  "sha256:776e3cb1011ec0fc4e93ad2d2cdc6a383f970887588384437fcdb79fb216878b" -> "sha256:70455ed9a045583a32ee318b53f7c02430b13c151c9a137af17a5615dc6710a5" [label=""];
  "sha256:70455ed9a045583a32ee318b53f7c02430b13c151c9a137af17a5615dc6710a5" -> "sha256:2b17faf325a37e2a87b4072666c4ef98a394c2188386113cca43267c711fd104" [label=""];
}

