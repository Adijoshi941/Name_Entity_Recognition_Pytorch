echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.8 -y
echo [$(date)]: "activate environment"
conda activate ./env
echo [$(date)]: "create folder and file structure"

for DIR in components config constants entity exception pipeline utils
do  
    echo [$(date)]: "Creating", "ner/"$DIR
    mkdir -p "ner/"$DIR
    echo [$(date)]: "Creating __init__.py inside above folders"
    touch "ner/"$DIR/"__init__.py"
done

for DIR in data_ingestion data_preparation data_validation model_architecture model_evaluation model_training
do  
    echo [$(date)]: "Creating __init__.py inside above folders"
    touch "ner/components/"$DIR".py"
done

echo [$(date)]: "install requirements"
pip install -r requirements.txt -q
echo [$(date)]: "install pytorch dependency"
pip install torch --extra-index-url https://download.pytorch.org/whl/cu113 -q
echo [$(date)]: "END"

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/