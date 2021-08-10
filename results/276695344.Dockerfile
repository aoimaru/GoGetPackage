[app/sources/276695344.Dockerfile]
digraph {
  "sha256:0081581e6e7a28ce95f9a057c069fdc25ed4314f054de35b27109c28c9b23229" [label="docker-image://docker.io/microsoft/aspnetcore:1.1.2" shape="ellipse"];
  "sha256:d9c08491d33ee1f9f35ba5db822164fa3986de32f7a56325d307967c963e5ac9" [label="mkdir{path=/app}" shape="note"];
  "sha256:e3f660e95b08fc1a7dc096ca2108293e7bcdaa5867b2275a2fe7b5706a23d83f" [label="local://context" shape="ellipse"];
  "sha256:325c2624a3775bfd7ebfa667a374b156055f3aa6d22f7e9b822bb1a10a8b0c59" [label="copy{src=/obj/Docker/publish, dest=/app/}" shape="note"];
  "sha256:4dcc8ada41d58a4f7c920b645438351baf7f82d664200f63b60bd5ea5df0e464" [label="sha256:4dcc8ada41d58a4f7c920b645438351baf7f82d664200f63b60bd5ea5df0e464" shape="plaintext"];
  "sha256:0081581e6e7a28ce95f9a057c069fdc25ed4314f054de35b27109c28c9b23229" -> "sha256:d9c08491d33ee1f9f35ba5db822164fa3986de32f7a56325d307967c963e5ac9" [label=""];
  "sha256:d9c08491d33ee1f9f35ba5db822164fa3986de32f7a56325d307967c963e5ac9" -> "sha256:325c2624a3775bfd7ebfa667a374b156055f3aa6d22f7e9b822bb1a10a8b0c59" [label=""];
  "sha256:e3f660e95b08fc1a7dc096ca2108293e7bcdaa5867b2275a2fe7b5706a23d83f" -> "sha256:325c2624a3775bfd7ebfa667a374b156055f3aa6d22f7e9b822bb1a10a8b0c59" [label=""];
  "sha256:325c2624a3775bfd7ebfa667a374b156055f3aa6d22f7e9b822bb1a10a8b0c59" -> "sha256:4dcc8ada41d58a4f7c920b645438351baf7f82d664200f63b60bd5ea5df0e464" [label=""];
}

