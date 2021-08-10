[app/sources/255387318.Dockerfile]
digraph {
  "sha256:77904e2c26273a5d89ab017a8a9fa90ece36d7c455f694eeaccc94dd599debfa" [label="docker-image://docker-hub.2gis.ru/microsoft/dotnet:2.0.9-runtime-deps" shape="ellipse"];
  "sha256:b815a124d48761d84ffc19b85602b35f28e75dcf802e0d23c9fd1c1cb983e6fc" [label="mkdir{path=/app}" shape="note"];
  "sha256:3e84819e9557d862324c4fedad70cd20fcfbfc8401ccf96ca5fa7143263362c1" [label="local://context" shape="ellipse"];
  "sha256:45b3791d26c1b24a48a58c226be427882f2ee0b378b5d3fc36401f63cb373f93" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:f225cbbb58274280e3e11970ae7fab643f99bdf6718fd2ab8b3de70f85fe188b" [label="sha256:f225cbbb58274280e3e11970ae7fab643f99bdf6718fd2ab8b3de70f85fe188b" shape="plaintext"];
  "sha256:77904e2c26273a5d89ab017a8a9fa90ece36d7c455f694eeaccc94dd599debfa" -> "sha256:b815a124d48761d84ffc19b85602b35f28e75dcf802e0d23c9fd1c1cb983e6fc" [label=""];
  "sha256:b815a124d48761d84ffc19b85602b35f28e75dcf802e0d23c9fd1c1cb983e6fc" -> "sha256:45b3791d26c1b24a48a58c226be427882f2ee0b378b5d3fc36401f63cb373f93" [label=""];
  "sha256:3e84819e9557d862324c4fedad70cd20fcfbfc8401ccf96ca5fa7143263362c1" -> "sha256:45b3791d26c1b24a48a58c226be427882f2ee0b378b5d3fc36401f63cb373f93" [label=""];
  "sha256:45b3791d26c1b24a48a58c226be427882f2ee0b378b5d3fc36401f63cb373f93" -> "sha256:f225cbbb58274280e3e11970ae7fab643f99bdf6718fd2ab8b3de70f85fe188b" [label=""];
}

