[app/sources/276230612.Dockerfile]
digraph {
  "sha256:dafa16bc2d2fd7c2d46e1932c31275a342026f48b290cb745f6e61e19a433e71" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:5375052f0581c736fb908286709a86d1e6453eb711f41a236fabf78138dc73a4" [label="/bin/sh -c apt-get update -qy && apt-get install tmux zsh weechat-curses -y" shape="box"];
  "sha256:586d91ceb0d8e52cb58cf71cc620cfdd9b47f7c685465ac338a66aa4624c3613" [label="copy{src=/.weechat, dest=/.weechat}" shape="note"];
  "sha256:69b2cc11f46e80284e862367e3111ec9df092ae37b269e4110a62b1df44c2ed6" [label="copy{src=/.tmux.conf, dest=/}" shape="note"];
  "sha256:cd073f887c6517aaca44a0da42b351aa1207787e7c552842f5901a49018a783a" [label="/bin/sh -c echo \"export TERM=screen-256color\" >/.zshenv" shape="box"];
  "sha256:a8c76d1d3cfe63a1595254c5d1c599bb91dec97278f5c6b42357caa475239946" [label="sha256:a8c76d1d3cfe63a1595254c5d1c599bb91dec97278f5c6b42357caa475239946" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:5375052f0581c736fb908286709a86d1e6453eb711f41a236fabf78138dc73a4" [label=""];
  "sha256:5375052f0581c736fb908286709a86d1e6453eb711f41a236fabf78138dc73a4" -> "sha256:586d91ceb0d8e52cb58cf71cc620cfdd9b47f7c685465ac338a66aa4624c3613" [label=""];
  "sha256:dafa16bc2d2fd7c2d46e1932c31275a342026f48b290cb745f6e61e19a433e71" -> "sha256:586d91ceb0d8e52cb58cf71cc620cfdd9b47f7c685465ac338a66aa4624c3613" [label=""];
  "sha256:586d91ceb0d8e52cb58cf71cc620cfdd9b47f7c685465ac338a66aa4624c3613" -> "sha256:69b2cc11f46e80284e862367e3111ec9df092ae37b269e4110a62b1df44c2ed6" [label=""];
  "sha256:dafa16bc2d2fd7c2d46e1932c31275a342026f48b290cb745f6e61e19a433e71" -> "sha256:69b2cc11f46e80284e862367e3111ec9df092ae37b269e4110a62b1df44c2ed6" [label=""];
  "sha256:69b2cc11f46e80284e862367e3111ec9df092ae37b269e4110a62b1df44c2ed6" -> "sha256:cd073f887c6517aaca44a0da42b351aa1207787e7c552842f5901a49018a783a" [label=""];
  "sha256:cd073f887c6517aaca44a0da42b351aa1207787e7c552842f5901a49018a783a" -> "sha256:a8c76d1d3cfe63a1595254c5d1c599bb91dec97278f5c6b42357caa475239946" [label=""];
}

