FROM microsoft/dotnet:1.0-runtime

ENV OCTO_VERSION=4.6.1
WORKDIR /octo

RUN curl -O https://download.octopusdeploy.com/octopus-tools/$OCTO_VERSION/OctopusTools.$OCTO_VERSION.portable.tar.gz && \
    tar -xzf OctopusTools.$OCTO_VERSION.portable.tar.gz && \
    chmod +x ./Octo && \
    sed -i 's/\r//' ./Octo && \
    rm OctopusTools.$OCTO_VERSION.portable.tar.gz
