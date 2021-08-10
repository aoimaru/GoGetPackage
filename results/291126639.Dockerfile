[app/sources/291126639.Dockerfile]
digraph {
  "sha256:c56d092c7f060ed14eb4cf759ce83695a73dc0c47e9040d8faef375fc2c786e3" [label="docker-image://docker.io/arm64v8/python:3-alpine" shape="ellipse"];
  "sha256:49830d338c1a332cd50142704aa7b7ce0d6d59ffb5b30f6020fad122069f455e" [label="/bin/sh -c apk --no-cache --update add jq vim" shape="box"];
  "sha256:f8ab7a252fd8ccb77c9e453017296056cf925d3f2dfc8efa66647b16dc32f2f7" [label="/bin/sh -c pip install speedtest-cli" shape="box"];
  "sha256:720ea3b8e09b089e1f2ae4558e8ad85e1af96555fee710dd0bec53816426419f" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:616aa9062b4adb4ff6e90488f4bffb12f4aaa59031e08aaf1a53eae0eb0ee9fb" [label="local://context" shape="ellipse"];
  "sha256:5c716ae5468070722cea29523d3ae3773c76ddc5ea4bd9a9d76abd7a7ab3f9d8" [label="copy{src=/speedtest_server.py, dest=/}" shape="note"];
  "sha256:95cec2fb590726afde0f35e3b20b89e55539bbf2368442234db7dd29423b5e0e" [label="sha256:95cec2fb590726afde0f35e3b20b89e55539bbf2368442234db7dd29423b5e0e" shape="plaintext"];
  "sha256:c56d092c7f060ed14eb4cf759ce83695a73dc0c47e9040d8faef375fc2c786e3" -> "sha256:49830d338c1a332cd50142704aa7b7ce0d6d59ffb5b30f6020fad122069f455e" [label=""];
  "sha256:49830d338c1a332cd50142704aa7b7ce0d6d59ffb5b30f6020fad122069f455e" -> "sha256:f8ab7a252fd8ccb77c9e453017296056cf925d3f2dfc8efa66647b16dc32f2f7" [label=""];
  "sha256:f8ab7a252fd8ccb77c9e453017296056cf925d3f2dfc8efa66647b16dc32f2f7" -> "sha256:720ea3b8e09b089e1f2ae4558e8ad85e1af96555fee710dd0bec53816426419f" [label=""];
  "sha256:720ea3b8e09b089e1f2ae4558e8ad85e1af96555fee710dd0bec53816426419f" -> "sha256:5c716ae5468070722cea29523d3ae3773c76ddc5ea4bd9a9d76abd7a7ab3f9d8" [label=""];
  "sha256:616aa9062b4adb4ff6e90488f4bffb12f4aaa59031e08aaf1a53eae0eb0ee9fb" -> "sha256:5c716ae5468070722cea29523d3ae3773c76ddc5ea4bd9a9d76abd7a7ab3f9d8" [label=""];
  "sha256:5c716ae5468070722cea29523d3ae3773c76ddc5ea4bd9a9d76abd7a7ab3f9d8" -> "sha256:95cec2fb590726afde0f35e3b20b89e55539bbf2368442234db7dd29423b5e0e" [label=""];
}

