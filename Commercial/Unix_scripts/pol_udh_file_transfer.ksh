. /app/etl/pol/scripts/pol.cfg
LOG_DT()
{
date +"[%a %b %d %H:%M:%S %Y] Updated: "
}

p_udh_OBJECT_NAME=$1

if [[ $# -ne 1 ]]
then
echo "Required argument is 1 and passed argument is $# . Please pass valid arguments." >> $v_LOG_FILE
echo "Please check the log file for more details."
exit 1
fi

v_LOG_FILE="$LOG_PATH"/udh_s3_file_transfer_"$DT".log
v_NO_FILES_IN_S3_CONTENT=$SRC_PATH/udh_no_s3_files_email_content.csv

v_file_count=`aws s3 ls s3://sfa-ftp-qa/udh/ | wc -l`
echo "Number of files in the S3 bucket $v_file_count"

if [ $v_file_count -gt 1 ];then
#aws s3 cp s3://sfa-ftp-qa/frm/ /app/etl/frm/archive/inbound/raw/ --recursive
aws s3 cp s3://sfa-ftp-qa/udh/ /app/etl/pol/archive/inbound/raw/ --recursive --exclude "*" --include "$p_udh_OBJECT_NAME*"
if [ $? !=  0 ];
then
echo "exit status is $?. Please check the log file $v_LOG_FILE for more details."
echo "$(LOG_DT) Error occured while moving files from S3 bucket to local path" >> $v_LOG_FILE
exit 1
else "Files backed up before movement successfully" >> $v_LOG_FILE
fi

aws s3 mv s3://sfa-ftp-qa/udh/ /app/etl/pol/inbound/raw/ --recursive --exclude "*" --include "$p_udh_OBJECT_NAME*"
#aws s3 mv s3://sfa-ftp-qa/udh/ /app/etl/udh/inbound/raw/ --recursive

v_s3_RETURN_CD=$?

if [ $v_s3_RETURN_CD !=  0 ];
then
echo "exit status is $v_s3_RETURN_CD. Please check the log file $v_LOG_FILE for more details."
echo "$(LOG_DT) Error occured while moving files from S3 bucket to local path" >> $v_LOG_FILE
exit 2
else
echo "$(LOG_DT)Files scussesfully moved from S3 to /app/etl/udh/inbound/raw/ path" >> $v_LOG_FILE
echo  "$p_udh_OBJECT_NAME" >> $v_LOG_FILE
#Removing any pre-existing file
cd $INBOUND_PATH/raw
#echo "directory is: " >> $PWD
#touch LISTFILE.list
ls "$p_udh_OBJECT_NAME"* >> $p_udh_OBJECT_NAME.list
echo "list file creation successful" >> $v_LOG_FILE
chmod 777 $p_udh_OBJECT_NAME.list
echo "permission set successful" >> $v_LOG_FILE
#cp -p /app/etl/frm/frm_work/*_20000101012345.txt /app/etl/frm/inbound/raw
#l_udh_file_transfer.ksh

fi
else
echo "$(LOG_DT)No files found in S3 for processing.please check with source team" >> $v_LOG_FILE
cat "$v_NO_FILES_IN_S3_CONTENT" | mailx -i -r "$MAIL_FROM" -s  "UDH Integration:No files found in S3 Bucket" "$TEAM_MAIL_LIST"
#exit 3
fi

