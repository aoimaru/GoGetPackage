[app/sources/315334290.Dockerfile]
digraph {
  "sha256:73a811f150784ce790ea928dc0ff4b45a386e62374d4cd8cdf5666ba7572b688" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:2cf991de4bee0af63ea2dcd14338d1a5824eadd1402da8301462716acf4eeaab" [label="copy{src=/@project.name@.jar, dest=/@project.name@.jar}" shape="note"];
  "sha256:474b9a0bbf4bd606b68880795eef54cc3c84b10ac958ef488762bb08184c8dda" [label="/bin/sh -c sh -c 'touch /@project.name@.jar'" shape="box"];
  "sha256:a505e5abfc6dc0e0f3c9b1620091f942f2000ae80b7268789a4399c5ae7518fc" [label="sha256:a505e5abfc6dc0e0f3c9b1620091f942f2000ae80b7268789a4399c5ae7518fc" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:2cf991de4bee0af63ea2dcd14338d1a5824eadd1402da8301462716acf4eeaab" [label=""];
  "sha256:73a811f150784ce790ea928dc0ff4b45a386e62374d4cd8cdf5666ba7572b688" -> "sha256:2cf991de4bee0af63ea2dcd14338d1a5824eadd1402da8301462716acf4eeaab" [label=""];
  "sha256:2cf991de4bee0af63ea2dcd14338d1a5824eadd1402da8301462716acf4eeaab" -> "sha256:474b9a0bbf4bd606b68880795eef54cc3c84b10ac958ef488762bb08184c8dda" [label=""];
  "sha256:474b9a0bbf4bd606b68880795eef54cc3c84b10ac958ef488762bb08184c8dda" -> "sha256:a505e5abfc6dc0e0f3c9b1620091f942f2000ae80b7268789a4399c5ae7518fc" [label=""];
}

