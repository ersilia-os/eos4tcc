FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN conda install -c conda-forge rdkit=2021.03.4
RUN pip install joblib==1.1.0
RUN pip install dgl -f https://data.dgl.ai/wheels/repo.html
RUN pip install dgllife==0.2.9
RUN pip install tqdm==4.64.0
RUN conda install pytorch==1.12.0 torchvision==0.13.0 torchaudio==0.12.0 -c pytorch
RUN pip install requests==2.28.1
RUN conda install -c conda-forge mdtraj -y

WORKDIR /repo
COPY . /repo
