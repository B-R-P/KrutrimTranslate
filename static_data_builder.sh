echo "Creating Static Directory"
mkdir static_data
cd static_data
aws s3 cp s3://llm-spark/zaid/bhashik_static_data/ct_model_english_indic_360M/ ct_model_english_indic --recursive
aws s3 cp s3://llm-spark/zaid/bhashik_static_data/ct_model_indic_english_360M/ ct_model_indic_english --recursive
echo "Static Directory Download Complete"