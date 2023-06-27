FROM nvcr.io/nvidia/pytorch:21.08-py3
WORKDIR /src
COPY . .
RUN chmod 775 scripts/download_model.sh
RUN scripts/download_model.sh
RUN pip install -r requirements-smart.txt 
CMD [sh scripts/gui.sh]
