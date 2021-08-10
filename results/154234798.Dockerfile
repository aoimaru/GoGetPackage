[app/sources/154234798.Dockerfile]
digraph {
  "sha256:cb193aecf2795cad27e560287821201da7efe5301a0206f184a3a256772f1e9e" [label="docker-image://docker.io/library/python:alpine@sha256:853365cd7245aec1580879933f2c5ea1a45c1ceb868c05480a58cba443ffb1e5" shape="ellipse"];
  "sha256:2f8ddc3ffe15cef5a1674b7429249158e552c78c408c6246d29134eab88ae1f2" [label="/bin/sh -c pip3 install itsdangerous && rm -rf /root/.cache" shape="box"];
  "sha256:92457c62921470cc55231a47420b127f57e458e9aaa84a23b0e06dcb0b4a4364" [label="local://context" shape="ellipse"];
  "sha256:6acfc775c7ea31baa26854f55f40d153f3ee321cedd27debf9479930dd265640" [label="copy{src=/server.py, dest=/srv/}" shape="note"];
  "sha256:dc90ad0012b8cd3bf7fe218b1734764b98b6464d232eb4b4b93a5e8b48089431" [label="sha256:dc90ad0012b8cd3bf7fe218b1734764b98b6464d232eb4b4b93a5e8b48089431" shape="plaintext"];
  "sha256:cb193aecf2795cad27e560287821201da7efe5301a0206f184a3a256772f1e9e" -> "sha256:2f8ddc3ffe15cef5a1674b7429249158e552c78c408c6246d29134eab88ae1f2" [label=""];
  "sha256:2f8ddc3ffe15cef5a1674b7429249158e552c78c408c6246d29134eab88ae1f2" -> "sha256:6acfc775c7ea31baa26854f55f40d153f3ee321cedd27debf9479930dd265640" [label=""];
  "sha256:92457c62921470cc55231a47420b127f57e458e9aaa84a23b0e06dcb0b4a4364" -> "sha256:6acfc775c7ea31baa26854f55f40d153f3ee321cedd27debf9479930dd265640" [label=""];
  "sha256:6acfc775c7ea31baa26854f55f40d153f3ee321cedd27debf9479930dd265640" -> "sha256:dc90ad0012b8cd3bf7fe218b1734764b98b6464d232eb4b4b93a5e8b48089431" [label=""];
}

