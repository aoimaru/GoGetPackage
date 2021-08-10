[app/sources/260945681.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:659bb24e6d65e2934f2638c0af853838fccaf8a93065187b44f8ce6bcc7f7da0" [label="local://context" shape="ellipse"];
  "sha256:8bce6ff92731a677a7c3a31031ee6843d437e9820d56b0a008e3f621c1110dab" [label="copy{src=/project_template.zip, dest=/src/pyscada/}" shape="note"];
  "sha256:c6efd320fcb25f6ea9984c4dc91ad0c1c5582ff2007b2da6d765da27041ab85d" [label="copy{src=/pyscada, dest=/src/pyscada/}" shape="note"];
  "sha256:7cbfb7bb15f7a782abe9206d02d8ca7f0d07a5256813036ee4b08cd96212b670" [label="copy{src=/pyscada_init, dest=/src/pyscada/}" shape="note"];
  "sha256:b54ac2a49266ba0c8b9631828cd960e8347662b72922ba620166f77aa26ab7d6" [label="mkdir{path=/src/pyscada}" shape="note"];
  "sha256:796c09401877e21d32c87ae49fc1290db59108cfb1de6e0df28b4d667c3b356c" [label="/bin/sh -c pip3 install gunicorn" shape="box"];
  "sha256:34590c5b1a6cf22cea0608bd7347c8952cafa96ae6c4b0091bf86fcc0abe8cb9" [label="/bin/sh -c pip3 install mysqlclient" shape="box"];
  "sha256:349e55a255f02d2f35fd7581509e3fb0353a1a05cf7847ca71f40b590c10afaa" [label="/bin/sh -c pip3 install https://github.com/trombastic/PyScada/archive/dev/0.7.x.zip" shape="box"];
  "sha256:3ff7cf07c45f7ff7610123092207b6342d9e35c4729a0d915ae798c4e3fe78fe" [label="/bin/sh -c django-admin startproject PyScadaServer /src/pyscada/ --template /src/pyscada/project_template.zip" shape="box"];
  "sha256:87730c150ef10223585094506bbf28b6ea9f98d2f5b6d77a95d4cf2d7f48396c" [label="/bin/sh -c chmod +x /src/pyscada/pyscada" shape="box"];
  "sha256:ae0ee440ab74392b6c58d7b13f6c12e746657fee43ad332536003db3fc47d7ff" [label="/bin/sh -c chmod +x /src/pyscada/pyscada_init" shape="box"];
  "sha256:ff622442deeefb630554e46498b5d76f62d8de86f01cfa0a70cc7d7a1a086b1d" [label="sha256:ff622442deeefb630554e46498b5d76f62d8de86f01cfa0a70cc7d7a1a086b1d" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:8bce6ff92731a677a7c3a31031ee6843d437e9820d56b0a008e3f621c1110dab" [label=""];
  "sha256:659bb24e6d65e2934f2638c0af853838fccaf8a93065187b44f8ce6bcc7f7da0" -> "sha256:8bce6ff92731a677a7c3a31031ee6843d437e9820d56b0a008e3f621c1110dab" [label=""];
  "sha256:8bce6ff92731a677a7c3a31031ee6843d437e9820d56b0a008e3f621c1110dab" -> "sha256:c6efd320fcb25f6ea9984c4dc91ad0c1c5582ff2007b2da6d765da27041ab85d" [label=""];
  "sha256:659bb24e6d65e2934f2638c0af853838fccaf8a93065187b44f8ce6bcc7f7da0" -> "sha256:c6efd320fcb25f6ea9984c4dc91ad0c1c5582ff2007b2da6d765da27041ab85d" [label=""];
  "sha256:c6efd320fcb25f6ea9984c4dc91ad0c1c5582ff2007b2da6d765da27041ab85d" -> "sha256:7cbfb7bb15f7a782abe9206d02d8ca7f0d07a5256813036ee4b08cd96212b670" [label=""];
  "sha256:659bb24e6d65e2934f2638c0af853838fccaf8a93065187b44f8ce6bcc7f7da0" -> "sha256:7cbfb7bb15f7a782abe9206d02d8ca7f0d07a5256813036ee4b08cd96212b670" [label=""];
  "sha256:7cbfb7bb15f7a782abe9206d02d8ca7f0d07a5256813036ee4b08cd96212b670" -> "sha256:b54ac2a49266ba0c8b9631828cd960e8347662b72922ba620166f77aa26ab7d6" [label=""];
  "sha256:b54ac2a49266ba0c8b9631828cd960e8347662b72922ba620166f77aa26ab7d6" -> "sha256:796c09401877e21d32c87ae49fc1290db59108cfb1de6e0df28b4d667c3b356c" [label=""];
  "sha256:796c09401877e21d32c87ae49fc1290db59108cfb1de6e0df28b4d667c3b356c" -> "sha256:34590c5b1a6cf22cea0608bd7347c8952cafa96ae6c4b0091bf86fcc0abe8cb9" [label=""];
  "sha256:34590c5b1a6cf22cea0608bd7347c8952cafa96ae6c4b0091bf86fcc0abe8cb9" -> "sha256:349e55a255f02d2f35fd7581509e3fb0353a1a05cf7847ca71f40b590c10afaa" [label=""];
  "sha256:349e55a255f02d2f35fd7581509e3fb0353a1a05cf7847ca71f40b590c10afaa" -> "sha256:3ff7cf07c45f7ff7610123092207b6342d9e35c4729a0d915ae798c4e3fe78fe" [label=""];
  "sha256:3ff7cf07c45f7ff7610123092207b6342d9e35c4729a0d915ae798c4e3fe78fe" -> "sha256:87730c150ef10223585094506bbf28b6ea9f98d2f5b6d77a95d4cf2d7f48396c" [label=""];
  "sha256:87730c150ef10223585094506bbf28b6ea9f98d2f5b6d77a95d4cf2d7f48396c" -> "sha256:ae0ee440ab74392b6c58d7b13f6c12e746657fee43ad332536003db3fc47d7ff" [label=""];
  "sha256:ae0ee440ab74392b6c58d7b13f6c12e746657fee43ad332536003db3fc47d7ff" -> "sha256:ff622442deeefb630554e46498b5d76f62d8de86f01cfa0a70cc7d7a1a086b1d" [label=""];
}

