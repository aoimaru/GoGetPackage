[app/sources/223528306.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:7cb2b6f29224e2db6987dd0bcda6eba296cc81fc26eb43d1a0eedcd2cb234a31" [label="/bin/sh -c apk add bash" shape="box"];
  "sha256:465f0dc710c20fbc7d7581c27d79282dab76c06547e45d8782b9c2ddd01c2926" [label="local://context" shape="ellipse"];
  "sha256:6aca83df670fce885f4a5bc5b7400fd9e5686e6505303e93e5b50d13728ce157" [label="copy{src=/bin/podium-linux-x86_64, dest=/go/bin/podium}" shape="note"];
  "sha256:183d92471e07c8507a1ec99b06f71a46be08d627542ea6d16732d9c64f193edd" [label="/bin/sh -c chmod +x /go/bin/podium" shape="box"];
  "sha256:f09a3ab34bdcdeabf24bfba4de2708ce0877b635695bef698f874e230c2ef3bb" [label="/bin/sh -c mkdir -p /home/podium/" shape="box"];
  "sha256:35f4b8c2f44830ba8fee5cd4e31716dbe879b81b427ffee2426f3ae765d629dd" [label="copy{src=/config/default.yaml, dest=/home/podium/default.yaml}" shape="note"];
  "sha256:ac1879ac2cfab57841b23183b86e5e79ebecda0e4a6e509c7da50aa697e85be5" [label="sha256:ac1879ac2cfab57841b23183b86e5e79ebecda0e4a6e509c7da50aa697e85be5" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:7cb2b6f29224e2db6987dd0bcda6eba296cc81fc26eb43d1a0eedcd2cb234a31" [label=""];
  "sha256:7cb2b6f29224e2db6987dd0bcda6eba296cc81fc26eb43d1a0eedcd2cb234a31" -> "sha256:6aca83df670fce885f4a5bc5b7400fd9e5686e6505303e93e5b50d13728ce157" [label=""];
  "sha256:465f0dc710c20fbc7d7581c27d79282dab76c06547e45d8782b9c2ddd01c2926" -> "sha256:6aca83df670fce885f4a5bc5b7400fd9e5686e6505303e93e5b50d13728ce157" [label=""];
  "sha256:6aca83df670fce885f4a5bc5b7400fd9e5686e6505303e93e5b50d13728ce157" -> "sha256:183d92471e07c8507a1ec99b06f71a46be08d627542ea6d16732d9c64f193edd" [label=""];
  "sha256:183d92471e07c8507a1ec99b06f71a46be08d627542ea6d16732d9c64f193edd" -> "sha256:f09a3ab34bdcdeabf24bfba4de2708ce0877b635695bef698f874e230c2ef3bb" [label=""];
  "sha256:f09a3ab34bdcdeabf24bfba4de2708ce0877b635695bef698f874e230c2ef3bb" -> "sha256:35f4b8c2f44830ba8fee5cd4e31716dbe879b81b427ffee2426f3ae765d629dd" [label=""];
  "sha256:465f0dc710c20fbc7d7581c27d79282dab76c06547e45d8782b9c2ddd01c2926" -> "sha256:35f4b8c2f44830ba8fee5cd4e31716dbe879b81b427ffee2426f3ae765d629dd" [label=""];
  "sha256:35f4b8c2f44830ba8fee5cd4e31716dbe879b81b427ffee2426f3ae765d629dd" -> "sha256:ac1879ac2cfab57841b23183b86e5e79ebecda0e4a6e509c7da50aa697e85be5" [label=""];
}

