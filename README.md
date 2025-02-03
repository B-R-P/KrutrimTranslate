# Krutrim Translate

## Introduction 
Our work is inspired by AI4Bharat's IndicTrans2. We utilized the IndicTrans2 training pipeline to develop a translation model with an increased context length, extending it from 256 to 4096. For training, we leveraged their dataset while also augmenting it with our own data to enhance performance. Their original model featured 18 encoder and 18 decoder layers, whereas we explored various architectures for both training and distillation.

The model provided in this repository is a distilled version with 6 encoder and 3 decoder layers, supporting translation in both directions: English to Indic and Indic to English. This architecture was chosen primarily because it achieved a 4x reduction in latency compared to the 18 encoder and 18 decoder model.

This repository is dedicated to model inference using the CTranslate2 format. Additionally, we also provide the model in Fairseq format. The choice of CTranslate2 for inference is due to its superior performance compared to Hugging Face (HF) and Fairseq formats.

Here is the list of languages supported by our model:
- Bengali (ben_Beng)
- Hindi (hin_Deva)
- Kannada (kan_Knda)
- Marathi (mar_Deva)
- Malayalam (mal_Mlym)
- Gujarati (guj_Gujr)
- Punjabi (pan_Guru)
- Telugu (tel_Telu)
- Tamil (tam_Taml)

## Model Summary

The training process was conducted in four stages:

1️⃣ Stage 1 – Initial training round\
2️⃣ Stage 2 – Fine-tuning the model\
3️⃣ Stage 3 – Back translation\
4️⃣ Stage 4 – Distillation of the best model obtained in Stage 3

For the English-to-Indic direction, only Stages 1, 2, and 4 were performed, while for Indic-to-English, all four stages were completed. For further details, please refer to the evaluation results section.

## Evaluation Results

As we benchmarked our model against AI4Bharat's IndicTrans2, we evaluated its performance using the IN22-gen and IN22-conv datasets. The IndicTrans2 results were sourced from their research paper, where their model consists of 18 encoder and 18 decoder layers, whereas our model features a 6 encoder and 3 decoder architecture. Below, we present a comparison of the CHRF++ scores achieved by both models.

### IN22-gen
**English to Indic**

| Language   | IT2       | Krutrim |
|------------|-----------|---------|
| Bengali    |   51.8    |    50   |
| Hindi      |   56.7    |    54.4 |
| Kannada    |   51      |    47.9 |   
| Marathi    |   51      |    48.9 |
| Malayalam  |   50.9    |    49.3 |
| Gujarati   |   53.5    |    51.4 |
| Punjabi    |   50.6    |    50.2 |
| Telugu     |   52.4    |    50   |
| Tamil      |   49.5    |    48.3 |

**Indic to English**

| Language   | IT2       | Krutrim |
|------------|-----------|---------|
| Bengali    |    63.2   |  60.8   |
| Hindi      |    65.4   |  62     |
| Kannada    |    64.2   |  58.4   |
| Marathi    |    63.7   |  60.7   |
| Malayalam  |    64.5   |  57.8   |
| Gujarati   |    66.5   |  57.7   |
| Punjabi    |    63.4   |  58.1   |
| Telugu     |    64.8   |  60.4   |
| Tamil      |    59.8   |  56.9   |

### IN22-conv
**English to Indic**


| Language   | IT2       | Krutrim |
|------------|-----------|---------|
| Bengali    |   49.7    |    49.2 |
| Hindi      |   49.6    |    49.2 |
| Kannada    |   33.8    |    33.4 |   
| Marathi    |   48.6    |    47.2 |
| Malayalam  |   45.7    |    44.7 |
| Gujarati   |   53.1    |    51.8 |
| Punjabi    |   57.8    |    56.7 |
| Telugu     |   45.5    |    44.6 |
| Tamil      |   39.1    |    38.7 |

**Indic to English**

| Language   | IT2       | Krutrim |
|------------|-----------|---------|
| Bengali    |    58.4   |  58.3   |
| Hindi      |    60.1   |  59.0   |
| Kannada    |    47.5   |  47.3   |
| Marathi    |    58.5   |  58.0   |
| Malayalam  |    54.3   |  53.7   |
| Gujarati   |    62     |  60.6   |
| Punjabi    |    62.7   |  60.8   |
| Telugu     |    52.9   |  52.0   |
| Tamil      |    45.8   |  45.6   |


## Installation Instructions
1. **Download model weights**  
   Run the following script to download the required model weights:  
   ```bash
   ./static_data_builder.sh
   ```

2. **Set up the environment**  
   Install the necessary dependencies:  
   ```bash
   source install.sh
   ```

3. **Usage**\
   Follow example.ipynb to run inference using ctranslate2 model.


## API Platform

## License
## Citation
## Contact