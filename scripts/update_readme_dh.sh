set -x
set -e

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

FILE_LIST=$(find ${SCRIPTPATH}/../community_images/ -type f -name "README.md")

for f in ${FILE_LIST}
do
 sed 's/img_github/img_dockerhub/g' $f > $f.dockerhub
done
