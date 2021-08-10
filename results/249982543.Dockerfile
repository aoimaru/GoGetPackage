[app/sources/249982543.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:a716c0199b3724243f66440b534bc1fc87375870bedfcdeafce4804d87ce4d22" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:06a3519dce9dde406502e4d9c78a8a63224f9234abf5c562797f598d90a17ce4" [label="local://context" shape="ellipse"];
  "sha256:ba095b81e79df8eb2a64fc8f67feae5afcf3382f872d23ddbfa022d0cb5b08e9" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:f338dc327154228a38058b3a3e88e083e39e92a10b8dc2031b6feced613ec375" [label="/bin/sh -c set -ex  && apt update && apt install -y build-essential python-dev&& pip install --no-cache-dir -r requirements.txt && python manage.py collectstatic --noinput && apt remove build-essential -y && apt autoremove -y && mkdir /root/.netease-musicbox/ && touch /root/.netease-musicbox/musicbox.log && mkdir /usr/src/app/.netease-musicbox/ && touch /usr/src/app/.netease-musicbox/musicbox.log && echo \"#LWP-Cookies-2.0\" > /root/.netease-musicbox/cookie && echo \"#LWP-Cookies-2.0\" > /usr/src/app/.netease-musicbox/cookie" shape="box"];
  "sha256:c8025a50679abb7e85de5a8f0d6c0fa30682e4fd14cef76735bde5ace16936a3" [label="sha256:c8025a50679abb7e85de5a8f0d6c0fa30682e4fd14cef76735bde5ace16936a3" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:a716c0199b3724243f66440b534bc1fc87375870bedfcdeafce4804d87ce4d22" [label=""];
  "sha256:a716c0199b3724243f66440b534bc1fc87375870bedfcdeafce4804d87ce4d22" -> "sha256:ba095b81e79df8eb2a64fc8f67feae5afcf3382f872d23ddbfa022d0cb5b08e9" [label=""];
  "sha256:06a3519dce9dde406502e4d9c78a8a63224f9234abf5c562797f598d90a17ce4" -> "sha256:ba095b81e79df8eb2a64fc8f67feae5afcf3382f872d23ddbfa022d0cb5b08e9" [label=""];
  "sha256:ba095b81e79df8eb2a64fc8f67feae5afcf3382f872d23ddbfa022d0cb5b08e9" -> "sha256:f338dc327154228a38058b3a3e88e083e39e92a10b8dc2031b6feced613ec375" [label=""];
  "sha256:f338dc327154228a38058b3a3e88e083e39e92a10b8dc2031b6feced613ec375" -> "sha256:c8025a50679abb7e85de5a8f0d6c0fa30682e4fd14cef76735bde5ace16936a3" [label=""];
}

