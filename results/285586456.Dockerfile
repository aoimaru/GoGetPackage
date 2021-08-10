[app/sources/285586456.Dockerfile]
digraph {
  "sha256:c97e398e3c76d05bad7dd902727d5936586c3c4962424206fdc243860d8df126" [label="docker-image://docker.io/library/tomcat:9-jre8-alpine" shape="ellipse"];
  "sha256:d86b928d2f6c97b26f703363d8d1d1efd95c6c3f8f98ef27eebd1c4caf992d8a" [label="/bin/sh -c rm -rf $DIR_WEBAPP/*" shape="box"];
  "sha256:19bd09ea252e0214655661c5f2b8c232e6a776ddffa888f4305a0160db37a682" [label="local://context" shape="ellipse"];
  "sha256:9d0dddebdde0c578f502f9c893ea13fd5e411b6a000f6ce6e809e0eac448669b" [label="copy{src=/, dest=/app.war}" shape="note"];
  "sha256:aa93dc20e96f795d2e203b0c11fdae646a25c27f53a74080740203d064f2ab6c" [label="/bin/sh -c unzip ${CATALINA_HOME}/${APP} -d ${DIR_WEBAPP}/${PROJECT_ARTIFACT_ID}/" shape="box"];
  "sha256:d796ce6a1f2425e0d824efaa05fe1923e5382f42c20f167c1052733ece9a7baf" [label="sha256:d796ce6a1f2425e0d824efaa05fe1923e5382f42c20f167c1052733ece9a7baf" shape="plaintext"];
  "sha256:c97e398e3c76d05bad7dd902727d5936586c3c4962424206fdc243860d8df126" -> "sha256:d86b928d2f6c97b26f703363d8d1d1efd95c6c3f8f98ef27eebd1c4caf992d8a" [label=""];
  "sha256:d86b928d2f6c97b26f703363d8d1d1efd95c6c3f8f98ef27eebd1c4caf992d8a" -> "sha256:9d0dddebdde0c578f502f9c893ea13fd5e411b6a000f6ce6e809e0eac448669b" [label=""];
  "sha256:19bd09ea252e0214655661c5f2b8c232e6a776ddffa888f4305a0160db37a682" -> "sha256:9d0dddebdde0c578f502f9c893ea13fd5e411b6a000f6ce6e809e0eac448669b" [label=""];
  "sha256:9d0dddebdde0c578f502f9c893ea13fd5e411b6a000f6ce6e809e0eac448669b" -> "sha256:aa93dc20e96f795d2e203b0c11fdae646a25c27f53a74080740203d064f2ab6c" [label=""];
  "sha256:aa93dc20e96f795d2e203b0c11fdae646a25c27f53a74080740203d064f2ab6c" -> "sha256:d796ce6a1f2425e0d824efaa05fe1923e5382f42c20f167c1052733ece9a7baf" [label=""];
}

