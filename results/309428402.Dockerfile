[app/sources/309428402.Dockerfile]
digraph {
  "sha256:92a6a72a88f2d3c4e182c53c303704c17e9cd036bca35d226159e2e2ec8ddd9f" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:28dfd4d3ecfb9587f41cd326f5ed37724895f1229c39ba31aee86163db0e2dda" [label="copy{src=/mix.exs, dest=/opt/client/default/mix.exs}" shape="note"];
  "sha256:e9b7c34aa62e3e3d95384f75ffbbf373779dfdc83b8dfb10c6ae4604873e69d1" [label="/bin/sh -c (echo 'deb http://packages.erlang-solutions.com/ubuntu xenial contrib' >> /etc/apt/sources.list)   && (apt-key adv --fetch-keys  http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc)   && apt-get update   && apt-get install -y wget elixir   && cd /opt/client/default   && mix local.hex --force   && mix deps.get   && mkdir -p $SOLUTION_CODE_PATH" shape="box"];
  "sha256:fa353ba7f5896ebd4fdfcbc31693bbfc33524c310464a1e9656022c7ae72ffee" [label="sha256:fa353ba7f5896ebd4fdfcbc31693bbfc33524c310464a1e9656022c7ae72ffee" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:28dfd4d3ecfb9587f41cd326f5ed37724895f1229c39ba31aee86163db0e2dda" [label=""];
  "sha256:92a6a72a88f2d3c4e182c53c303704c17e9cd036bca35d226159e2e2ec8ddd9f" -> "sha256:28dfd4d3ecfb9587f41cd326f5ed37724895f1229c39ba31aee86163db0e2dda" [label=""];
  "sha256:28dfd4d3ecfb9587f41cd326f5ed37724895f1229c39ba31aee86163db0e2dda" -> "sha256:e9b7c34aa62e3e3d95384f75ffbbf373779dfdc83b8dfb10c6ae4604873e69d1" [label=""];
  "sha256:e9b7c34aa62e3e3d95384f75ffbbf373779dfdc83b8dfb10c6ae4604873e69d1" -> "sha256:fa353ba7f5896ebd4fdfcbc31693bbfc33524c310464a1e9656022c7ae72ffee" [label=""];
}

