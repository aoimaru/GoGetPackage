[app/sources/252797758.Dockerfile]
digraph {
  "sha256:cc2fca4703252af690f8977ab2096c10e3432c75f334213859a2c10da6ed760b" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:32827a0f42706e1f13925021d79c77138cad0311fa4e8cb66b846e5550cd49df" [label="copy{src=/, dest=/unpublish-content-notifier/},copy{src=/.git, dest=/unpublish-content-notifier/}" shape="note"];
  "sha256:f37199c58bc7ea39e25c7c6753f6b1ccde77552896e72971e319e8592fb76940" [label="/bin/sh -c apk --update add git go libc-dev ca-certificates && export GOPATH=/gopath && REPO_PATH=\"github.com/Financial-Times/unpublish-content-notifier\" && mkdir -p $GOPATH/src/${REPO_PATH} && cp -r unpublish-content-notifier/* $GOPATH/src/${REPO_PATH} && cd $GOPATH/src/${REPO_PATH} && go get -t -v ./... && go build && mv unpublish-content-notifier /unpublish-content-notifier-app && apk del go git bzr && rm -rf $GOPATH /var/cache/apk/* /unpublish-content-notifier" shape="box"];
  "sha256:2233290e9b24afa1364821fa1e957babdb981920a9ef84d42be0b339e2e02553" [label="sha256:2233290e9b24afa1364821fa1e957babdb981920a9ef84d42be0b339e2e02553" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:32827a0f42706e1f13925021d79c77138cad0311fa4e8cb66b846e5550cd49df" [label=""];
  "sha256:cc2fca4703252af690f8977ab2096c10e3432c75f334213859a2c10da6ed760b" -> "sha256:32827a0f42706e1f13925021d79c77138cad0311fa4e8cb66b846e5550cd49df" [label=""];
  "sha256:32827a0f42706e1f13925021d79c77138cad0311fa4e8cb66b846e5550cd49df" -> "sha256:f37199c58bc7ea39e25c7c6753f6b1ccde77552896e72971e319e8592fb76940" [label=""];
  "sha256:f37199c58bc7ea39e25c7c6753f6b1ccde77552896e72971e319e8592fb76940" -> "sha256:2233290e9b24afa1364821fa1e957babdb981920a9ef84d42be0b339e2e02553" [label=""];
}

