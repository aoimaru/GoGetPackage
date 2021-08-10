[app/sources/173479598.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:6b4ee61e8f9cd14597514d7a98d3c649fc6c13b629d5a00d860d9e82dd2de660" [label="local://context" shape="ellipse"];
  "sha256:77a23ebe97af9804633dea79e57e002bd33ece4754e765221b7aae5f7d83cb8e" [label="copy{src=/app, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:7dbb7bebc1d39fa8ac42f0a8ad672bbac7215534e1c46fd46a26412ca87f64e9" [label="/bin/sh -c chmod -R 777 /usr/share/nginx/html" shape="box"];
  "sha256:13f7d911ae1b4cfd8446e7b35f5dd46304b6d87bb244b2949486002956146c97" [label="/bin/sh -c chown -R nginx:nginx /usr/share/nginx/html" shape="box"];
  "sha256:cde76e7c1462b26caf7db92f0fb41367e2e6ec3d78efb08caf05e8f9f54048cd" [label="sha256:cde76e7c1462b26caf7db92f0fb41367e2e6ec3d78efb08caf05e8f9f54048cd" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:77a23ebe97af9804633dea79e57e002bd33ece4754e765221b7aae5f7d83cb8e" [label=""];
  "sha256:6b4ee61e8f9cd14597514d7a98d3c649fc6c13b629d5a00d860d9e82dd2de660" -> "sha256:77a23ebe97af9804633dea79e57e002bd33ece4754e765221b7aae5f7d83cb8e" [label=""];
  "sha256:77a23ebe97af9804633dea79e57e002bd33ece4754e765221b7aae5f7d83cb8e" -> "sha256:7dbb7bebc1d39fa8ac42f0a8ad672bbac7215534e1c46fd46a26412ca87f64e9" [label=""];
  "sha256:7dbb7bebc1d39fa8ac42f0a8ad672bbac7215534e1c46fd46a26412ca87f64e9" -> "sha256:13f7d911ae1b4cfd8446e7b35f5dd46304b6d87bb244b2949486002956146c97" [label=""];
  "sha256:13f7d911ae1b4cfd8446e7b35f5dd46304b6d87bb244b2949486002956146c97" -> "sha256:cde76e7c1462b26caf7db92f0fb41367e2e6ec3d78efb08caf05e8f9f54048cd" [label=""];
}

