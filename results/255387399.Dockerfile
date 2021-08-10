[app/sources/255387399.Dockerfile]
digraph {
  "sha256:e84a2d9d96a0ed2714459ed4bd85cb3c6b3ba4dc59a7295e59c6f8a196fa2290" [label="docker-image://docker-hub.2gis.ru/microsoft/dotnet:2.1.7-runtime-deps-alpine3.7" shape="ellipse"];
  "sha256:256e17e0a131460c5cfe5f92b47b9e7f8b64249262387720c865864daecf8ca7" [label="mkdir{path=/app}" shape="note"];
  "sha256:16687bbf454bb8906ee58fbd6d6c23ecaa1bae4494edb21f5d501057f656ca8a" [label="local://context" shape="ellipse"];
  "sha256:65fca316e41c39694989bf87faaaeaeb86f010f66d7cdd1058095989bcf23bc8" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:acd456d429e2a6e73de0b2d0f3dd4fedf9fed5b230fdf2971fc323d5165fa504" [label="sha256:acd456d429e2a6e73de0b2d0f3dd4fedf9fed5b230fdf2971fc323d5165fa504" shape="plaintext"];
  "sha256:e84a2d9d96a0ed2714459ed4bd85cb3c6b3ba4dc59a7295e59c6f8a196fa2290" -> "sha256:256e17e0a131460c5cfe5f92b47b9e7f8b64249262387720c865864daecf8ca7" [label=""];
  "sha256:256e17e0a131460c5cfe5f92b47b9e7f8b64249262387720c865864daecf8ca7" -> "sha256:65fca316e41c39694989bf87faaaeaeb86f010f66d7cdd1058095989bcf23bc8" [label=""];
  "sha256:16687bbf454bb8906ee58fbd6d6c23ecaa1bae4494edb21f5d501057f656ca8a" -> "sha256:65fca316e41c39694989bf87faaaeaeb86f010f66d7cdd1058095989bcf23bc8" [label=""];
  "sha256:65fca316e41c39694989bf87faaaeaeb86f010f66d7cdd1058095989bcf23bc8" -> "sha256:acd456d429e2a6e73de0b2d0f3dd4fedf9fed5b230fdf2971fc323d5165fa504" [label=""];
}

