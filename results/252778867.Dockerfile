[app/sources/252778867.Dockerfile]
digraph {
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" [label="docker-image://docker.io/library/golang:1.8" shape="ellipse"];
  "sha256:fbed7c307dd6b700eebf84421d873e16df56ed88fb410c8a81caac7083a8a831" [label="local://context" shape="ellipse"];
  "sha256:efe285289d288c469c347e526662b321a452d9828e468cee71c363086147b3a7" [label="copy{src=/bin, dest=/bin}" shape="note"];
  "sha256:ee51f3f17d85ef35116b627f53eb220b52f2060e23d806cf3f9fcde45e68c124" [label="/bin/sh -c chmod +x /bin/start.sh && chmod +x /bin/aws-es-proxy-0.3-linux-amd64" shape="box"];
  "sha256:90ae811276c9ae2165a5bc85f385f23cbfe2281652db3bc9252245c49d273dd4" [label="sha256:90ae811276c9ae2165a5bc85f385f23cbfe2281652db3bc9252245c49d273dd4" shape="plaintext"];
  "sha256:b150da432c7a40066a95bb13c63c745492fdd7212cf68b9867ca367c7b6abf96" -> "sha256:efe285289d288c469c347e526662b321a452d9828e468cee71c363086147b3a7" [label=""];
  "sha256:fbed7c307dd6b700eebf84421d873e16df56ed88fb410c8a81caac7083a8a831" -> "sha256:efe285289d288c469c347e526662b321a452d9828e468cee71c363086147b3a7" [label=""];
  "sha256:efe285289d288c469c347e526662b321a452d9828e468cee71c363086147b3a7" -> "sha256:ee51f3f17d85ef35116b627f53eb220b52f2060e23d806cf3f9fcde45e68c124" [label=""];
  "sha256:ee51f3f17d85ef35116b627f53eb220b52f2060e23d806cf3f9fcde45e68c124" -> "sha256:90ae811276c9ae2165a5bc85f385f23cbfe2281652db3bc9252245c49d273dd4" [label=""];
}

