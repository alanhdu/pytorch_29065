FROM continuumio/miniconda3:4.7.12

RUN apt-get update && apt-get install --yes build-essential

RUN conda config --add channels conda-forge && \
    conda config --add channels pytorch
RUN conda install --yes -c pytorch cpuonly pytorch=1.3
RUN conda install --yes cmake=3.15.5 make=4.2.1
RUN pip install conan==1.19.2



WORKDIR /src
COPY . /src
RUN conan install .
RUN cmake -DCMAKE_BUILD_TYPE=Debug .
RUN make
RUN ./bin/example
