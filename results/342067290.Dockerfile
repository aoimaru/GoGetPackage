[app/sources/342067290.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:62c0e58b6c72c511b8d61a1cb7a3a339372a26587dc6dd3ff988f5f3314d4122" [label="local://context" shape="ellipse"];
  "sha256:2bf72f87c318027f493d1f56104b4e82467a827cb54ed45fa13f9280d32d6448" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:faf2c352cb0e1616b7316dd9aa92342dcde010eaa1a494cabd1fdd197f9a178a" [label="pip install requests" shape="box"];
  "sha256:1f74ae0ab9f75bfbee75499aa29387eade41b178f4d5af32f7808fb50a818540" [label="pip install BeautifulSoup" shape="box"];
  "sha256:7507e7656ffe73f84abdbc518be8739a7673bb07196864dac201c162c3d75cb5" [label="sha256:7507e7656ffe73f84abdbc518be8739a7673bb07196864dac201c162c3d75cb5" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:2bf72f87c318027f493d1f56104b4e82467a827cb54ed45fa13f9280d32d6448" [label=""];
  "sha256:62c0e58b6c72c511b8d61a1cb7a3a339372a26587dc6dd3ff988f5f3314d4122" -> "sha256:2bf72f87c318027f493d1f56104b4e82467a827cb54ed45fa13f9280d32d6448" [label=""];
  "sha256:2bf72f87c318027f493d1f56104b4e82467a827cb54ed45fa13f9280d32d6448" -> "sha256:faf2c352cb0e1616b7316dd9aa92342dcde010eaa1a494cabd1fdd197f9a178a" [label=""];
  "sha256:faf2c352cb0e1616b7316dd9aa92342dcde010eaa1a494cabd1fdd197f9a178a" -> "sha256:1f74ae0ab9f75bfbee75499aa29387eade41b178f4d5af32f7808fb50a818540" [label=""];
  "sha256:1f74ae0ab9f75bfbee75499aa29387eade41b178f4d5af32f7808fb50a818540" -> "sha256:7507e7656ffe73f84abdbc518be8739a7673bb07196864dac201c162c3d75cb5" [label=""];
}

