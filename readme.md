[![DOI](https://zenodo.org/badge/665530454.svg)](https://zenodo.org/badge/latestdoi/665530454)

# multidisciplinary-data-challenge

This repository contains the data and code of the NoBIAS 2023 Data Challenge. The goal is to set an example and promote multidisciplinary participation in the discourse of technology development to address societal challenges.

In a nutshell, this were the 🗝️ ingredients for the challenge:

* 🔎 Evaluation: Using *informative* metrics to inspect specific model behaviours (e.g., adversarial benchmarks and test suites in the case of 🤬 hate speech detection).
* 📝 Data: include a *rich* set of annotations to enable more nuanced considerations (e.g., the non-aggregated data, demographic information of the annotators, and about the target groups in the hate speech texts).
* 💡 Task: enable *open-ended feedback* to promote the generation of knowledge. The [Figure](challenge/slides/Example_prompts.png) below shows example prompts that were used to spark discussion and critical reflection on bias through this problem-solving scenario.


<p align="center">
 <img src="challenge/slides/Example_prompts.png" alt="drawing" width="800" class="center"/>
</p>

## Contents

- The `preparation` folder contains scripts to create the [data](preparation/1_prepare_data.ipynb) and [evaluation files](preparation/2_prepare_evaluation.ipynb). Given the list of submissions, the [evaluation](preparation/3_evaluation.ipynb) notebook computes the challenge results.
- The `challenge` folder is the one shared with the participants. It includes the files required to run the challenge and supporting materials: a slide deck with detailed instructions, motivation, schedule for a one-day session, and a bibliography.

## Preparation

Here we provide more detailed instructions on what outputs each Jupyter Notebook generates: 

- [data](preparation/1_prepare_data.ipynb): generates files for participants to train the models (`challenge/data/[train_aggregate, train].csv`) and to generate adversarial tests (`preparation/Adversifier/mhs/[aaa_train, aaa_test].csv`, ) 
- [evaluation files](preparation/2_prepare_evaluation.ipynb), based on Docker, exports to evaluation folder the TSV static and dynamic files for testing the models (`challenge/eval_files/[corr_a_to_a/corr_n_to_a,f1_o,flip_n_to_a/hashtag_check/quoting_a_to_n/static].tsv`). 
- [evaluation](preparation/3_evaluation.ipynb) runs the evaluation once all participants submit their predictions to the `preparation/Adversifier/datathon_results/predictions/team_{}` folder. It outputs (in `datathon_results/answers` folder) a `results.tsv` file in each individual team folder, and a common `hatecheck.csv` file including each teams predictions as additional columns.

## Requirements

The `challenge` is designed to run in a Google Colab environment. Participants can get started with:

- Part [one](challenge/Challenge_part1.ipynb) in <a target="_blank" href="https://colab.research.google.com/github/preyero/multidisciplinary-data-challenge/blob/master/challenge/Challenge_part1.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>: basic data loading functions and features to get started.
- Part [two](challenge/Challenge_part2.ipynb) in <a target="_blank" href="https://colab.research.google.com/github/preyero/multidisciplinary-data-challenge/blob/master/challenge/Challenge_part2.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>: including a hate speech classifier and evaluation instruments to conduct an example-based analysis of bias in the proposed models.

`Preparation` notebooks and scripts were run in a Conda environment in Python 3.10.

```commandline
    $ conda create --name <env_name> --file conda-file.txt python=3.10
    $ conda activate <env_name>
    # Inside virtual environment to run notebooks with this conda environment
    (<env_name>) $ python -m ipykernel install --user --name=<env_name>
    (<env_name>) $ jupyter notebook
```

## Contact

We published a [paper](https://dl.acm.org/doi/10.1145/3625007.3627491) ([slides](preparation/submission_8553.pdf)) with the considerations and results from this data challenge.

Reach out if you have any questions [📧](mailto:paula.reyero-lobo@open.ac.uk), especially if you are looking to involve multiple disciplines to work ⚙️ hands-on a problem!

```
@inproceedings{10.1145/3625007.3627491,
author = {Reyero Lobo, Paula and Kwarteng, Joseph and Russo, Mayra and Fahimi, Miriam and Scott, Kristen and Ferrara, Antonio and Sen, Indira and Fernandez, Miriam},
title = {A Multidisciplinary Lens of Bias in Hate Speech},
year = {2024},
isbn = {9798400704093},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3625007.3627491},
doi = {10.1145/3625007.3627491},
abstract = {Hate speech detection systems may exhibit discriminatory behaviours. Research in this field has focused primarily on issues of discrimination toward the language use of minoritised communities and non-White aligned English. The interrelated issues of bias, model robustness, and disproportionate harms are weakly addressed by recent evaluation approaches, which capture them only implicitly. In this paper, we recruit a multidisciplinary group of experts to bring closer this divide between fairness and trustworthy model evaluation. Specifically, we encourage the experts to discuss not only the technical, but the social, ethical, and legal aspects of this timely issue. The discussion sheds light on critical bias facets that require careful considerations when deploying hate speech detection systems in society. Crucially, they bring clarity to different approaches for assessing, becoming aware of bias from a broader perspective, and offer valuable recommendations for future research in this field.},
booktitle = {Proceedings of the International Conference on Advances in Social Networks Analysis and Mining},
pages = {121–125},
numpages = {5},
keywords = {hate speech, bias, multidisciplinary methods},
location = {<conf-loc>, <city>Kusadasi</city>, <country>Turkiye</country>, </conf-loc>},
series = {ASONAM '23}
}

```