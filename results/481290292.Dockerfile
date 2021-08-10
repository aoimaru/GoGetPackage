[app/sources/481290292.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:c8d535ed631134a27119f1da50654526d9f973528af13d3c1c61151e9e10e27f" [label="local://context" shape="ellipse"];
  "sha256:83ce491e04a6040c1fa23e8ec24e63b8fdca70ebf5ce34163df543ef175b5ac7" [label="copy{src=/target/*.jar, dest=/app.jar}" shape="note"];
  "sha256:5b983226fb796992f80976b7455930e9b986acae32c175c7d63ae0a57db70279" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:1bbb6d026b3a03db16a230c58df0fab6017d195d95d731b5d65399312fa085c4" [label="copy{src=/wait-for-it.sh, dest=/wait-for-it.sh}" shape="note"];
  "sha256:4e44ac07b33a75840a1f05af0ae52fb39555c0bf383023e0ce46f537ffa0b2d7" [label="/bin/sh -c bash -c 'chmod 777 /wait-for-it.sh'" shape="box"];
  "sha256:d2e0aa990efb110a9216e3644a5dea349dbc207c7f0f9900527d0d56efc4a743" [label="sha256:d2e0aa990efb110a9216e3644a5dea349dbc207c7f0f9900527d0d56efc4a743" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:83ce491e04a6040c1fa23e8ec24e63b8fdca70ebf5ce34163df543ef175b5ac7" [label=""];
  "sha256:c8d535ed631134a27119f1da50654526d9f973528af13d3c1c61151e9e10e27f" -> "sha256:83ce491e04a6040c1fa23e8ec24e63b8fdca70ebf5ce34163df543ef175b5ac7" [label=""];
  "sha256:83ce491e04a6040c1fa23e8ec24e63b8fdca70ebf5ce34163df543ef175b5ac7" -> "sha256:5b983226fb796992f80976b7455930e9b986acae32c175c7d63ae0a57db70279" [label=""];
  "sha256:5b983226fb796992f80976b7455930e9b986acae32c175c7d63ae0a57db70279" -> "sha256:1bbb6d026b3a03db16a230c58df0fab6017d195d95d731b5d65399312fa085c4" [label=""];
  "sha256:c8d535ed631134a27119f1da50654526d9f973528af13d3c1c61151e9e10e27f" -> "sha256:1bbb6d026b3a03db16a230c58df0fab6017d195d95d731b5d65399312fa085c4" [label=""];
  "sha256:1bbb6d026b3a03db16a230c58df0fab6017d195d95d731b5d65399312fa085c4" -> "sha256:4e44ac07b33a75840a1f05af0ae52fb39555c0bf383023e0ce46f537ffa0b2d7" [label=""];
  "sha256:4e44ac07b33a75840a1f05af0ae52fb39555c0bf383023e0ce46f537ffa0b2d7" -> "sha256:d2e0aa990efb110a9216e3644a5dea349dbc207c7f0f9900527d0d56efc4a743" [label=""];
}

