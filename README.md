# Krutrim Translate

## Introduction 
The Krutrim translate model translates the input text into one of the chosen Indic languages. To build Krutrim translate, we increased the context length of the popular IndicTrans2 translation model, extending it from 256 to 4096. For training, we leveraged the Bharat Parallel Corpus Collection (BPCC) while also augmenting it with our own data to enhance performance.

Furthermore, to improve latency, we explored various architectures for both training and distillation. We are open-sourcing the distilled version with 6 encoder and 3 decoder layers, supporting translation in both directions: English to Indic and Indic to English. This architecture achieves at least a 4x reduction in latency compared to both the original IndicTrans2 and the distilled IndicTrans2 models, with minimal decline in performance.

The following is the list of languages supported by our model: English, Bengali, Hindi, Kannada, Marathi, Malayalam, Gujarati, Telugu, and Tamil.

## Key Features
- Long context: up to 4096 tokens
- Fast latency: 4X better than IndicTrans2 distilled models


## Model Summary
Krutrim translation model is a transformer based sequence to sequence model, with six encoders and three decoders. The training process was conducted in four stages:

Stage 1 – Initial training on a large transformer model (16 encoder and decoder layers)\
Stage 2 – Fine-tuning the large transformer model\
Stage 3 – Back translation on large transformer model\
Stage 4 – Distillation of the large transformer model obtained in Stage 3

## Evaluation Results

As we benchmarked our model against IndicTrans2, we evaluated its performance using the IN22-gen and IN22-conv datasets. The IndicTrans2 results were sourced from their research paper. Below, we present a comparison of the CHRF++ scores achieved by both models.

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
Huggingface: https://huggingface.co/krutrim-ai-labs/KrutrimTranslate \
Github: https://github.com/ola-krutrim/KrutrimTranslate \
Krutrim Cloud API access: 

Note: Make sure you have logged into Huggingface using your huggingface token.

1. **Set up the environment**  
   Install the necessary dependencies:  
   ```bash
   source install.sh
   ```

2. **Download model weights**  
   Run the following script to download the required model weights: 
   ```bash
   source static_data_builder.sh
   ```

3. **Usage**\
   Follow `example.ipynb` to run inference using ctranslate2 model.

## License
This code repository and the model weights are licensed under the MIT License.
