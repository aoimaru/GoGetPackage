[app/sources/151307351.Dockerfile]
digraph {
  "sha256:9f10a217424b1ee75a6814628e56b72aebe22a34857c651307b0149a50fc1ed8" [label="local://context" shape="ellipse"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:1619e4f02ada77c654a35e4e17f873b51f207f70a4fcd27878e13eff2f4a9128" [label="copy{src=/jira-dependency-graph.py, dest=/jira/}" shape="note"];
  "sha256:ed721fa1cfb34d5624e4b90f6108be1f46ad6f743988a9d7b20867a1e795a4cc" [label="copy{src=/requirements.txt, dest=/jira/}" shape="note"];
  "sha256:c3b74f7ea2fb2443ce7fbd58593882efa7585a39e5f11e254d287aaeb8ed4fda" [label="mkdir{path=/jira}" shape="note"];
  "sha256:2bc9689011bc28c514b746718940dc918441aae7bee7cf2c8683bcc061e93090" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:edd80970b792c58cc9ec64e94cc89485a8ddb8bf4ce21370f08a74b7ced9ddc8" [label="sha256:edd80970b792c58cc9ec64e94cc89485a8ddb8bf4ce21370f08a74b7ced9ddc8" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:1619e4f02ada77c654a35e4e17f873b51f207f70a4fcd27878e13eff2f4a9128" [label=""];
  "sha256:9f10a217424b1ee75a6814628e56b72aebe22a34857c651307b0149a50fc1ed8" -> "sha256:1619e4f02ada77c654a35e4e17f873b51f207f70a4fcd27878e13eff2f4a9128" [label=""];
  "sha256:1619e4f02ada77c654a35e4e17f873b51f207f70a4fcd27878e13eff2f4a9128" -> "sha256:ed721fa1cfb34d5624e4b90f6108be1f46ad6f743988a9d7b20867a1e795a4cc" [label=""];
  "sha256:9f10a217424b1ee75a6814628e56b72aebe22a34857c651307b0149a50fc1ed8" -> "sha256:ed721fa1cfb34d5624e4b90f6108be1f46ad6f743988a9d7b20867a1e795a4cc" [label=""];
  "sha256:ed721fa1cfb34d5624e4b90f6108be1f46ad6f743988a9d7b20867a1e795a4cc" -> "sha256:c3b74f7ea2fb2443ce7fbd58593882efa7585a39e5f11e254d287aaeb8ed4fda" [label=""];
  "sha256:c3b74f7ea2fb2443ce7fbd58593882efa7585a39e5f11e254d287aaeb8ed4fda" -> "sha256:2bc9689011bc28c514b746718940dc918441aae7bee7cf2c8683bcc061e93090" [label=""];
  "sha256:2bc9689011bc28c514b746718940dc918441aae7bee7cf2c8683bcc061e93090" -> "sha256:edd80970b792c58cc9ec64e94cc89485a8ddb8bf4ce21370f08a74b7ced9ddc8" [label=""];
}

