ARG SOURCE_GROUP
ARG SOURCE_REGISTRY
ARG SOURCE_IMAGE
ARG SOURCE_VERSION

FROM $SOURCE_REGISTRY$SOURCE_GROUP$SOURCE_IMAGE:$SOURCE_VERSION

ARG TERRAFORM_VERSION

#USER root

COPY src/rootfs/ /

RUN set -x ;\
  echo "INFO: begin RUN" ;\
  wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ;\
  unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ;\
  rm "terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ;\
  mv terraform /usr/bin/terraform ;\
  echo "INFO: end RUN" ;\

#USER rootless
