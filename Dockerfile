FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN pip install rdkit==2022.3.3
RUN pip install joblib==1.1.0
RUN pip install dgl==1.0.1
RUN pip install dgllife==0.2.9
RUN pip install torch==1.13.1
RUN conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1
RUN pip install mdtraj==1.9.7
RUN pip install chardet==5.1.0
RUN conda install -c conda-forge xorg-libxrender xorg-libxtst

WORKDIR /repo
COPY . /repo
