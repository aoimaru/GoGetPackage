[app/sources/174139586.Dockerfile]
digraph {
  "sha256:3947b2f27269c97e17899793f70ceafaedaee66e8b53ea1b4b800c45e1aa28fe" [label="local://context" shape="ellipse"];
  "sha256:e947c46234a5a73483c363378ff82890beb991d40768669c0a07354bbc8dae45" [label="docker-image://docker.io/williamyeh/ansible:alpine3-onbuild" shape="ellipse"];
  "sha256:59e88afc954ba4b1125e11a8e271342edd1a06c823918891f8cc2fc19b5a74f5" [label="/bin/sh -c apk add sudo" shape="box"];
  "sha256:489792851e5bb99dfd6ebe8047a4c2ef048d53c54a7c1bb901884b84d0bbdae8" [label="/bin/sh -c ansible-playbook-wrapper --extra-vars \"nginx_use_service=false\"" shape="box"];
  "sha256:df6ffc9188c62069ab10da58fa2bbcac80a978c15b64405a4eeaf3a684dfd669" [label="/bin/sh -c echo \"===> Installing curl for testing purpose...\"  &&     apk add curl" shape="box"];
  "sha256:d64d87f4adcc52bcc352c6ee0d9b2df066a3eff0ff3b49f7b42795552769b075" [label="/bin/sh -c echo \"===> Deploying nginx_status.conf to server for testing...\"   &&     echo -e \"server {\\n    listen 80;\\n    listen [::]:80;\\n\\n    server_name _;\\n\\n    location /nginx_status {\\n        # Turn on nginx stats\\n        stub_status on;\\n    }\\n}\"       > /etc/nginx/conf.d/nginx_status.conf" shape="box"];
  "sha256:6a1207741295b689b22e789073bec56bab489d365e4013ee21a76628c3c89d15" [label="copy{src=/test/run-test-alpine.sh, dest=/usr/local/bin/run-test.sh}" shape="note"];
  "sha256:e9a5e85f074871de2c856e30d0cf9f11e87b363c70b109d7deb235e10ad65149" [label="sha256:e9a5e85f074871de2c856e30d0cf9f11e87b363c70b109d7deb235e10ad65149" shape="plaintext"];
  "sha256:e947c46234a5a73483c363378ff82890beb991d40768669c0a07354bbc8dae45" -> "sha256:59e88afc954ba4b1125e11a8e271342edd1a06c823918891f8cc2fc19b5a74f5" [label=""];
  "sha256:59e88afc954ba4b1125e11a8e271342edd1a06c823918891f8cc2fc19b5a74f5" -> "sha256:489792851e5bb99dfd6ebe8047a4c2ef048d53c54a7c1bb901884b84d0bbdae8" [label=""];
  "sha256:489792851e5bb99dfd6ebe8047a4c2ef048d53c54a7c1bb901884b84d0bbdae8" -> "sha256:df6ffc9188c62069ab10da58fa2bbcac80a978c15b64405a4eeaf3a684dfd669" [label=""];
  "sha256:df6ffc9188c62069ab10da58fa2bbcac80a978c15b64405a4eeaf3a684dfd669" -> "sha256:d64d87f4adcc52bcc352c6ee0d9b2df066a3eff0ff3b49f7b42795552769b075" [label=""];
  "sha256:d64d87f4adcc52bcc352c6ee0d9b2df066a3eff0ff3b49f7b42795552769b075" -> "sha256:6a1207741295b689b22e789073bec56bab489d365e4013ee21a76628c3c89d15" [label=""];
  "sha256:3947b2f27269c97e17899793f70ceafaedaee66e8b53ea1b4b800c45e1aa28fe" -> "sha256:6a1207741295b689b22e789073bec56bab489d365e4013ee21a76628c3c89d15" [label=""];
  "sha256:6a1207741295b689b22e789073bec56bab489d365e4013ee21a76628c3c89d15" -> "sha256:e9a5e85f074871de2c856e30d0cf9f11e87b363c70b109d7deb235e10ad65149" [label=""];
}

