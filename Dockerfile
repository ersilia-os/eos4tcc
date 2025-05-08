FROM bentoml/model-server:0.11.0-py38
MAINTAINER ersilia

RUN pip install rdkit==2022.3.3
RUN pip install joblib==1.1.0
RUN pip install dgl==1.0.1
RUN pip install dgllife==0.2.9
RUN pip install torch==1.13.1

WORKDIR /repo
COPY . /repo
