[app/sources/341381113.Dockerfile]
digraph {
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:bab2da817533dcb3094ef14f0a0c758119b4ae26632d8759c3c70f48beb8b135" [label="/bin/sh -c apt-get update &&  apt-get install -y unzip" shape="box"];
  "sha256:f7dd1906c9302479be358471abca3f3645fee8740a3c0227d66c6fc29f5abb0d" [label="/bin/sh -c wget --quiet -O /opt/$PKG_FILE_NAME $PAYARA_PKG" shape="box"];
  "sha256:c5aa8d6e4dbe1030f066aaf3baaad93ae4b61ff203e85180c3451242993cab47" [label="/bin/sh -c unzip -qq /opt/$PKG_FILE_NAME -d /opt" shape="box"];
  "sha256:2f524923f3844b485f8d7aadff53ccbb0500b3e8f34db4a647060e8e832607b0" [label="/bin/sh -c mkdir -p $PAYARA_PATH/deployments" shape="box"];
  "sha256:8ab1d321c05f1306e78b4ddea1c1991105633efad4375c8ceda01d457e18a6fd" [label="/bin/sh -c useradd -b /opt -m -s /bin/bash payara && echo payara:payara | chpasswd" shape="box"];
  "sha256:dd10f60293a1730fda36f6736d8138dc65e1ad3516ce58c6d300b8c115002c5f" [label="/bin/sh -c chown -R payara:payara /opt" shape="box"];
  "sha256:e8d1b02cd3f4fa798a4e97f7f01650d0e196d277a41e66978c07e4e73fdfed10" [label="mkdir{path=/opt/payara41}" shape="note"];
  "sha256:d951c9c193746bd76bdc79263ec3e2cfd253ae986ba67ed085fba4086682ed86" [label="/bin/sh -c echo 'AS_ADMIN_PASSWORD=\\nAS_ADMIN_NEWPASSWORD=admin\\nEOF\\n'>> /opt/tmpfile" shape="box"];
  "sha256:82197ffb8c8a158d410bfce9abc6163aae73b588935a537821309ceeb9787d05" [label="/bin/sh -c echo 'AS_ADMIN_PASSWORD=admin\\nEOF\\n'>> /opt/pwdfile" shape="box"];
  "sha256:3faa60a34ae716901e26b70c404c98c38744d2fc303f5812ded3b2be9d1922a3" [label="/bin/sh -c $PAYARA_PATH/bin/asadmin start-domain &&  $PAYARA_PATH/bin/asadmin --user admin --passwordfile=/opt/tmpfile change-admin-password &&  $PAYARA_PATH/bin/asadmin --user admin --passwordfile=/opt/pwdfile enable-secure-admin &&  $PAYARA_PATH/bin/asadmin restart-domain" shape="box"];
  "sha256:4fee782745a073a4e1fda579fc7481b6a5051002e6ff3d1cafddf8659ae17893" [label="/bin/sh -c rm /opt/tmpfile" shape="box"];
  "sha256:47489171f83def87850c5dcece9b9920dbf3174639a033a724f9a7b9eba50a67" [label="sha256:47489171f83def87850c5dcece9b9920dbf3174639a033a724f9a7b9eba50a67" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:bab2da817533dcb3094ef14f0a0c758119b4ae26632d8759c3c70f48beb8b135" [label=""];
  "sha256:bab2da817533dcb3094ef14f0a0c758119b4ae26632d8759c3c70f48beb8b135" -> "sha256:f7dd1906c9302479be358471abca3f3645fee8740a3c0227d66c6fc29f5abb0d" [label=""];
  "sha256:f7dd1906c9302479be358471abca3f3645fee8740a3c0227d66c6fc29f5abb0d" -> "sha256:c5aa8d6e4dbe1030f066aaf3baaad93ae4b61ff203e85180c3451242993cab47" [label=""];
  "sha256:c5aa8d6e4dbe1030f066aaf3baaad93ae4b61ff203e85180c3451242993cab47" -> "sha256:2f524923f3844b485f8d7aadff53ccbb0500b3e8f34db4a647060e8e832607b0" [label=""];
  "sha256:2f524923f3844b485f8d7aadff53ccbb0500b3e8f34db4a647060e8e832607b0" -> "sha256:8ab1d321c05f1306e78b4ddea1c1991105633efad4375c8ceda01d457e18a6fd" [label=""];
  "sha256:8ab1d321c05f1306e78b4ddea1c1991105633efad4375c8ceda01d457e18a6fd" -> "sha256:dd10f60293a1730fda36f6736d8138dc65e1ad3516ce58c6d300b8c115002c5f" [label=""];
  "sha256:dd10f60293a1730fda36f6736d8138dc65e1ad3516ce58c6d300b8c115002c5f" -> "sha256:e8d1b02cd3f4fa798a4e97f7f01650d0e196d277a41e66978c07e4e73fdfed10" [label=""];
  "sha256:e8d1b02cd3f4fa798a4e97f7f01650d0e196d277a41e66978c07e4e73fdfed10" -> "sha256:d951c9c193746bd76bdc79263ec3e2cfd253ae986ba67ed085fba4086682ed86" [label=""];
  "sha256:d951c9c193746bd76bdc79263ec3e2cfd253ae986ba67ed085fba4086682ed86" -> "sha256:82197ffb8c8a158d410bfce9abc6163aae73b588935a537821309ceeb9787d05" [label=""];
  "sha256:82197ffb8c8a158d410bfce9abc6163aae73b588935a537821309ceeb9787d05" -> "sha256:3faa60a34ae716901e26b70c404c98c38744d2fc303f5812ded3b2be9d1922a3" [label=""];
  "sha256:3faa60a34ae716901e26b70c404c98c38744d2fc303f5812ded3b2be9d1922a3" -> "sha256:4fee782745a073a4e1fda579fc7481b6a5051002e6ff3d1cafddf8659ae17893" [label=""];
  "sha256:4fee782745a073a4e1fda579fc7481b6a5051002e6ff3d1cafddf8659ae17893" -> "sha256:47489171f83def87850c5dcece9b9920dbf3174639a033a724f9a7b9eba50a67" [label=""];
}

