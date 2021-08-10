[app/sources/320100160.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:06afd6aff8131e835ac8483908edf9d8ba58902f1bd27f84d2d427d27ac300ef" [label="/bin/sh -c apt-get update && apt-get install -y       chromium       chromium-l10n       fonts-liberation       fonts-roboto       hicolor-icon-theme       libcanberra-gtk-module       libexif-dev       libgl1-mesa-dri       libgl1-mesa-glx       libpango1.0-0       libv4l-0       fonts-symbola       --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && mkdir -p /etc/chromium.d/     && /bin/echo -e 'export GOOGLE_API_KEY=\"AIzaSyCkfPOPZXDKNn8hhgu3JrA62wIgC93d44k\"\\nexport GOOGLE_DEFAULT_CLIENT_ID=\"811574891467.apps.googleusercontent.com\"\\nexport GOOGLE_DEFAULT_CLIENT_SECRET=\"kdloedMFGdGla2P1zacGjAQh\"' > /etc/chromium.d/googleapikeys" shape="box"];
  "sha256:ae0344dc9b0df7884d8639b1c5fe06e1935c38a50333739413715b8102a169a8" [label="/bin/sh -c buildDeps=' \t\tca-certificates \t\tcurl \t' \t&& set -x \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \t&& rm -rf /var/lib/apt/lists/* \t&& curl -sSL \"https://dl.google.com/linux/direct/google-talkplugin_current_amd64.deb\" -o /tmp/google-talkplugin-amd64.deb \t&& dpkg -i /tmp/google-talkplugin-amd64.deb \t&& rm -rf /tmp/*.deb \t&& apt-get purge -y --auto-remove $buildDeps" shape="box"];
  "sha256:c467977d1b2dd3f79b9c97e868c5805d68a7aa16309d9cabcae74edf91e46661" [label="/bin/sh -c groupadd -r chromium && useradd -r -g chromium -G audio,video chromium     && mkdir -p /home/chromium/Downloads && chown -R chromium:chromium /home/chromium" shape="box"];
  "sha256:f2f962b33936d98bcda6d2f799a52940ac81a44f682b4ecce659c129cc076dc6" [label="sha256:f2f962b33936d98bcda6d2f799a52940ac81a44f682b4ecce659c129cc076dc6" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:06afd6aff8131e835ac8483908edf9d8ba58902f1bd27f84d2d427d27ac300ef" [label=""];
  "sha256:06afd6aff8131e835ac8483908edf9d8ba58902f1bd27f84d2d427d27ac300ef" -> "sha256:ae0344dc9b0df7884d8639b1c5fe06e1935c38a50333739413715b8102a169a8" [label=""];
  "sha256:ae0344dc9b0df7884d8639b1c5fe06e1935c38a50333739413715b8102a169a8" -> "sha256:c467977d1b2dd3f79b9c97e868c5805d68a7aa16309d9cabcae74edf91e46661" [label=""];
  "sha256:c467977d1b2dd3f79b9c97e868c5805d68a7aa16309d9cabcae74edf91e46661" -> "sha256:f2f962b33936d98bcda6d2f799a52940ac81a44f682b4ecce659c129cc076dc6" [label=""];
}

