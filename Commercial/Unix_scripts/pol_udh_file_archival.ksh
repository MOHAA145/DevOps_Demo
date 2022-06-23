#!/bin/bash
. /app/etl/pol/scripts/pol.cfg

####################### Folder to store all intermittent files for each run #

mkdir -m 777 "$ARCH_INBOUND_PATH"/udh_data_acquisition_file_archival
FOLDER_PATH=udh_data_acquisition_file_archival

####################### remove any previous files ###########################

v_FILE_CNT_ARCH=`ls "$ARCH_INBOUND_PATH"/*_transactions_std_* | wc -l`
if [ $v_FILE_CNT_ARCH -gt 0 ];then
cd "$ARCH_INBOUND_PATH"
rm *_transactions_std_*
fi

v_FILE_CNT=`ls "$INBOUND_RAW_PATH"/*_transactions_std_* | wc -l`
v_LIST_FILE="$INBOUND_RAW_PATH"/udh_data_acquisition_file_archival.list


if [ $v_FILE_CNT -gt 0 ];then
cd "$INBOUND_RAW_PATH"
ls *_transactions_std_* > "$v_LIST_FILE"
fi

cat "$v_LIST_FILE" | while read file
do
mv "$file" "$ARCH_INBOUND_PATH"/"$FOLDER_PATH"/"$file"_"$DT"
done

if [[ -s "$INBOUND_RAW_PATH"/udh_data_acquisition_file_archival.list ]];then
mv "$INBOUND_RAW_PATH"/udh_data_acquisition_file_archival.list "$ARCH_INBOUND_PATH"/"$FOLDER_PATH"/udh_data_acquisition_file_archival_"$DT"
fi

zip -r "$ARCH_INBOUND_PATH"/udh_data_acquisition_file_archival_"$DT".zip "$ARCH_INBOUND_PATH"/udh_data_acquisition_file_archival

#if [[ -s "$ARCH_INBOUND_PATH"/udh_data_acquisition_file_archival ]];then
#rm "$ARCH_INBOUND_PATH"/udh_data_acquisition_file_archival
#fi

echo " Script completed Successfully"
