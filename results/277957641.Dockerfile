[app/sources/277957641.Dockerfile]
digraph {
  "sha256:fc437ea01e510f7717f71435b1f4044ab88371b0fef6080ba1b2d2131085a880" [label="local://context" shape="ellipse"];
  "sha256:da19f787a4c0a3fcc5df66e26b87bb79b9d84bc5ce26ab37ca82a8b26f56e6a2" [label="docker-image://docker.io/library/ubuntu:artful" shape="ellipse"];
  "sha256:ef3c6e9103cca9157dc8e4917ac3ae65d0d10b35c0ed0fc5cd54807ef90c8c8b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     libssl1.0.0     curl     bsdmainutils     awscli     g++-7   && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7   && apt-get purge -y     manpages-dev   && apt-get autoremove -y   && apt-get clean   && strip $(gcc -print-prog-name=cc1plus)   && strip $(gcc -print-prog-name=lto1)   && find /usr/lib | grep -E \"(__pycache__|\\.pyc|\\.pyo$)\" | xargs rm -rf   && rm -rf     /var/lib/apt     /var/lib/cache     /var/lib/log     /var/tmp/*     /tmp/*     /usr/share/doc     /usr/share/man     /usr/share/locale     /usr/share/dh-python     $(gcc -print-prog-name=cc1)" shape="box"];
  "sha256:1b51085bd6cab61c6186c9d9cd1d0c6224d5389a8f267fc0d7046cfdcc1762fe" [label="copy{src=/, dest=/opt/}" shape="note"];
  "sha256:78f1551274f007fe4b13dea8b5bb5fc2cc81edddb8e1ee1831b7ab81a48dd4d6" [label="/bin/sh -c mv /opt/viyadb* /opt/viyadb   && strip /opt/viyadb/bin/viyad" shape="box"];
  "sha256:e38c55b10c66fda13ad1e92bcbaeb2940c034015a49cadb0dbc6a2ffe17c8785" [label="/bin/sh -c mkdir /opt/viyadb/conf" shape="box"];
  "sha256:03f4d8b324f11a41a58658afe8ca225849ffb30d74b0857f43e5fa0ed2f7c462" [label="copy{src=/store.json, dest=/opt/viyadb/conf/store.json}" shape="note"];
  "sha256:d49082f673c8a0b0813ac053c7dedc2b7aeaae8cbcdab2342687811346c5b6d0" [label="mkdir{path=/opt/viyadb}" shape="note"];
  "sha256:6add29177b1088da33099df3cd1d539795618e413d4dd79a5b158f7d703d27c7" [label="sha256:6add29177b1088da33099df3cd1d539795618e413d4dd79a5b158f7d703d27c7" shape="plaintext"];
  "sha256:da19f787a4c0a3fcc5df66e26b87bb79b9d84bc5ce26ab37ca82a8b26f56e6a2" -> "sha256:ef3c6e9103cca9157dc8e4917ac3ae65d0d10b35c0ed0fc5cd54807ef90c8c8b" [label=""];
  "sha256:ef3c6e9103cca9157dc8e4917ac3ae65d0d10b35c0ed0fc5cd54807ef90c8c8b" -> "sha256:1b51085bd6cab61c6186c9d9cd1d0c6224d5389a8f267fc0d7046cfdcc1762fe" [label=""];
  "sha256:fc437ea01e510f7717f71435b1f4044ab88371b0fef6080ba1b2d2131085a880" -> "sha256:1b51085bd6cab61c6186c9d9cd1d0c6224d5389a8f267fc0d7046cfdcc1762fe" [label=""];
  "sha256:1b51085bd6cab61c6186c9d9cd1d0c6224d5389a8f267fc0d7046cfdcc1762fe" -> "sha256:78f1551274f007fe4b13dea8b5bb5fc2cc81edddb8e1ee1831b7ab81a48dd4d6" [label=""];
  "sha256:78f1551274f007fe4b13dea8b5bb5fc2cc81edddb8e1ee1831b7ab81a48dd4d6" -> "sha256:e38c55b10c66fda13ad1e92bcbaeb2940c034015a49cadb0dbc6a2ffe17c8785" [label=""];
  "sha256:e38c55b10c66fda13ad1e92bcbaeb2940c034015a49cadb0dbc6a2ffe17c8785" -> "sha256:03f4d8b324f11a41a58658afe8ca225849ffb30d74b0857f43e5fa0ed2f7c462" [label=""];
  "sha256:fc437ea01e510f7717f71435b1f4044ab88371b0fef6080ba1b2d2131085a880" -> "sha256:03f4d8b324f11a41a58658afe8ca225849ffb30d74b0857f43e5fa0ed2f7c462" [label=""];
  "sha256:03f4d8b324f11a41a58658afe8ca225849ffb30d74b0857f43e5fa0ed2f7c462" -> "sha256:d49082f673c8a0b0813ac053c7dedc2b7aeaae8cbcdab2342687811346c5b6d0" [label=""];
  "sha256:d49082f673c8a0b0813ac053c7dedc2b7aeaae8cbcdab2342687811346c5b6d0" -> "sha256:6add29177b1088da33099df3cd1d539795618e413d4dd79a5b158f7d703d27c7" [label=""];
}

