[app/sources/431434217.Dockerfile]
digraph {
  "sha256:918ae20c3089f1df375eb6f40dffb54c49b21f8c8d4e1fed9c32c2449198d9f6" [label="local://context" shape="ellipse"];
  "sha256:9f731a88ea990f08fad7ec666b68c7e11634d619cee1eb59d672618993f1544c" [label="copy{src=/hello, dest=/}" shape="note"];
  "sha256:695ff509238753a7ace9234370eafcd6fc0dc9a4896f8a1a4f25ee286352806f" [label="sha256:695ff509238753a7ace9234370eafcd6fc0dc9a4896f8a1a4f25ee286352806f" shape="plaintext"];
  "sha256:918ae20c3089f1df375eb6f40dffb54c49b21f8c8d4e1fed9c32c2449198d9f6" -> "sha256:9f731a88ea990f08fad7ec666b68c7e11634d619cee1eb59d672618993f1544c" [label=""];
  "sha256:9f731a88ea990f08fad7ec666b68c7e11634d619cee1eb59d672618993f1544c" -> "sha256:695ff509238753a7ace9234370eafcd6fc0dc9a4896f8a1a4f25ee286352806f" [label=""];
}

