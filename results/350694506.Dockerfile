[app/sources/350694506.Dockerfile]
digraph {
  "sha256:e34d0ab6048e699c8d998cd182d8197add3474c45f1999b22fac905cd66fed83" [label="local://context" shape="ellipse"];
  "sha256:9eb04360420c21a2f4e78e14e8bcb71565f04eb705275bd015cb9ed1fde53513" [label="docker-image://docker.io/library/haskell:7.10" shape="ellipse"];
  "sha256:544fbed030e710fca9a64692f93d98c8b577a93f3b32383ef46cb62656c3c65e" [label="copy{src=/.bin/todobackend-happstack, dest=/usr/bin/todobackend-happstack}" shape="note"];
  "sha256:e8b2ddbe12f625241bb2d770fed06f4efeb6681aad9979e615046d91435c41b5" [label="sha256:e8b2ddbe12f625241bb2d770fed06f4efeb6681aad9979e615046d91435c41b5" shape="plaintext"];
  "sha256:9eb04360420c21a2f4e78e14e8bcb71565f04eb705275bd015cb9ed1fde53513" -> "sha256:544fbed030e710fca9a64692f93d98c8b577a93f3b32383ef46cb62656c3c65e" [label=""];
  "sha256:e34d0ab6048e699c8d998cd182d8197add3474c45f1999b22fac905cd66fed83" -> "sha256:544fbed030e710fca9a64692f93d98c8b577a93f3b32383ef46cb62656c3c65e" [label=""];
  "sha256:544fbed030e710fca9a64692f93d98c8b577a93f3b32383ef46cb62656c3c65e" -> "sha256:e8b2ddbe12f625241bb2d770fed06f4efeb6681aad9979e615046d91435c41b5" [label=""];
}

