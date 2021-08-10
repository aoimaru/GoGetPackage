[app/sources/252768159.Dockerfile]
digraph {
  "sha256:d6a57d99620f619ad88e5ac80840d3e326ee0d9bbdfe28d8df189830d58796df" [label="docker-image://docker.io/dockerfile/nodejs-bower-grunt:latest" shape="ellipse"];
  "sha256:84fa1d563a3539895a446aed9401cb2afbd46f4ca65d8907a0ec328b96fe504e" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:9e1cfe715423767d1109a243a7204085563e273ce4542b8b730780d0684b4675" [label="/bin/sh -c apt-get -y install ruby ruby-dev make" shape="box"];
  "sha256:003c2105aafff8f1e06cc7651bf4a9821ed0d79bd9949dca528f9c1c8754b42e" [label="/bin/sh -c gem install compass" shape="box"];
  "sha256:c00c1433e61d36e0f79a182dddef379b2b1da8a66f0bb4ef48d46ec767a57c5f" [label="mkdir{path=/app}" shape="note"];
  "sha256:01e036aecbec4e81e745a3442550022fffc330932e7a8bd044dcfd7b51b4a27a" [label="sha256:01e036aecbec4e81e745a3442550022fffc330932e7a8bd044dcfd7b51b4a27a" shape="plaintext"];
  "sha256:d6a57d99620f619ad88e5ac80840d3e326ee0d9bbdfe28d8df189830d58796df" -> "sha256:84fa1d563a3539895a446aed9401cb2afbd46f4ca65d8907a0ec328b96fe504e" [label=""];
  "sha256:84fa1d563a3539895a446aed9401cb2afbd46f4ca65d8907a0ec328b96fe504e" -> "sha256:9e1cfe715423767d1109a243a7204085563e273ce4542b8b730780d0684b4675" [label=""];
  "sha256:9e1cfe715423767d1109a243a7204085563e273ce4542b8b730780d0684b4675" -> "sha256:003c2105aafff8f1e06cc7651bf4a9821ed0d79bd9949dca528f9c1c8754b42e" [label=""];
  "sha256:003c2105aafff8f1e06cc7651bf4a9821ed0d79bd9949dca528f9c1c8754b42e" -> "sha256:c00c1433e61d36e0f79a182dddef379b2b1da8a66f0bb4ef48d46ec767a57c5f" [label=""];
  "sha256:c00c1433e61d36e0f79a182dddef379b2b1da8a66f0bb4ef48d46ec767a57c5f" -> "sha256:01e036aecbec4e81e745a3442550022fffc330932e7a8bd044dcfd7b51b4a27a" [label=""];
}

