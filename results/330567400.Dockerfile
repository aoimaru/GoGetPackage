[app/sources/330567400.Dockerfile]
digraph {
  "sha256:16ec3baf7e739d9d15c9812d46c99bdcc83915daca77be9723efada96b249472" [label="docker-image://docker.io/payara/micro:5-SNAPSHOT" shape="ellipse"];
  "sha256:5738543dbaa4bda06bd152cc29f48f650f706d25d5f1e8cb4c8280c9f6ba4c1f" [label="local://context" shape="ellipse"];
  "sha256:d7c131e1e28c56c96e9d2c2844f9d1c43f77650ac88672e719ba91ef9adfaa87" [label="copy{src=/target/ims-micro-users.war, dest=/}" shape="note"];
  "sha256:e86ac4dcd18ab613df722750cbcd3caf8748872a9729a4ef1ca871f00b9ddda5" [label="sha256:e86ac4dcd18ab613df722750cbcd3caf8748872a9729a4ef1ca871f00b9ddda5" shape="plaintext"];
  "sha256:16ec3baf7e739d9d15c9812d46c99bdcc83915daca77be9723efada96b249472" -> "sha256:d7c131e1e28c56c96e9d2c2844f9d1c43f77650ac88672e719ba91ef9adfaa87" [label=""];
  "sha256:5738543dbaa4bda06bd152cc29f48f650f706d25d5f1e8cb4c8280c9f6ba4c1f" -> "sha256:d7c131e1e28c56c96e9d2c2844f9d1c43f77650ac88672e719ba91ef9adfaa87" [label=""];
  "sha256:d7c131e1e28c56c96e9d2c2844f9d1c43f77650ac88672e719ba91ef9adfaa87" -> "sha256:e86ac4dcd18ab613df722750cbcd3caf8748872a9729a4ef1ca871f00b9ddda5" [label=""];
}

