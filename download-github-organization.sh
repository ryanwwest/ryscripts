# original: https://medium.com/@kevinsimper/how-to-clone-all-repositories-in-a-github-organization-8ccc6c4bd9df

org=$1

if [ -z $org ]; then
	read -p "Enter the file type to count lines from: " lang
fi


curl -s https://$GITHUB_AT:@api.github.com/orgs/$org/repos?per_page=200 | jq .[].ssh_url | xargs -n 1 git clone
