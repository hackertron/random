
counter=0
echo "$counter"

path="$HOME/.local/share/error_script_files"
echo "$path"

if [ ! -d "$path" ]; then
  mkdir -p "$path";
fi

cd "$path"

pwd

if [ -e counter.txt ]
then
    echo "ok"
else
    echo "$counter" >> counter.txt
fi

cat counter.txt

grep -i 'error\|warning' /var/log/syslog >> logs.txt


while [[ true ]]; do
	#statements
	#statements
	grep -i 'error\|warning' /var/log/syslog >> log.txt
	diff logs.txt log.txt
	if [ $? -ne 0 ]; then
		diff logs.txt log.txt > change.txt
		rm logs.txt
		mv log.txt logs.txt
		wc -l < change.txt > counter.txt
		counter=$(cat counter.txt)
		msg=$(cat change.txt)
		mail -s "$counter Errors" your@mail.com < "$msg"
		counter=0 
	fi
done

# mutt  -s "Subject of Mail" -a <path of  attachment file> -c <email address of CC>  mail address of recipient
