# multidisciplinary-data-challenge

This repository contains the data and code to reproduce the NoBIAS 2023 Data Challenge. The goal is to set an example and promote multidisciplinary participation in the discourse of technology development to address societal challenges.

Ultimately, this challenge aims to spark discussion and critical reflections on bias and hate speech detection through a problem-solving scenario.

<p align="center">
 <img src="challenge/slides/Example_prompts.png" alt="drawing" width="800" class="center"/>
</p>

## Contents

- The `preparation` folder contains scripts to create the [data](preparation/1_prepare_data.ipynb) and [evaluation files](preparation/2_prepare_evaluation.ipynb). Given the list of submissions, the [evaluation](preparation/3_evaluation.ipynb) computes the challenge results.
- The `challenge` folder includes the resulting files required and supporting to run the challenge (i.e., the folder to share with the participants). These include a slide deck with detailed instructions, motivation, schedule for a one-day session, and bibliography files.

## Requirements

The `challenge` is designed to run in a Google Colab environment.
- Part one [open in colab]: basic data loading functions and features to get started.
- Part two [open in colab]: example hate speech classifier and evaluation instruments to conduct example-based bias assessments of the proposed models.

`Preparation` notebooks and scripts were run in a Conda environment in Python 3.10.


