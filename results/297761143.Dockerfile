[app/sources/297761143.Dockerfile]
digraph {
  "sha256:c03435a608566fd37ee3a2e0814e84ed1f0fb7cf3bc39d3b64663307709bb7d4" [label="docker-image://docker.io/bitwalker/alpine-erlang:latest" shape="ellipse"];
  "sha256:af6ecd88c272b8bf24ba64470d7bcaa443c98f3d0612f9c2adbe87929f34347e" [label="local://context" shape="ellipse"];
  "sha256:431d81e96fa2f32e9999c03def763465558306380a93e07c5a36f1933a0f4e33" [label="copy{src=/releases, dest=/releases}" shape="note"];
  "sha256:355078ce1b68b3ecf42de71b8f4674f985dcc49504a07cc7494d2fb453913470" [label="/bin/sh -c mkdir -p /opt/$APP/log &&     cp releases/$APP.tar.gz /opt/$APP &&     cd /opt/$APP &&     tar -xzf $APP.tar.gz &&     rm $APP.tar.gz &&     rm -rf /opt/app/* &&     chmod -R 777 /opt/app &&     chmod -R 777 /opt/$APP &&     ln -s /opt/$APP/bin/$APP /opt/$APP/bin/app" shape="box"];
  "sha256:305651886d7ba09f1f09324f66ad5af8ecf720884a2f74d6331706239a59406d" [label="mkdir{path=/opt}" shape="note"];
  "sha256:14295892959e59712867d3c7a6e8192111e334c3ee9af4cece5848a471423a34" [label="copy{src=/bin/run, dest=/opt/run}" shape="note"];
  "sha256:270f08fbe900451dec9919e66bd011ad27135c91119cfb1a4af33b2282d9990e" [label="sha256:270f08fbe900451dec9919e66bd011ad27135c91119cfb1a4af33b2282d9990e" shape="plaintext"];
  "sha256:c03435a608566fd37ee3a2e0814e84ed1f0fb7cf3bc39d3b64663307709bb7d4" -> "sha256:431d81e96fa2f32e9999c03def763465558306380a93e07c5a36f1933a0f4e33" [label=""];
  "sha256:af6ecd88c272b8bf24ba64470d7bcaa443c98f3d0612f9c2adbe87929f34347e" -> "sha256:431d81e96fa2f32e9999c03def763465558306380a93e07c5a36f1933a0f4e33" [label=""];
  "sha256:431d81e96fa2f32e9999c03def763465558306380a93e07c5a36f1933a0f4e33" -> "sha256:355078ce1b68b3ecf42de71b8f4674f985dcc49504a07cc7494d2fb453913470" [label=""];
  "sha256:355078ce1b68b3ecf42de71b8f4674f985dcc49504a07cc7494d2fb453913470" -> "sha256:305651886d7ba09f1f09324f66ad5af8ecf720884a2f74d6331706239a59406d" [label=""];
  "sha256:305651886d7ba09f1f09324f66ad5af8ecf720884a2f74d6331706239a59406d" -> "sha256:14295892959e59712867d3c7a6e8192111e334c3ee9af4cece5848a471423a34" [label=""];
  "sha256:af6ecd88c272b8bf24ba64470d7bcaa443c98f3d0612f9c2adbe87929f34347e" -> "sha256:14295892959e59712867d3c7a6e8192111e334c3ee9af4cece5848a471423a34" [label=""];
  "sha256:14295892959e59712867d3c7a6e8192111e334c3ee9af4cece5848a471423a34" -> "sha256:270f08fbe900451dec9919e66bd011ad27135c91119cfb1a4af33b2282d9990e" [label=""];
}

