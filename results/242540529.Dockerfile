[app/sources/242540529.Dockerfile]
digraph {
  "sha256:776b4ff1e67a5be30ba14fd5736dd7aaab806a867f5bbcb33cb65e243b616939" [label="docker-image://docker.io/library/node:6.9.5@sha256:cf454b60ee452473f963f60ff18ba75b8e900174aae9bf0e8051e5a83db85b30" shape="ellipse"];
  "sha256:a35cfe9c3ce0aa454ed3cd0ae01f23cd3ffaa4683d2f35670976ec4b98a34bc0" [label="/bin/sh -c git clone https://github.com/akveo/ng2-admin.git /var/www     && cd /var/www     && npm install --global rimraf     && npm run clean     && npm install --global webpack webpack-dev-server typescript@2.1.5     && npm install     && npm run prebuild:prod && npm run build:prod" shape="box"];
  "sha256:014a22d14153ae33b7aaa1e8486efe20b656c9743bf251787082278c76636649" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:f24ce757454535bb187416d9202fc0ca54c110c69b047201df3ed69bc9164d50" [label="sha256:f24ce757454535bb187416d9202fc0ca54c110c69b047201df3ed69bc9164d50" shape="plaintext"];
  "sha256:776b4ff1e67a5be30ba14fd5736dd7aaab806a867f5bbcb33cb65e243b616939" -> "sha256:a35cfe9c3ce0aa454ed3cd0ae01f23cd3ffaa4683d2f35670976ec4b98a34bc0" [label=""];
  "sha256:a35cfe9c3ce0aa454ed3cd0ae01f23cd3ffaa4683d2f35670976ec4b98a34bc0" -> "sha256:014a22d14153ae33b7aaa1e8486efe20b656c9743bf251787082278c76636649" [label=""];
  "sha256:014a22d14153ae33b7aaa1e8486efe20b656c9743bf251787082278c76636649" -> "sha256:f24ce757454535bb187416d9202fc0ca54c110c69b047201df3ed69bc9164d50" [label=""];
}

