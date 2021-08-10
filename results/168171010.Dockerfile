[app/sources/168171010.Dockerfile]
digraph {
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" [label="docker-image://docker.io/dockerfile/nodejs:latest" shape="ellipse"];
  "sha256:da9a40a392690e55855c634518c61eb879425eb32cd7dafd6765027a0f0c472d" [label="/bin/sh -c apt-get update && apt-get install -y -f libzmq3 libzmq3-dev" shape="box"];
  "sha256:ddcf42a0c3382a89d5fe96c3963f9fe785ecad72fc8d644a06b1e3293b4f9c88" [label="mkdir{path=/relay/web}" shape="note"];
  "sha256:640f03cd077ff20a9777c0c68d28d945822675f20682b59e2b5d79d8128e8fe5" [label="local://context" shape="ellipse"];
  "sha256:9b82a4972e98b48346e57705707a85b601fc551e17ec258f1355af43082873c4" [label="copy{src=/package.json, dest=/relay/web/}" shape="note"];
  "sha256:fc67c5e67d3510aa80a27d5a301a987691600803cce2481882bd06ec38850063" [label="/bin/sh -c npm install" shape="box"];
  "sha256:696d4e49dccae6125f1cd0cdbc4c28660c96a4a15003db969f8bba0ca764d3ae" [label="copy{src=/src, dest=/relay/web/src/}" shape="note"];
  "sha256:2e57132ad6f736875dfab08fb3d47e0c66173fb7aaa4dbe1284e60f9845cb977" [label="copy{src=/vendor, dest=/relay/web/vendor/}" shape="note"];
  "sha256:9d08cb216760ac563d6b733ab29271beca54aa85131b62aeebced5d2b3e042b4" [label="sha256:9d08cb216760ac563d6b733ab29271beca54aa85131b62aeebced5d2b3e042b4" shape="plaintext"];
  "sha256:082aaa850a55bda5bf9d7ecdbf6bd4591ed314bc76e426fa0e605d2c321141b4" -> "sha256:da9a40a392690e55855c634518c61eb879425eb32cd7dafd6765027a0f0c472d" [label=""];
  "sha256:da9a40a392690e55855c634518c61eb879425eb32cd7dafd6765027a0f0c472d" -> "sha256:ddcf42a0c3382a89d5fe96c3963f9fe785ecad72fc8d644a06b1e3293b4f9c88" [label=""];
  "sha256:ddcf42a0c3382a89d5fe96c3963f9fe785ecad72fc8d644a06b1e3293b4f9c88" -> "sha256:9b82a4972e98b48346e57705707a85b601fc551e17ec258f1355af43082873c4" [label=""];
  "sha256:640f03cd077ff20a9777c0c68d28d945822675f20682b59e2b5d79d8128e8fe5" -> "sha256:9b82a4972e98b48346e57705707a85b601fc551e17ec258f1355af43082873c4" [label=""];
  "sha256:9b82a4972e98b48346e57705707a85b601fc551e17ec258f1355af43082873c4" -> "sha256:fc67c5e67d3510aa80a27d5a301a987691600803cce2481882bd06ec38850063" [label=""];
  "sha256:fc67c5e67d3510aa80a27d5a301a987691600803cce2481882bd06ec38850063" -> "sha256:696d4e49dccae6125f1cd0cdbc4c28660c96a4a15003db969f8bba0ca764d3ae" [label=""];
  "sha256:640f03cd077ff20a9777c0c68d28d945822675f20682b59e2b5d79d8128e8fe5" -> "sha256:696d4e49dccae6125f1cd0cdbc4c28660c96a4a15003db969f8bba0ca764d3ae" [label=""];
  "sha256:696d4e49dccae6125f1cd0cdbc4c28660c96a4a15003db969f8bba0ca764d3ae" -> "sha256:2e57132ad6f736875dfab08fb3d47e0c66173fb7aaa4dbe1284e60f9845cb977" [label=""];
  "sha256:640f03cd077ff20a9777c0c68d28d945822675f20682b59e2b5d79d8128e8fe5" -> "sha256:2e57132ad6f736875dfab08fb3d47e0c66173fb7aaa4dbe1284e60f9845cb977" [label=""];
  "sha256:2e57132ad6f736875dfab08fb3d47e0c66173fb7aaa4dbe1284e60f9845cb977" -> "sha256:9d08cb216760ac563d6b733ab29271beca54aa85131b62aeebced5d2b3e042b4" [label=""];
}

