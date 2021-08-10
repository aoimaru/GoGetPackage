[app/sources/411755282.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:016aa7467daddbb82e9400df6d4606b79f066d2e49130b472ba3419d20c66fb7" [label="/bin/sh -c apt-get install -y nodejs npm" shape="box"];
  "sha256:6193b3f6b4662b22e60c85802114e5a6341b33df31c57958efe9175309a42956" [label="local://context" shape="ellipse"];
  "sha256:ad5a217bec85ad17bbf1833b2158b7532018080323c735032885108b2e6f8b68" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a08a61764544c972ca93038f1f6a31146187a093647086afc38064883942c551" [label="/bin/sh -c cd /app; npm install" shape="box"];
  "sha256:1046be0f55dca52428cedd36c767bc7fcf5357dcb25f174a96d2bf843e4a6904" [label="sha256:1046be0f55dca52428cedd36c767bc7fcf5357dcb25f174a96d2bf843e4a6904" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:016aa7467daddbb82e9400df6d4606b79f066d2e49130b472ba3419d20c66fb7" [label=""];
  "sha256:016aa7467daddbb82e9400df6d4606b79f066d2e49130b472ba3419d20c66fb7" -> "sha256:ad5a217bec85ad17bbf1833b2158b7532018080323c735032885108b2e6f8b68" [label=""];
  "sha256:6193b3f6b4662b22e60c85802114e5a6341b33df31c57958efe9175309a42956" -> "sha256:ad5a217bec85ad17bbf1833b2158b7532018080323c735032885108b2e6f8b68" [label=""];
  "sha256:ad5a217bec85ad17bbf1833b2158b7532018080323c735032885108b2e6f8b68" -> "sha256:a08a61764544c972ca93038f1f6a31146187a093647086afc38064883942c551" [label=""];
  "sha256:a08a61764544c972ca93038f1f6a31146187a093647086afc38064883942c551" -> "sha256:1046be0f55dca52428cedd36c767bc7fcf5357dcb25f174a96d2bf843e4a6904" [label=""];
}

