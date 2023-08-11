# lemonade
08/11/2023

LOCAL
pip install web.py
python3 my_web.py

DOCKER
docker build . --tag lemonade:20230811a
    --no-cache
docker run --publish 8080:8080 lemonade:20230811a
