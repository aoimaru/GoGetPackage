[app/sources/251332223.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:72f9b5163f07f0cb02aab84485e0d1af563f66a74f5f6ab00f01d92cc38dc067" [label="/bin/sh -c apk --update add nodejs" shape="box"];
  "sha256:7416072fb6e42eb7b040fb2903e36a88bf091aa9c814b94f4209e78aff4219c3" [label="mkdir{path=/root}" shape="note"];
  "sha256:c09cd681d8f36cc2c9d89a695ac04234fde4747befdd0ccc55e2299695a79d0f" [label="local://context" shape="ellipse"];
  "sha256:7ee8bbc6947a5395c41c3e366c394ce8d90de8c5838b8d57b2fb54d53f74c0f4" [label="copy{src=/package.json, dest=/root/package.json}" shape="note"];
  "sha256:742c20ec923d3a8b964c4d0bba6d1cd2ba193c873380f147bcfd7b6fe842737a" [label="/bin/sh -c npm i" shape="box"];
  "sha256:d36f8d1a25d0ea0374d155d448535b2a3b64222ac355e4bf5a6d337cc786a64f" [label="copy{src=/index.js, dest=/root/index.js}" shape="note"];
  "sha256:9b838e7f27c48f767874d0a550d7ad5227b39876363ec3cd591d2e0eada218aa" [label="sha256:9b838e7f27c48f767874d0a550d7ad5227b39876363ec3cd591d2e0eada218aa" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:72f9b5163f07f0cb02aab84485e0d1af563f66a74f5f6ab00f01d92cc38dc067" [label=""];
  "sha256:72f9b5163f07f0cb02aab84485e0d1af563f66a74f5f6ab00f01d92cc38dc067" -> "sha256:7416072fb6e42eb7b040fb2903e36a88bf091aa9c814b94f4209e78aff4219c3" [label=""];
  "sha256:7416072fb6e42eb7b040fb2903e36a88bf091aa9c814b94f4209e78aff4219c3" -> "sha256:7ee8bbc6947a5395c41c3e366c394ce8d90de8c5838b8d57b2fb54d53f74c0f4" [label=""];
  "sha256:c09cd681d8f36cc2c9d89a695ac04234fde4747befdd0ccc55e2299695a79d0f" -> "sha256:7ee8bbc6947a5395c41c3e366c394ce8d90de8c5838b8d57b2fb54d53f74c0f4" [label=""];
  "sha256:7ee8bbc6947a5395c41c3e366c394ce8d90de8c5838b8d57b2fb54d53f74c0f4" -> "sha256:742c20ec923d3a8b964c4d0bba6d1cd2ba193c873380f147bcfd7b6fe842737a" [label=""];
  "sha256:742c20ec923d3a8b964c4d0bba6d1cd2ba193c873380f147bcfd7b6fe842737a" -> "sha256:d36f8d1a25d0ea0374d155d448535b2a3b64222ac355e4bf5a6d337cc786a64f" [label=""];
  "sha256:c09cd681d8f36cc2c9d89a695ac04234fde4747befdd0ccc55e2299695a79d0f" -> "sha256:d36f8d1a25d0ea0374d155d448535b2a3b64222ac355e4bf5a6d337cc786a64f" [label=""];
  "sha256:d36f8d1a25d0ea0374d155d448535b2a3b64222ac355e4bf5a6d337cc786a64f" -> "sha256:9b838e7f27c48f767874d0a550d7ad5227b39876363ec3cd591d2e0eada218aa" [label=""];
}

