lang=$1

# note: this allows other languages but is only optimized for Go
# (by removing the vendor/ directory; all others are searched)

if [ -z $lang ]; then
	read -p "Enter the file type to count lines from: " lang
fi

# TODO: remove this unnecessary print out: wc: ./vendor: read: Is a directory
# excludes vendor directory for Golang
find . -path './vendor' -prune -o -name "*.$lang" | xargs wc -l
