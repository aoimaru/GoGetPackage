[app/sources/383098473.Dockerfile]
digraph {
  "sha256:1303bdb235c09f8a405f873688292d24ff04a8eeb28fd937a81282cef8c3b709" [label="docker-image://docker.io/library/ruby:2.2-alpine" shape="ellipse"];
  "sha256:19b7a39e12e92b58ec41a880a621f25b77eecc4b7637a37d31bce288af805a08" [label="/bin/sh -c apk --no-cache --update add build-base automake autoconf libtool ruby-dev libc6-compat geoip-dev git" shape="box"];
  "sha256:fac08a3277f19ff9c8f25507b5250c522dccf9066afba9f42dd47c168df78904" [label="mkdir{path=/app}" shape="note"];
  "sha256:8c5788582b4d17a6464b398b67b83bc189c761bec00ecebfdf0b96651c65ee2c" [label="local://context" shape="ellipse"];
  "sha256:5123c985483afb6b387f6e32c55a07c41fa170f582eb29caaf702692e9cdb376" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:76b12f731ea6eae93af9ef86b7fbc771e8723f74413cc0a711987a438bbe36cc" [label="sha256:76b12f731ea6eae93af9ef86b7fbc771e8723f74413cc0a711987a438bbe36cc" shape="plaintext"];
  "sha256:1303bdb235c09f8a405f873688292d24ff04a8eeb28fd937a81282cef8c3b709" -> "sha256:19b7a39e12e92b58ec41a880a621f25b77eecc4b7637a37d31bce288af805a08" [label=""];
  "sha256:19b7a39e12e92b58ec41a880a621f25b77eecc4b7637a37d31bce288af805a08" -> "sha256:fac08a3277f19ff9c8f25507b5250c522dccf9066afba9f42dd47c168df78904" [label=""];
  "sha256:fac08a3277f19ff9c8f25507b5250c522dccf9066afba9f42dd47c168df78904" -> "sha256:5123c985483afb6b387f6e32c55a07c41fa170f582eb29caaf702692e9cdb376" [label=""];
  "sha256:8c5788582b4d17a6464b398b67b83bc189c761bec00ecebfdf0b96651c65ee2c" -> "sha256:5123c985483afb6b387f6e32c55a07c41fa170f582eb29caaf702692e9cdb376" [label=""];
  "sha256:5123c985483afb6b387f6e32c55a07c41fa170f582eb29caaf702692e9cdb376" -> "sha256:76b12f731ea6eae93af9ef86b7fbc771e8723f74413cc0a711987a438bbe36cc" [label=""];
}

