FROM python:latest
WORKDIR /app
RUN apt-get update && apt-get install -y \
     git \
RUN git clone 
WORKDIR /flaskapp
RUN pip3 install -r requirements.txt
CMD ["python3" , "-m" , "flask" , "run" , " --host=0.0.0.0 " , "--port=3001" ]