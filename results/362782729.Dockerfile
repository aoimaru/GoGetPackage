[app/sources/362782729.Dockerfile]
digraph {
  "sha256:0af2ff9f64e8d14816590d059416d36326b48488ef4eb5a6d9a4658f735e6ab2" [label="docker-image://docker.io/airhacks/java@sha256:90b45d4fec4d8b179ef1e36189a5e3a21eab90dded99d84879e7f299d27d8c04" shape="ellipse"];
  "sha256:df18293a8fcf3bfcf98f2d382793b9370adf3c2847db3d8ec49b7ada7db4d35f" [label="/bin/sh -c useradd -b /opt -m -s /bin/sh -d ${INSTALL_DIR} serveradmin && echo serveradmin:serveradmin | chpasswd" shape="box"];
  "sha256:9a4aa415dc37fd9b5f9ce8074ec0dd7844ffa3a0d46fa80be6742d786e573de8" [label="/bin/sh -c curl -o ${INSTALL_DIR}/${PAYARA_ARCHIVE}.zip -L https://s3-eu-west-1.amazonaws.com/payara.fish/Payara+Downloads/5.184/payara-5.184.zip     && unzip ${INSTALL_DIR}/${PAYARA_ARCHIVE}.zip -d ${INSTALL_DIR}     && rm ${INSTALL_DIR}/${PAYARA_ARCHIVE}.zip     && chown -R serveradmin:serveradmin /opt     && chmod -R a+rw /opt" shape="box"];
  "sha256:9477b6165dda782e43bd9a5b7b7219d78455b08024ec7be2584aa3aa59d85e2b" [label="/bin/sh -c mkdir ${DEPLOYMENT_DIR}" shape="box"];
  "sha256:89442117e26e872689f08b5334acfac82297967642b281013f11fb891262ff9a" [label="mkdir{path=/opt/payara5/glassfish/bin}" shape="note"];
  "sha256:068ae3f2f867f58c11a21afbf88d1b2d6f39e313d683907acaf89974858ae1c8" [label="local://context" shape="ellipse"];
  "sha256:75ffde5ffdc95ea24cee139f501065056868f742acb80aae8f4bf0f576fc957d" [label="copy{src=/start.sh, dest=/opt/payara5/glassfish/bin/}" shape="note"];
  "sha256:7c7b5f804cfbb7f3ed0e2bf09e7d8046a592e553af853a599276dc21f79dd264" [label="/bin/sh -c chmod a+x start.sh" shape="box"];
  "sha256:abff81c998efe54ccb1e341c3913ec98aa3bd7d43fb875c173e7325fca9621e4" [label="sha256:abff81c998efe54ccb1e341c3913ec98aa3bd7d43fb875c173e7325fca9621e4" shape="plaintext"];
  "sha256:0af2ff9f64e8d14816590d059416d36326b48488ef4eb5a6d9a4658f735e6ab2" -> "sha256:df18293a8fcf3bfcf98f2d382793b9370adf3c2847db3d8ec49b7ada7db4d35f" [label=""];
  "sha256:df18293a8fcf3bfcf98f2d382793b9370adf3c2847db3d8ec49b7ada7db4d35f" -> "sha256:9a4aa415dc37fd9b5f9ce8074ec0dd7844ffa3a0d46fa80be6742d786e573de8" [label=""];
  "sha256:9a4aa415dc37fd9b5f9ce8074ec0dd7844ffa3a0d46fa80be6742d786e573de8" -> "sha256:9477b6165dda782e43bd9a5b7b7219d78455b08024ec7be2584aa3aa59d85e2b" [label=""];
  "sha256:9477b6165dda782e43bd9a5b7b7219d78455b08024ec7be2584aa3aa59d85e2b" -> "sha256:89442117e26e872689f08b5334acfac82297967642b281013f11fb891262ff9a" [label=""];
  "sha256:89442117e26e872689f08b5334acfac82297967642b281013f11fb891262ff9a" -> "sha256:75ffde5ffdc95ea24cee139f501065056868f742acb80aae8f4bf0f576fc957d" [label=""];
  "sha256:068ae3f2f867f58c11a21afbf88d1b2d6f39e313d683907acaf89974858ae1c8" -> "sha256:75ffde5ffdc95ea24cee139f501065056868f742acb80aae8f4bf0f576fc957d" [label=""];
  "sha256:75ffde5ffdc95ea24cee139f501065056868f742acb80aae8f4bf0f576fc957d" -> "sha256:7c7b5f804cfbb7f3ed0e2bf09e7d8046a592e553af853a599276dc21f79dd264" [label=""];
  "sha256:7c7b5f804cfbb7f3ed0e2bf09e7d8046a592e553af853a599276dc21f79dd264" -> "sha256:abff81c998efe54ccb1e341c3913ec98aa3bd7d43fb875c173e7325fca9621e4" [label=""];
}

