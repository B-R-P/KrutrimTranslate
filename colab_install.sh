#/bin/bash

root_dir=$(pwd)
echo "Setting up the environment in the $root_dir"

python3 -m pip install --upgrade pip==24.0
python3 -m pip install torch --extra-index-url https://download.pytorch.org/whl/cu118

git clone https://github.com/anoopkunchukuttan/indic_nlp_resources.git
export INDIC_RESOURCES_PATH=$root_dir/indic_nlp_resources

# INDIC NLP LIBRARY
git clone https://github.com/anoopkunchukuttan/indic_nlp_library.git
cd indic_nlp_library
python3 -m pip install ./
cd $root_dir

python3 -m pip install nltk sacremoses regex pandas mock transformers==4.28.1 sacrebleu==2.3.1 urduhack[tf] mosestokenizer ctranslate2==4.5.0
python3 -c "import nltk; nltk.download('punkt')"
python3 -m pip install sentencepiece

# FAIRSEQ 
git clone https://github.com/pytorch/fairseq.git
cd fairseq
python3 -m pip install ./
cd $root_dir

