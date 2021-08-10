[app/sources/350082274.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:9cba71e8ca2f00f020a110a4a5c5211fd6e477373981e26371da55c181aad50e" [label="local://context" shape="ellipse"];
  "sha256:5ee47eba6138b2271b7ab254899bc4414fbde49f47e9944ee015f83d9fee2e72" [label="copy{src=/build/gofabric8-linux-amd64, dest=/bin/gofabric8}" shape="note"];
  "sha256:317720871016724f2acda3279d97536e4382942558186aaa5945dfda008bd8ee" [label="sha256:317720871016724f2acda3279d97536e4382942558186aaa5945dfda008bd8ee" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:5ee47eba6138b2271b7ab254899bc4414fbde49f47e9944ee015f83d9fee2e72" [label=""];
  "sha256:9cba71e8ca2f00f020a110a4a5c5211fd6e477373981e26371da55c181aad50e" -> "sha256:5ee47eba6138b2271b7ab254899bc4414fbde49f47e9944ee015f83d9fee2e72" [label=""];
  "sha256:5ee47eba6138b2271b7ab254899bc4414fbde49f47e9944ee015f83d9fee2e72" -> "sha256:317720871016724f2acda3279d97536e4382942558186aaa5945dfda008bd8ee" [label=""];
}

