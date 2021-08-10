[app/sources/252770991.Dockerfile]
digraph {
  "sha256:3b8b6a90e8f26d35028e595d104fb0877d9fdafd7f1e8b4158ed9e2f9bdf465a" [label="docker-image://docker.io/aguamala/ansible:2.2.0" shape="ellipse"];
  "sha256:9a8150973ccae2aa16e27a8fe3763a6ee193a04984deea99480890ce467dcf5e" [label="/bin/sh -c echo \"===> Installing git...\" && yum -y install git" shape="box"];
  "sha256:12c85c4457f91c0e513b036dce97074aab6f5ad150b617145b74c385ee4ec022" [label="/bin/sh -c echo \"===> ssh-keyscan\" && ssh-keyscan bitbucket.org > /etc/ssh/ssh_known_hosts && ssh-keyscan github.com >> /etc/ssh/ssh_known_hosts" shape="box"];
  "sha256:cfb8fef356d1c94e35a953119307b1bebc303c52e20ed33d168fcbeabc9ffb5a" [label="sha256:cfb8fef356d1c94e35a953119307b1bebc303c52e20ed33d168fcbeabc9ffb5a" shape="plaintext"];
  "sha256:3b8b6a90e8f26d35028e595d104fb0877d9fdafd7f1e8b4158ed9e2f9bdf465a" -> "sha256:9a8150973ccae2aa16e27a8fe3763a6ee193a04984deea99480890ce467dcf5e" [label=""];
  "sha256:9a8150973ccae2aa16e27a8fe3763a6ee193a04984deea99480890ce467dcf5e" -> "sha256:12c85c4457f91c0e513b036dce97074aab6f5ad150b617145b74c385ee4ec022" [label=""];
  "sha256:12c85c4457f91c0e513b036dce97074aab6f5ad150b617145b74c385ee4ec022" -> "sha256:cfb8fef356d1c94e35a953119307b1bebc303c52e20ed33d168fcbeabc9ffb5a" [label=""];
}

