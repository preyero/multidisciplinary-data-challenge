DATASET_NAME=data-challenge


ANSWER_FILE_DIR=$(pwd)/datathon_results/answers/team_1

# Generate results.tsv inside each team folder
!docker run --mount type=bind,source=$ANSWER_FILE_DIR,target=/aaa/output/answer_files aaa python3 eval.py --dataset_name $DATASET_NAME
