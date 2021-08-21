# Chinese NLP explanation
Based on code for [Contextualizing hate speech models with explanations](https://github.com/BrendanKennedy/contextualizing-hate-speech-models-with-explanations)for explaining Chinese Complement Classification Model
Implementation for explaining [Chinese Complement Classification Model]

## Commit Rules
commmit convention [Conventional Commits/Angular convention](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#type) 을 따릅니다.

- build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- ci: Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
- docs: Documentation only changes
- feat: A new feature
- fix: A bug fix
- perf: A code change that improves performance
- refactor: A code change that neither fixes a bug nor adds a feature
- style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- test: Adding missing tests or correcting existing tests

## Requirements
```shell script
conda create -n hiexpl-env python==3.7.4
conda activate hiexpl-env
# modify CUDA version as yours -> use cuda92(cuda90 : error!)
conda install pytorch=0.4.1 cuda92 -c pytorch
pip install nltk numpy scikit-learn scikit-image matplotlib torchtext
# requirements from pytorch-transformers
pip install tokenizers==0.0.11 boto3 filelock requests tqdm regex sentencepiece sacremoses
```

## Running experiments
See `scripts/` for shell scripts for running experiments. For example, to train a model on Gab dataset with SOC regularization, run
```shell scripts
chmod +x ./scripts/*
./scripts/compl_binary.sh
```

## Data

## Reference

```
@inproceedings{kennedy2020contextualizing,
   author = {Kennedy*, Brendan and Jin*, Xisen and Mostafazadeh Davani, Aida and Dehghani, Morteza and Ren, Xiang},
   title = {Contextualizing {H}ate {S}peech {C}lassifiers with {P}ost-hoc {E}xplanation},
   year = {to appear},
   booktitle = {Proceedings of the 58th {A}nnual {M}eeting of the {A}ssociation for {C}omputational {L}inguistics}
} 
```
