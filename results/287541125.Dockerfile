[app/sources/287541125.Dockerfile]
digraph {
  "sha256:54205101875b763b927d046d0215acf17ba2924aa36655911c6b3d250e843e5d" [label="local://context" shape="ellipse"];
  "sha256:ef90596fd57666da52349de91830e40dece527ff3926ac47547456fb49fdb6e5" [label="docker-image://docker.io/library/ruby:2.5.1-alpine3.7" shape="ellipse"];
  "sha256:7627c6041749bcbe2b0bd06d767c9f0aa2561b7b79b5bc7838b9170e9d167efe" [label="/bin/sh -c apk --no-cache add curl ${ADDITIONAL_PACKAGE}     && echo \"Pulling watchdog binary from Github.\"     && curl -sSL https://github.com/openfaas/faas/releases/download/0.13.0/fwatchdog > /usr/bin/fwatchdog     && chmod +x /usr/bin/fwatchdog     && apk del curl --no-cache" shape="box"];
  "sha256:ae17ca253993030727651b9f238fb1bbac04d61a06cc1b1260db249e44f6d394" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:f935adbd9002c04f5217752e46b8dfd1dac9420d1db18fb2a0e545f44f5df977" [label="copy{src=/Gemfile, dest=/home/app/}" shape="note"];
  "sha256:a57ec16929d42d56b05a7a31d5483b2a75aacfc2a9ec3cab5c6241be54a88a1e" [label="copy{src=/index.rb, dest=/home/app/}" shape="note"];
  "sha256:c03a5b262a58e2ba0d0714e0d0d903bd0af07331e1471793ff577886306306b7" [label="copy{src=/function, dest=/home/app/function}" shape="note"];
  "sha256:b049c1d1b859450f88f7b426335b90cdab4bd3ba4746927f03f934700187d725" [label="/bin/sh -c bundle install   && mkdir -p /home/app/function" shape="box"];
  "sha256:01e485970c14dd4b94c8c17b9896249c10aa044b8b1f420822a34907b238d871" [label="mkdir{path=/home/app/function}" shape="note"];
  "sha256:09326167595286bda80908d33f8383e91b159a827163883fdc70d8553a8ea17c" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:14aa9dd4e84072ee3698c8f5395e29888be37e23220adf21c096d1119ef82333" [label="/bin/sh -c addgroup -S app   && adduser app -S -G app" shape="box"];
  "sha256:994c40068f1eb307a1e110718365a436c779169167b9a35d843a5e3f08139e84" [label="/bin/sh -c chown app:app -R /home/app" shape="box"];
  "sha256:9a92ff152c0ff467020eb393f0ae808e3e8d97b16e3361464dc7ee450ccb7ac7" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:80e2c4b5e96294e572515141edc9135f1a44ea455bedd1a1805858a102ebdbfc" [label="sha256:80e2c4b5e96294e572515141edc9135f1a44ea455bedd1a1805858a102ebdbfc" shape="plaintext"];
  "sha256:ef90596fd57666da52349de91830e40dece527ff3926ac47547456fb49fdb6e5" -> "sha256:7627c6041749bcbe2b0bd06d767c9f0aa2561b7b79b5bc7838b9170e9d167efe" [label=""];
  "sha256:7627c6041749bcbe2b0bd06d767c9f0aa2561b7b79b5bc7838b9170e9d167efe" -> "sha256:ae17ca253993030727651b9f238fb1bbac04d61a06cc1b1260db249e44f6d394" [label=""];
  "sha256:ae17ca253993030727651b9f238fb1bbac04d61a06cc1b1260db249e44f6d394" -> "sha256:f935adbd9002c04f5217752e46b8dfd1dac9420d1db18fb2a0e545f44f5df977" [label=""];
  "sha256:54205101875b763b927d046d0215acf17ba2924aa36655911c6b3d250e843e5d" -> "sha256:f935adbd9002c04f5217752e46b8dfd1dac9420d1db18fb2a0e545f44f5df977" [label=""];
  "sha256:f935adbd9002c04f5217752e46b8dfd1dac9420d1db18fb2a0e545f44f5df977" -> "sha256:a57ec16929d42d56b05a7a31d5483b2a75aacfc2a9ec3cab5c6241be54a88a1e" [label=""];
  "sha256:54205101875b763b927d046d0215acf17ba2924aa36655911c6b3d250e843e5d" -> "sha256:a57ec16929d42d56b05a7a31d5483b2a75aacfc2a9ec3cab5c6241be54a88a1e" [label=""];
  "sha256:a57ec16929d42d56b05a7a31d5483b2a75aacfc2a9ec3cab5c6241be54a88a1e" -> "sha256:c03a5b262a58e2ba0d0714e0d0d903bd0af07331e1471793ff577886306306b7" [label=""];
  "sha256:54205101875b763b927d046d0215acf17ba2924aa36655911c6b3d250e843e5d" -> "sha256:c03a5b262a58e2ba0d0714e0d0d903bd0af07331e1471793ff577886306306b7" [label=""];
  "sha256:c03a5b262a58e2ba0d0714e0d0d903bd0af07331e1471793ff577886306306b7" -> "sha256:b049c1d1b859450f88f7b426335b90cdab4bd3ba4746927f03f934700187d725" [label=""];
  "sha256:b049c1d1b859450f88f7b426335b90cdab4bd3ba4746927f03f934700187d725" -> "sha256:01e485970c14dd4b94c8c17b9896249c10aa044b8b1f420822a34907b238d871" [label=""];
  "sha256:01e485970c14dd4b94c8c17b9896249c10aa044b8b1f420822a34907b238d871" -> "sha256:09326167595286bda80908d33f8383e91b159a827163883fdc70d8553a8ea17c" [label=""];
  "sha256:09326167595286bda80908d33f8383e91b159a827163883fdc70d8553a8ea17c" -> "sha256:14aa9dd4e84072ee3698c8f5395e29888be37e23220adf21c096d1119ef82333" [label=""];
  "sha256:14aa9dd4e84072ee3698c8f5395e29888be37e23220adf21c096d1119ef82333" -> "sha256:994c40068f1eb307a1e110718365a436c779169167b9a35d843a5e3f08139e84" [label=""];
  "sha256:994c40068f1eb307a1e110718365a436c779169167b9a35d843a5e3f08139e84" -> "sha256:9a92ff152c0ff467020eb393f0ae808e3e8d97b16e3361464dc7ee450ccb7ac7" [label=""];
  "sha256:9a92ff152c0ff467020eb393f0ae808e3e8d97b16e3361464dc7ee450ccb7ac7" -> "sha256:80e2c4b5e96294e572515141edc9135f1a44ea455bedd1a1805858a102ebdbfc" [label=""];
}

