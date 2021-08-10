[app/sources/252783100.Dockerfile]
digraph {
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" [label="docker-image://docker.io/library/python:2.7.10" shape="ellipse"];
  "sha256:efc646390452bd270dc0e4e7bd1084d1635e8a6e16fdeee316e22f3a41936e0a" [label="/bin/sh -c apt-get update -qq --fix-missing" shape="box"];
  "sha256:4104f7d9423753fb3f7fe3978cc80bef4afad00974448cd195c94e370f36973e" [label="/bin/sh -c apt-get install -ybuild-essentialgit-corelibldap2-devlibpq-devlibsasl2-devlibssl-devlibxml2-devlibxslt1-devlibffi-devopensslpython-devpython-setuptoolswgetzlib1g-devpostgresql-client" shape="box"];
  "sha256:5c2c81cdb5a0bcb98117fc7ce6f65b3ffa8a2e0987311b38cfa1ea654e2d05e3" [label="/bin/sh -c pip install \"Django>=1.5,<1.6\"" shape="box"];
  "sha256:edfa2c73eadebac84dc3cad549637d1c74b1b143c1137d27c6ef0308b33b48d0" [label="/bin/sh -c pip install south" shape="box"];
  "sha256:4cc7a8aba7fbdae4acfbca10df9c314485363dcdcec6357e6ce4478e9012a386" [label="/bin/sh -c pip install uWSGI" shape="box"];
  "sha256:b86ccee9a57c6fc6fad68427aa9b1e462a490362bddd048550465b8575ab93d0" [label="/bin/sh -c pip install django-environ" shape="box"];
  "sha256:eac1250d1386423665e379d42f63aeda1dad3911f728528774f7a06e743ed7aa" [label="/bin/sh -c pip install \"restlib2==0.3.9\"" shape="box"];
  "sha256:563e6ff69fdd01ed29c9c9e2873631fc03c1c09a2e7edb07133d76e7a283d83f" [label="/bin/sh -c pip install psycopg2" shape="box"];
  "sha256:2d5ad7411f3e344270105dbef58c4ebee8f3d760b77e698e10b08081489922ad" [label="/bin/sh -c pip install python-ldap" shape="box"];
  "sha256:b16c032070beff099f88234560956322acdc3be560b450a20f1eb96d83b16c43" [label="/bin/sh -c pip install \"pycrypto==2.3\"" shape="box"];
  "sha256:476628ad530383ad9e292dee2795c284dbd473f0c8ef3a02dfb1a439081583e4" [label="/bin/sh -c pip install mock" shape="box"];
  "sha256:81aeebaa6b075e339f42d7fbc75e30ec3a3007dec1f9e1d76041af41a91ecebf" [label="/bin/sh -c mkdir /opt/app" shape="box"];
  "sha256:84bcbc61dc4cd7b5ff193d0d82c6dc7501bba534acafa6e9665d09509cf223ec" [label="local://context" shape="ellipse"];
  "sha256:1b71e16f59d48375fff0c08514fa4e495dcf0abd8ac78168986c408b1fa00bf4" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:525d6408698eada2f7f8481112265b8a669d8cd9a12b98cb5db98446ade91b74" [label="copy{src=/test.env_example, dest=/opt/app/test.env}" shape="note"];
  "sha256:05646874d1b6437eb657e32d52044bae50847f8a2385eeadc2b4fed2b63fda53" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:a43ec41b46807541c5117368297d93f081401457dfb1ad4e6049fb56f04ffa53" [label="/bin/sh -c pip install -r /opt/app/requirements.txt" shape="box"];
  "sha256:e9f180eced18b627ab09bd5d1bec8b70ad3d826a6113d4c5cae85be5782dabf0" [label="sha256:e9f180eced18b627ab09bd5d1bec8b70ad3d826a6113d4c5cae85be5782dabf0" shape="plaintext"];
  "sha256:eecb5c48c2c8b723d6a213fc6278e295f581868f2ccf48a88e1a772c91e5f6fc" -> "sha256:efc646390452bd270dc0e4e7bd1084d1635e8a6e16fdeee316e22f3a41936e0a" [label=""];
  "sha256:efc646390452bd270dc0e4e7bd1084d1635e8a6e16fdeee316e22f3a41936e0a" -> "sha256:4104f7d9423753fb3f7fe3978cc80bef4afad00974448cd195c94e370f36973e" [label=""];
  "sha256:4104f7d9423753fb3f7fe3978cc80bef4afad00974448cd195c94e370f36973e" -> "sha256:5c2c81cdb5a0bcb98117fc7ce6f65b3ffa8a2e0987311b38cfa1ea654e2d05e3" [label=""];
  "sha256:5c2c81cdb5a0bcb98117fc7ce6f65b3ffa8a2e0987311b38cfa1ea654e2d05e3" -> "sha256:edfa2c73eadebac84dc3cad549637d1c74b1b143c1137d27c6ef0308b33b48d0" [label=""];
  "sha256:edfa2c73eadebac84dc3cad549637d1c74b1b143c1137d27c6ef0308b33b48d0" -> "sha256:4cc7a8aba7fbdae4acfbca10df9c314485363dcdcec6357e6ce4478e9012a386" [label=""];
  "sha256:4cc7a8aba7fbdae4acfbca10df9c314485363dcdcec6357e6ce4478e9012a386" -> "sha256:b86ccee9a57c6fc6fad68427aa9b1e462a490362bddd048550465b8575ab93d0" [label=""];
  "sha256:b86ccee9a57c6fc6fad68427aa9b1e462a490362bddd048550465b8575ab93d0" -> "sha256:eac1250d1386423665e379d42f63aeda1dad3911f728528774f7a06e743ed7aa" [label=""];
  "sha256:eac1250d1386423665e379d42f63aeda1dad3911f728528774f7a06e743ed7aa" -> "sha256:563e6ff69fdd01ed29c9c9e2873631fc03c1c09a2e7edb07133d76e7a283d83f" [label=""];
  "sha256:563e6ff69fdd01ed29c9c9e2873631fc03c1c09a2e7edb07133d76e7a283d83f" -> "sha256:2d5ad7411f3e344270105dbef58c4ebee8f3d760b77e698e10b08081489922ad" [label=""];
  "sha256:2d5ad7411f3e344270105dbef58c4ebee8f3d760b77e698e10b08081489922ad" -> "sha256:b16c032070beff099f88234560956322acdc3be560b450a20f1eb96d83b16c43" [label=""];
  "sha256:b16c032070beff099f88234560956322acdc3be560b450a20f1eb96d83b16c43" -> "sha256:476628ad530383ad9e292dee2795c284dbd473f0c8ef3a02dfb1a439081583e4" [label=""];
  "sha256:476628ad530383ad9e292dee2795c284dbd473f0c8ef3a02dfb1a439081583e4" -> "sha256:81aeebaa6b075e339f42d7fbc75e30ec3a3007dec1f9e1d76041af41a91ecebf" [label=""];
  "sha256:81aeebaa6b075e339f42d7fbc75e30ec3a3007dec1f9e1d76041af41a91ecebf" -> "sha256:1b71e16f59d48375fff0c08514fa4e495dcf0abd8ac78168986c408b1fa00bf4" [label=""];
  "sha256:84bcbc61dc4cd7b5ff193d0d82c6dc7501bba534acafa6e9665d09509cf223ec" -> "sha256:1b71e16f59d48375fff0c08514fa4e495dcf0abd8ac78168986c408b1fa00bf4" [label=""];
  "sha256:1b71e16f59d48375fff0c08514fa4e495dcf0abd8ac78168986c408b1fa00bf4" -> "sha256:525d6408698eada2f7f8481112265b8a669d8cd9a12b98cb5db98446ade91b74" [label=""];
  "sha256:84bcbc61dc4cd7b5ff193d0d82c6dc7501bba534acafa6e9665d09509cf223ec" -> "sha256:525d6408698eada2f7f8481112265b8a669d8cd9a12b98cb5db98446ade91b74" [label=""];
  "sha256:525d6408698eada2f7f8481112265b8a669d8cd9a12b98cb5db98446ade91b74" -> "sha256:05646874d1b6437eb657e32d52044bae50847f8a2385eeadc2b4fed2b63fda53" [label=""];
  "sha256:05646874d1b6437eb657e32d52044bae50847f8a2385eeadc2b4fed2b63fda53" -> "sha256:a43ec41b46807541c5117368297d93f081401457dfb1ad4e6049fb56f04ffa53" [label=""];
  "sha256:a43ec41b46807541c5117368297d93f081401457dfb1ad4e6049fb56f04ffa53" -> "sha256:e9f180eced18b627ab09bd5d1bec8b70ad3d826a6113d4c5cae85be5782dabf0" [label=""];
}

