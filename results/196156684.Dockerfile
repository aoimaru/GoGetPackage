[app/sources/196156684.Dockerfile]
digraph {
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:f84867d54e3cee3474d7f47792994094f1c8de16a6c8809bb5f160ce43c7a816" [label="/bin/sh -c npm install --global gulp" shape="box"];
  "sha256:7058f8c463777a98e4d2f84d3fb7b7fce7ad02919c37373cc548f99c2270cfac" [label="/bin/sh -c npm install --global webpack" shape="box"];
  "sha256:1809e365cd14e203453fd91d84b6409195b5fa70d470aa67a9a1cc6de1df5098" [label="/bin/sh -c npm install --global webpack-dev-server" shape="box"];
  "sha256:6966ba54d245c2a47a380cc348c91993782ede83dcc3bbe0887862bc1d0c21f8" [label="sha256:6966ba54d245c2a47a380cc348c91993782ede83dcc3bbe0887862bc1d0c21f8" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:f84867d54e3cee3474d7f47792994094f1c8de16a6c8809bb5f160ce43c7a816" [label=""];
  "sha256:f84867d54e3cee3474d7f47792994094f1c8de16a6c8809bb5f160ce43c7a816" -> "sha256:7058f8c463777a98e4d2f84d3fb7b7fce7ad02919c37373cc548f99c2270cfac" [label=""];
  "sha256:7058f8c463777a98e4d2f84d3fb7b7fce7ad02919c37373cc548f99c2270cfac" -> "sha256:1809e365cd14e203453fd91d84b6409195b5fa70d470aa67a9a1cc6de1df5098" [label=""];
  "sha256:1809e365cd14e203453fd91d84b6409195b5fa70d470aa67a9a1cc6de1df5098" -> "sha256:6966ba54d245c2a47a380cc348c91993782ede83dcc3bbe0887862bc1d0c21f8" [label=""];
}

