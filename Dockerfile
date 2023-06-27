FROM nvcr.io/nvidia/pytorch:21.08-py3
RUN scripts/download_model.sh
RUN pip install -r requirements-smart.txt 
