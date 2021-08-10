[app/sources/268702573.Dockerfile]
digraph {
  "sha256:0dd79c2484ab086742bf3538c5fc9fed64362b10a87d1f1e88a6e98227a9cebf" [label="local://context" shape="ellipse"];
  "sha256:5d7aff26ccb30f5d4a228eb5b9b604165a388e522b86ff7292eceb60cef49d0a" [label="copy{src=/server, dest=/server}" shape="note"];
  "sha256:8af571dc3f589f22c132bbb170ae963cb0a80eb0d026e69498c8f76b0d4c32f1" [label="sha256:8af571dc3f589f22c132bbb170ae963cb0a80eb0d026e69498c8f76b0d4c32f1" shape="plaintext"];
  "sha256:0dd79c2484ab086742bf3538c5fc9fed64362b10a87d1f1e88a6e98227a9cebf" -> "sha256:5d7aff26ccb30f5d4a228eb5b9b604165a388e522b86ff7292eceb60cef49d0a" [label=""];
  "sha256:5d7aff26ccb30f5d4a228eb5b9b604165a388e522b86ff7292eceb60cef49d0a" -> "sha256:8af571dc3f589f22c132bbb170ae963cb0a80eb0d026e69498c8f76b0d4c32f1" [label=""];
}

