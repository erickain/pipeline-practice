#! /bin/bash
cat <<EOF >check.sh
    USER=${User}
    cat permissions.txt | grep -i $USER
    if [[ $? -eq 0 ]]; then
        echo "You have permission to run this job"
    else
        echo "You do not have permission to run this job"
        exit 1
    fi
EOF
