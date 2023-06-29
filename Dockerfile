FROM nvcr.io/nvidia/pytorch:21.08-py3
# FROM python:latest
WORKDIR /src
COPY . .
RUN chmod 775 scripts/*.sh
RUN scripts/download_model.sh
RUN pip install -r requirements.txt 
EXPOSE 8050
CMD python /src/visualizer_drag_gradio.py
