ARG SOURCE_GROUP
ARG SOURCE_REGISTRY
ARG SOURCE_IMAGE
ARG SOURCE_VERSION

FROM $SOURCE_REGISTRY$SOURCE_GROUP$SOURCE_IMAGE:$SOURCE_VERSION

ARG TERRAFORM_VERSION
ARG TFSEC_VERSION

COPY src/rootfs/ /

RUN set -x ;\
  echo "INFO: begin RUN" ;\
  wget -nv "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ;\
  unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ;\
  rm "terraform_${TERRAFORM_VERSION}_linux_amd64.zip" ;\
  mv terraform /usr/local/bin/terraform ;\
  wget -nv "https://github.com/aquasecurity/tfsec/releases/download/${TFSEC_VERSION}/tfsec-linux-amd64" ;\
  mv tfsec-linux-amd64 /usr/local/bin/tfsec ;\
  chmod +x /usr/local/bin/tfsec ;\
  echo "INFO: end RUN"

