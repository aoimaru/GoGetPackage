[app/sources/476376029.Dockerfile]
digraph {
  "sha256:62b743bc90c34b5de33fb221e56ca0586f664174ed727b600f1d373c5c6bce3c" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:2d025a4f5b778345e8b122709afc4ac8655bb7873590a980fbb9e54a236f6ef9" [label="copy{src=/*.jar, dest=/app.jar}" shape="note"];
  "sha256:13e4abce75fe374e2abd454524e6a9e2d1e0686c7fb21928ad3e5e64d36cb3b0" [label="copy{src=/wait-for-it.sh, dest=/wait-for-it.sh}" shape="note"];
  "sha256:cb5a76c5e979e61071a48004477266ee5f1ef290a5f629cc9cbfc36b3b2a489c" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:265c459704d39fc0b7db89c30069e8ddee52523d0862150e7f9b7037f59fc957" [label="/bin/sh -c bash -c 'chmod 777 /wait-for-it.sh'" shape="box"];
  "sha256:386eb59770ee0d7012965941c11004c030857feb73c81dcbaf9b7138e8ffe9c6" [label="sha256:386eb59770ee0d7012965941c11004c030857feb73c81dcbaf9b7138e8ffe9c6" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:2d025a4f5b778345e8b122709afc4ac8655bb7873590a980fbb9e54a236f6ef9" [label=""];
  "sha256:62b743bc90c34b5de33fb221e56ca0586f664174ed727b600f1d373c5c6bce3c" -> "sha256:2d025a4f5b778345e8b122709afc4ac8655bb7873590a980fbb9e54a236f6ef9" [label=""];
  "sha256:2d025a4f5b778345e8b122709afc4ac8655bb7873590a980fbb9e54a236f6ef9" -> "sha256:13e4abce75fe374e2abd454524e6a9e2d1e0686c7fb21928ad3e5e64d36cb3b0" [label=""];
  "sha256:62b743bc90c34b5de33fb221e56ca0586f664174ed727b600f1d373c5c6bce3c" -> "sha256:13e4abce75fe374e2abd454524e6a9e2d1e0686c7fb21928ad3e5e64d36cb3b0" [label=""];
  "sha256:13e4abce75fe374e2abd454524e6a9e2d1e0686c7fb21928ad3e5e64d36cb3b0" -> "sha256:cb5a76c5e979e61071a48004477266ee5f1ef290a5f629cc9cbfc36b3b2a489c" [label=""];
  "sha256:cb5a76c5e979e61071a48004477266ee5f1ef290a5f629cc9cbfc36b3b2a489c" -> "sha256:265c459704d39fc0b7db89c30069e8ddee52523d0862150e7f9b7037f59fc957" [label=""];
  "sha256:265c459704d39fc0b7db89c30069e8ddee52523d0862150e7f9b7037f59fc957" -> "sha256:386eb59770ee0d7012965941c11004c030857feb73c81dcbaf9b7138e8ffe9c6" [label=""];
}

