FROM python:3.6 

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
ARG awscli_version="1.16.76"
WORKDIR /data
#ENV PATH $PATH:/root/.local/bin 

# Install awscli
RUN pip install --upgrade pip \
    && pip install awscli==${awscli_version} \
    && pip install --user --upgrade aws-sam-cli \
    && curl -sL https://deb.nodesource.com/setup_11.x | bash - \ 
    && apt-get install -y nodejs \
    && git clone https://github.com/awslabs/aws-nodejs-sample.git \
    && cd aws-nodejs-sample \
    && npm install 

ENV PATH $PATH:/root/.local/bin 
