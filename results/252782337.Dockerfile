[app/sources/252782337.Dockerfile]
digraph {
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" [label="docker-image://docker.io/mhart/alpine-node:latest" shape="ellipse"];
  "sha256:6130117bec8fb9ea75d496197bcb3f9e3c67ca8afc758a4245334f11969ff64a" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:039cefa1d88eb7b72b91ab166b38532432c72b3cd6e1e1fcbb88a106044f7fd5" [label="local://context" shape="ellipse"];
  "sha256:8a96681485a30d2463df10d3b48d8c755296c348ddb8bce260743dc2134b1dbd" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:5fdd00de2b71b850f3e0b77ff1d40f82dc8369c108c8eb438d18d92b8167fa96" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:aae088da57dcafb402324e6065fc2c4464d0ba68d06400f586c8612a7a05e3f6" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:6e333ef53613234c4622049459cd134bb0d201a568114f3594aaf8803a6f2a86" [label="/bin/sh -c addgroup -S app -g 50000 && adduser -S -g app -u 50000 app && mkdir /data && chown app:app /data/" shape="box"];
  "sha256:d7aef2621fc0eae1e47cc9a13ec6221e750fdabf19c7e9db383b09d45f60af25" [label="sha256:d7aef2621fc0eae1e47cc9a13ec6221e750fdabf19c7e9db383b09d45f60af25" shape="plaintext"];
  "sha256:427f35ce4a9d513c24ddaea3b2f3263e0d6e3a39978b2751c74e13dac2c93adb" -> "sha256:6130117bec8fb9ea75d496197bcb3f9e3c67ca8afc758a4245334f11969ff64a" [label=""];
  "sha256:6130117bec8fb9ea75d496197bcb3f9e3c67ca8afc758a4245334f11969ff64a" -> "sha256:8a96681485a30d2463df10d3b48d8c755296c348ddb8bce260743dc2134b1dbd" [label=""];
  "sha256:039cefa1d88eb7b72b91ab166b38532432c72b3cd6e1e1fcbb88a106044f7fd5" -> "sha256:8a96681485a30d2463df10d3b48d8c755296c348ddb8bce260743dc2134b1dbd" [label=""];
  "sha256:8a96681485a30d2463df10d3b48d8c755296c348ddb8bce260743dc2134b1dbd" -> "sha256:5fdd00de2b71b850f3e0b77ff1d40f82dc8369c108c8eb438d18d92b8167fa96" [label=""];
  "sha256:5fdd00de2b71b850f3e0b77ff1d40f82dc8369c108c8eb438d18d92b8167fa96" -> "sha256:aae088da57dcafb402324e6065fc2c4464d0ba68d06400f586c8612a7a05e3f6" [label=""];
  "sha256:039cefa1d88eb7b72b91ab166b38532432c72b3cd6e1e1fcbb88a106044f7fd5" -> "sha256:aae088da57dcafb402324e6065fc2c4464d0ba68d06400f586c8612a7a05e3f6" [label=""];
  "sha256:aae088da57dcafb402324e6065fc2c4464d0ba68d06400f586c8612a7a05e3f6" -> "sha256:6e333ef53613234c4622049459cd134bb0d201a568114f3594aaf8803a6f2a86" [label=""];
  "sha256:6e333ef53613234c4622049459cd134bb0d201a568114f3594aaf8803a6f2a86" -> "sha256:d7aef2621fc0eae1e47cc9a13ec6221e750fdabf19c7e9db383b09d45f60af25" [label=""];
}

