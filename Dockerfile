FROM python:latest
  
WORKDIR /app
COPY requirements.txt /app
COPY Decorators.ipynb /app 

RUN pip --no-cache-dir install -r requirements.txt

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 8888

VOLUME /app

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
