[app/sources/456894327.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:b25259b6216e2a43f74329a1d6f8a28964c546b99a2683fc963664f0a1feca32" [label="/bin/sh -c apt-get update -qq &&     apt-get install -y -q --no-install-recommends     python2.7 python-pip build-essential python-dev" shape="box"];
  "sha256:ad5b062bd04e26f664bd9b49f8481472d102c0d47b33fbae17b9e99f5b7c7f1f" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:f1fb7e942e0344eaa0aa2e60cfefc8afcda84745c808a03633b317f7027bcba2" [label="/bin/sh -c pip install -U setuptools" shape="box"];
  "sha256:54cb9305334069796e0a6652aad4c973df32d2b6e8c5795ae910d71ff4789d14" [label="/bin/sh -c pip install Flask Flask-Cache requests" shape="box"];
  "sha256:54851bda34be181496e3db34a7795976ff75d3edea0b4aa69031f93644eab497" [label="local://context" shape="ellipse"];
  "sha256:31f2a5d196e9355372dbb59ece03af9cc6b574d7686ad51840cdfc6e632f6d8d" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:08cad54e58d9f299e980ec6102038c8ba29a2821d8af8343033b6983dd2d4317" [label="sha256:08cad54e58d9f299e980ec6102038c8ba29a2821d8af8343033b6983dd2d4317" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:b25259b6216e2a43f74329a1d6f8a28964c546b99a2683fc963664f0a1feca32" [label=""];
  "sha256:b25259b6216e2a43f74329a1d6f8a28964c546b99a2683fc963664f0a1feca32" -> "sha256:ad5b062bd04e26f664bd9b49f8481472d102c0d47b33fbae17b9e99f5b7c7f1f" [label=""];
  "sha256:ad5b062bd04e26f664bd9b49f8481472d102c0d47b33fbae17b9e99f5b7c7f1f" -> "sha256:f1fb7e942e0344eaa0aa2e60cfefc8afcda84745c808a03633b317f7027bcba2" [label=""];
  "sha256:f1fb7e942e0344eaa0aa2e60cfefc8afcda84745c808a03633b317f7027bcba2" -> "sha256:54cb9305334069796e0a6652aad4c973df32d2b6e8c5795ae910d71ff4789d14" [label=""];
  "sha256:54cb9305334069796e0a6652aad4c973df32d2b6e8c5795ae910d71ff4789d14" -> "sha256:31f2a5d196e9355372dbb59ece03af9cc6b574d7686ad51840cdfc6e632f6d8d" [label=""];
  "sha256:54851bda34be181496e3db34a7795976ff75d3edea0b4aa69031f93644eab497" -> "sha256:31f2a5d196e9355372dbb59ece03af9cc6b574d7686ad51840cdfc6e632f6d8d" [label=""];
  "sha256:31f2a5d196e9355372dbb59ece03af9cc6b574d7686ad51840cdfc6e632f6d8d" -> "sha256:08cad54e58d9f299e980ec6102038c8ba29a2821d8af8343033b6983dd2d4317" [label=""];
}

