echo FROM python:3.8 > Dockerfile
echo ENV SRC_DIR /usr/bin/src/webapp/src >> Dockerfile
echo 'COPY * ${SRC_DIR}/' >> Dockerfile
echo 'WORKDIR ${SRC_DIR}' >> Dockerfile
echo ENV PYTHONUNBUFFERED=1 >> Dockerfile
echo 'CMD ["python", "server.py"]' >> Dockerfile
docker build . -t simple_server
docker run -p 8000:8000 simple_server