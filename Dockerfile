FROM nvcr.io/nvidia/pytorch:22.05-py3
COPY . /workspace
WORKDIR /workspace
RUN pip install -U pip
RUN make install
RUN python setup.py install
RUN pip3 install -r requirements-training.txt
WORKDIR /workspace/src
