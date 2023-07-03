# FROM continuumio/miniconda3

# WORKDIR /mlops

# COPY environment.yml .

# RUN conda env create -f environment.yml
FROM python:3.8

WORKDIR /mlops

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .