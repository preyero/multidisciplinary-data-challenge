AAA_FILE_DIR=$(pwd)/mhs
TRAINING_SET=aaa_train.csv
TEST_SET=aaa_test.csv
DATASET_NAME=data-challenge

echo $AAA_FILE_DIR

# Generate :
# test_names = ['quoting_a_to_n', 'flip_n_to_a', 'corr_a_to_a', 'corr_n_to_n']
# other = ['f1_o', 'hashtag_check']
!docker run --mount type=bind,source=$AAA_FILE_DIR,target=/aaa/input aaa python3 gen.py --dataset_name $DATASET_NAME --train $TRAINING_SET --test $TEST_SET
