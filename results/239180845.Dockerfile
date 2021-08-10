[app/sources/239180845.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:594b5ae7131e1c22fa37061eb37dd38e608108a54e9b4ce08f1a59cf28492d20" [label="local://context" shape="ellipse"];
  "sha256:4f10a4256bedb019f91c25fada03fed8c350b1bae12d2ea5b28219134ea3c53f" [label="copy{src=/requirements.txt, dest=/home/app/}" shape="note"];
  "sha256:a73834a48dceede05fd74e435a11f07808e07bfd4e5230378807867a80cca023" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:e8584329945c84c4f91a286cb05cc0cb5fb1e8653a3f4d27369ef5ec50dbdb9b" [label="/bin/sh -c apk add --no-cache postgresql-dev gcc python3 python3-dev musl-dev &&     python3 -m ensurepip &&     rm -r /usr/lib/python*/ensurepip &&     pip3 install --upgrade pip setuptools &&     rm -r /root/.cache &&     pip3 install -r requirements.txt" shape="box"];
  "sha256:7417aaf32598e7779dc4a89ca50eb5826bde56f93c3acb8908b770969eb612e8" [label="sha256:7417aaf32598e7779dc4a89ca50eb5826bde56f93c3acb8908b770969eb612e8" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:4f10a4256bedb019f91c25fada03fed8c350b1bae12d2ea5b28219134ea3c53f" [label=""];
  "sha256:594b5ae7131e1c22fa37061eb37dd38e608108a54e9b4ce08f1a59cf28492d20" -> "sha256:4f10a4256bedb019f91c25fada03fed8c350b1bae12d2ea5b28219134ea3c53f" [label=""];
  "sha256:4f10a4256bedb019f91c25fada03fed8c350b1bae12d2ea5b28219134ea3c53f" -> "sha256:a73834a48dceede05fd74e435a11f07808e07bfd4e5230378807867a80cca023" [label=""];
  "sha256:a73834a48dceede05fd74e435a11f07808e07bfd4e5230378807867a80cca023" -> "sha256:e8584329945c84c4f91a286cb05cc0cb5fb1e8653a3f4d27369ef5ec50dbdb9b" [label=""];
  "sha256:e8584329945c84c4f91a286cb05cc0cb5fb1e8653a3f4d27369ef5ec50dbdb9b" -> "sha256:7417aaf32598e7779dc4a89ca50eb5826bde56f93c3acb8908b770969eb612e8" [label=""];
}

