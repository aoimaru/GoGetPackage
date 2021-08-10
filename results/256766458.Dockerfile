[app/sources/256766458.Dockerfile]
digraph {
  "sha256:fd93cc33fa7c3b4fef658cfa6c13442308a9d7d1fd7b65d6eb487749f22bea3e" [label="docker-image://docker.io/sbrg/cobrame:qminos" shape="ellipse"];
  "sha256:0267f7b2cbb758203cb85db6057e76ddd3ae6f61835cb8f8ad6938785901ec69" [label="docker-image://docker.io/sbrg/cobrame:dependencies" shape="ellipse"];
  "sha256:4b71b7e244a3368ee48a20f34b28042dd8c87f0d8f4175eb51f25b680a93199f" [label="copy{src=/source/libminos.a, dest=/}" shape="note"];
  "sha256:82bad62f010a666071a98e14e73648753b198b0604b50d87fffb7cf55a77aebb" [label="copy{src=/source/libquadminos.a, dest=/}" shape="note"];
  "sha256:2eda4f4b477e84f6257ffd9d53159b263b8a5426e98f169b7ea7f9b869b73e8a" [label="/bin/sh -c echo \"@community http://dl-cdn.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories" shape="box"];
  "sha256:3d1e8ca50f9bf46cb57baffb48da937b34d9ccf576e2b6579f9183727e5049fd" [label="local://context" shape="ellipse"];
  "sha256:de14c48d26400425fd8c8e39608ea465e7d570e62881c2388895078260867d67" [label="copy{src=/nothing.txt, dest=/source/},copy{src=/soplex-3.1.1.tg*, dest=/source/}" shape="note"];
  "sha256:11dcd6f45a9fc04446559a106783c7d98d91c8841643a1e8becd877137857004" [label="/bin/sh -c apk add --no-cache $PACKAGES" shape="box"];
  "sha256:f2731007a66605e8ae5f888323d3c02e5bca55f85ca48f53494420c0413bf94b" [label="/bin/sh -c useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \tchmod -R a+rwx /etc/passwd /etc/group /home/ /usr/lib/python$PYTHON_VERSION/site-packages && \tchmod -R a+rwx /usr/bin /source/" shape="box"];
  "sha256:8d4236a51707a92a20f921602bbdc18eeefdcd6bbde3426388eaa69128609ca4" [label="mkdir{path=/home/meuser}" shape="note"];
  "sha256:07d14494ad49836082b1c91413693973f63778044c2cc001601e4d2cbf1af190" [label="/bin/sh -c echo \t&& cd /source \t&& git clone https://github.com/opencobra/cobrapy.git \t&& cd /source/cobrapy \t&& git checkout 0.5.11 \t&& $PYTHON setup.py install \t&& cd /source \t&& if [[ -e /source/soplex-$SOPLEX_VERSION.tgz ]]; then         git clone https://github.com/SBRG/soplex_cython.git;         cd /source/soplex_cython;         mv /source/soplex-$SOPLEX_VERSION.tgz  /source/soplex_cython/ ;        pip install . ;        fi     && pip install escher     && cd /source \t&& git clone https://github.com/SBRG/cobrame.git \t&& git clone https://github.com/SBRG/ecolime.git \t&& git clone https://github.com/SBRG/solvemepy.git \t&& cd /source/cobrame \t&& $PYTHON  setup.py develop \t&& cd /source/solvemepy \t&& git checkout tags/v1.0.1 \t&& cp /source/libminos.a ./ \t&& cp /source/libquadminos.a ./ \t&& $PYTHON  setup.py develop \t&& cd /source/ecolime \t&& $PYTHON  setup.py develop \t&& $PYTHON  /source/ecolime/ecolime/build_me_model.py \t&& cp -r /source/ecolime/ecolime/me_models /home/$NB_USER/ \t&& cp /source/ecolime/ecolime/solve_demo.ipynb /home/$NB_USER/ \t&& echo" shape="box"];
  "sha256:99e9c3253b9c11f829ac4dc3581ecab953cfbb7d3cb23c43c38dbd97edea9702" [label="sha256:99e9c3253b9c11f829ac4dc3581ecab953cfbb7d3cb23c43c38dbd97edea9702" shape="plaintext"];
  "sha256:0267f7b2cbb758203cb85db6057e76ddd3ae6f61835cb8f8ad6938785901ec69" -> "sha256:4b71b7e244a3368ee48a20f34b28042dd8c87f0d8f4175eb51f25b680a93199f" [label=""];
  "sha256:fd93cc33fa7c3b4fef658cfa6c13442308a9d7d1fd7b65d6eb487749f22bea3e" -> "sha256:4b71b7e244a3368ee48a20f34b28042dd8c87f0d8f4175eb51f25b680a93199f" [label=""];
  "sha256:4b71b7e244a3368ee48a20f34b28042dd8c87f0d8f4175eb51f25b680a93199f" -> "sha256:82bad62f010a666071a98e14e73648753b198b0604b50d87fffb7cf55a77aebb" [label=""];
  "sha256:fd93cc33fa7c3b4fef658cfa6c13442308a9d7d1fd7b65d6eb487749f22bea3e" -> "sha256:82bad62f010a666071a98e14e73648753b198b0604b50d87fffb7cf55a77aebb" [label=""];
  "sha256:82bad62f010a666071a98e14e73648753b198b0604b50d87fffb7cf55a77aebb" -> "sha256:2eda4f4b477e84f6257ffd9d53159b263b8a5426e98f169b7ea7f9b869b73e8a" [label=""];
  "sha256:2eda4f4b477e84f6257ffd9d53159b263b8a5426e98f169b7ea7f9b869b73e8a" -> "sha256:de14c48d26400425fd8c8e39608ea465e7d570e62881c2388895078260867d67" [label=""];
  "sha256:3d1e8ca50f9bf46cb57baffb48da937b34d9ccf576e2b6579f9183727e5049fd" -> "sha256:de14c48d26400425fd8c8e39608ea465e7d570e62881c2388895078260867d67" [label=""];
  "sha256:de14c48d26400425fd8c8e39608ea465e7d570e62881c2388895078260867d67" -> "sha256:11dcd6f45a9fc04446559a106783c7d98d91c8841643a1e8becd877137857004" [label=""];
  "sha256:11dcd6f45a9fc04446559a106783c7d98d91c8841643a1e8becd877137857004" -> "sha256:f2731007a66605e8ae5f888323d3c02e5bca55f85ca48f53494420c0413bf94b" [label=""];
  "sha256:f2731007a66605e8ae5f888323d3c02e5bca55f85ca48f53494420c0413bf94b" -> "sha256:8d4236a51707a92a20f921602bbdc18eeefdcd6bbde3426388eaa69128609ca4" [label=""];
  "sha256:8d4236a51707a92a20f921602bbdc18eeefdcd6bbde3426388eaa69128609ca4" -> "sha256:07d14494ad49836082b1c91413693973f63778044c2cc001601e4d2cbf1af190" [label=""];
  "sha256:07d14494ad49836082b1c91413693973f63778044c2cc001601e4d2cbf1af190" -> "sha256:99e9c3253b9c11f829ac4dc3581ecab953cfbb7d3cb23c43c38dbd97edea9702" [label=""];
}

