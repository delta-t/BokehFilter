FROM python

STOPSIGNAL SIGINT

COPY . /task

WORKDIR /task

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

ENTRYPOINT jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
