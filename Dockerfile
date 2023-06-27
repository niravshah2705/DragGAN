FROM nvcr.io/nvidia/pytorch:21.08-py3
COPY . .
RUN scripts/download_model.sh
RUN pip install -r requirements-smart.txt 
CMD [sh scripts/gui.sh]