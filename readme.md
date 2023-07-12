# multidisciplinary-data-challenge

This repository contains the data and code to reproduce the NoBIAS 2023 Data Challenge. The goal is to set an example and promote multidisciplinary participation in the discourse of technology development to address societal challenges.

Ultimately, this challenge aims to spark discussion and critical reflections on bias and hate speech detection through a problem-solving scenario.

<p align="center">
 <img src="challenge/slides/Example_prompts.png" alt="drawing" width="800" class="center"/>
</p>

## Contents

- The `preparation` folder contains scripts to create the [data](preparation/1_prepare_data.ipynb) and [evaluation files](preparation/2_prepare_evaluation.ipynb). Given the list of submissions, the [evaluation](preparation/3_evaluation.ipynb) computes the challenge results.
- The `challenge` folder includes the resulting files required and supporting to run the challenge (i.e., the folder to share with the participants). These include a slide deck with detailed instructions, motivation, schedule for a one-day session, and a bibliography folder.

## Outputs

Here we provide more detailed instructions on what outputs each Jupyter Notebook generates: 

- [data](preparation/1_prepare_data.ipynb): generates files for participants to train the models (`challenge/data/[train_aggregate, train].csv`) and the files required to generate the adversarial tests (`preparation/Adversifier/mhs/[aaa_train, test].csv`, ) 
- [evaluation files](preparation/2_prepare_evaluation.ipynb) is based on Docker, and exports o the evaluation folder to share with participants the static and dynamic files for testing the models (`challenge/eval_files/[corr_a_to_a/corr_n_to_a,f1_o,flip_n_to_a/hashtag_check/quoting_a_to_n/static].tsv`).
- [evaluation](preparation/3_evaluation.ipynb) computes the results once all participants have submitted their predictions and these are included in the `preparation/Adversifier/datathon_results/team_{}` folder. The notebook outputs (in `datathon_results/answers` folder) a `results.tsv` file in each individual team folder, and a common `hatecheck.csv` file including each teams predictions as additional columns.

## Requirements

The `challenge` is designed to run in a Google Colab environment. Together with the *data* and *eval_files* generated with 1 and 2 notebooks, participants start working the following supporting notebooks:

- Part one in <a target="_blank" href="https://colab.research.google.com/github/https://anonymous.4open.science/r/multidisciplinary-data-challenge-F79F/challenge/Challenge_part1.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>]: basic data loading functions and features to get started.
- Part two in <a target="_blank" href="https://colab.research.google.com/github/https://anonymous.4open.science/r/multidisciplinary-data-challenge-F79F/challenge/Challenge_part2.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>]: example hate speech classifier and evaluation instruments to conduct example-based bias assessments of the proposed models.

`Preparation` notebooks and scripts were run in a Conda environment in Python 3.10.

```commandline
    $ conda create --name <env_name> --file conda-file.txt python=3.10
    $ conda activate <env_name>
    # Inside virtual environment to run notebooks with this conda environment
    (<env_name>) $ python -m ipykernel install --user --name=<env_name>
    (<env_name>) $ jupyter notebook
```
