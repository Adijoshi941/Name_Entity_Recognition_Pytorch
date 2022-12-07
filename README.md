# Name_Entity_Recognition_Pytorch
Name_Entity_Recognition_Pytorch

#How to set up
create fresh conda environment 
```python
conda create -p ./env python=3.8 -y
```
activate conda environment
```python
conda activate ./env
```
Install requirements
```python
pip install -r requirements.txt
```
To run train pipeline
```python
python ner/pipeline/train_pipeline.py
```
To run inferencing
```python
python app.py
```

To launch swagger ui
```python
http://localhost:8085/docs
```
