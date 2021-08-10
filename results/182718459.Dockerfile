[app/sources/182718459.Dockerfile]
digraph {
  "sha256:36e51a733781e30fb6f52e80749783dd3418ac284cab43383317ce305bf18269" [label="local://context" shape="ellipse"];
  "sha256:28728d93c47d9aa4243e3d0a47606d598f2300f987e5794166d17aea36c1d1a6" [label="copy{src=/bin/crawler, dest=/}" shape="note"];
  "sha256:83ec0f6c29fb44bf0b2b959fd5c8a2cbbf9d45de2eb3e961c73e0f427ea8dff1" [label="sha256:83ec0f6c29fb44bf0b2b959fd5c8a2cbbf9d45de2eb3e961c73e0f427ea8dff1" shape="plaintext"];
  "sha256:36e51a733781e30fb6f52e80749783dd3418ac284cab43383317ce305bf18269" -> "sha256:28728d93c47d9aa4243e3d0a47606d598f2300f987e5794166d17aea36c1d1a6" [label=""];
  "sha256:28728d93c47d9aa4243e3d0a47606d598f2300f987e5794166d17aea36c1d1a6" -> "sha256:83ec0f6c29fb44bf0b2b959fd5c8a2cbbf9d45de2eb3e961c73e0f427ea8dff1" [label=""];
}

