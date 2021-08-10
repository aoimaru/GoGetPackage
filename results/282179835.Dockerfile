[app/sources/282179835.Dockerfile]
digraph {
  "sha256:57ded0eacb9063fd6bd4d024164460b6f943717dbb6cd4563e89e5318eca460b" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:5cb9c0a67083b62e436a63b37b4d48d5117b6f68a47cc7bec351aebe37cc896d" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:d921ffa971de80ec1bdf7b648a3f89e815dbd19d1d19e71b24703665007541bb" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:af2d21abed6d6d2268a63c0b596d62747063dbce60f8b55bc111e0882c2e9c45" [label="copy{src=/, dest=/exchange-simulator}" shape="note"];
  "sha256:bd29e30545dc5ad3152fed645c3cd1992462157ecc12fd484c147479805d18ac" [label="mkdir{path=/exchange-simulator}" shape="note"];
  "sha256:792ee96e2e3e8547395eab12ae6de3ad101896bd66a67e877638da142513e36d" [label="sha256:792ee96e2e3e8547395eab12ae6de3ad101896bd66a67e877638da142513e36d" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:5cb9c0a67083b62e436a63b37b4d48d5117b6f68a47cc7bec351aebe37cc896d" [label=""];
  "sha256:57ded0eacb9063fd6bd4d024164460b6f943717dbb6cd4563e89e5318eca460b" -> "sha256:5cb9c0a67083b62e436a63b37b4d48d5117b6f68a47cc7bec351aebe37cc896d" [label=""];
  "sha256:5cb9c0a67083b62e436a63b37b4d48d5117b6f68a47cc7bec351aebe37cc896d" -> "sha256:d921ffa971de80ec1bdf7b648a3f89e815dbd19d1d19e71b24703665007541bb" [label=""];
  "sha256:d921ffa971de80ec1bdf7b648a3f89e815dbd19d1d19e71b24703665007541bb" -> "sha256:af2d21abed6d6d2268a63c0b596d62747063dbce60f8b55bc111e0882c2e9c45" [label=""];
  "sha256:57ded0eacb9063fd6bd4d024164460b6f943717dbb6cd4563e89e5318eca460b" -> "sha256:af2d21abed6d6d2268a63c0b596d62747063dbce60f8b55bc111e0882c2e9c45" [label=""];
  "sha256:af2d21abed6d6d2268a63c0b596d62747063dbce60f8b55bc111e0882c2e9c45" -> "sha256:bd29e30545dc5ad3152fed645c3cd1992462157ecc12fd484c147479805d18ac" [label=""];
  "sha256:bd29e30545dc5ad3152fed645c3cd1992462157ecc12fd484c147479805d18ac" -> "sha256:792ee96e2e3e8547395eab12ae6de3ad101896bd66a67e877638da142513e36d" [label=""];
}

