#!/usr/bin/env bash

# compile a single shell script forthe setup from all the
# shell scripts available.

PROJECT_FOLDER=$(readlink -f "$(dirname "$0")/..")
cd $PROJECT_FOLDER

echo "#!/usr/bin/env bash" > setup.sh
find setup -type f | sort | xargs cat | grep -v '/usr/bin/env bash' >> setup.sh
chmod +x setup.sh
