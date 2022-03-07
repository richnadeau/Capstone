#! /bin/bash

curl -i -s -k -X $'POST' \
    -H $'Host: 127.0.0.1:3000' -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H $'Accept-Language: en-US,en;q=0.5' -H $'Accept-Encoding: gzip, deflate' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Content-Length: 738' -H $'Origin: null' -H $'Connection: close' -H $'Upgrade-Insecure-Requests: 1' \
    -b $'lang=en-US; i_like_gitea=d093ded60f53aa16; _csrf=Iml6g5XtGqsV73_52hOYWLxuOeI6MTY0NjI2Mjg5NjYzNDM4NDMzNQ' \
    --data-binary $'db_type=MySQL&db_host=127.0.0.1%3A3306&db_user=gitea&db_passwd=gitea&db_name=giteadb&ssl_mode=disable&db_schema=&charset=utf8&db_path=%2Fvar%2Flib%2Fgitea%2Fdata%2Fgitea.db&app_name=Gitea%3A+Git+with+a+cup+of+tea&repo_root_path=%2Fhome%2Fgit%2Fgitea-repositories&lfs_root_path=%2Fvar%2Flib%2Fgitea%2Fdata%2Flfs&run_user=git&domain=localhost&ssh_port=22&http_port=3000&app_url=http%3A%2F%2Flocalhost%3A3000%2F&log_root_path=%2Fvar%2Flib%2Fgitea%2Flog&smtp_host=&smtp_from=&smtp_user=&smtp_passwd=&enable_federated_avatar=on&enable_open_id_sign_in=on&enable_open_id_sign_up=on&default_allow_create_organization=on&default_enable_timetracking=on&no_reply_address=noreply.localhost&admin_name=&admin_passwd=&admin_confirm_passwd=&admin_email=' \
    $'http://127.0.0.1:3000/install'

sleep 10

curl -i -s -k -X $'POST' \
    -H $'Host: 127.0.0.1:3000' -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H $'Accept-Language: en-US,en;q=0.5' -H $'Accept-Encoding: gzip, deflate' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Content-Length: 146' -H $'Origin: null' -H $'Connection: close' -H $'Upgrade-Insecure-Requests: 1' \
    -b $'lang=en-US; i_like_gitea=d093ded60f53aa16; _csrf=Iml6g5XtGqsV73_52hOYWLxuOeI6MTY0NjI2Mjg5NjYzNDM4NDMzNQ; redirect_to=%2Fuser%2Fsign_up' \
    --data-binary $'_csrf=Iml6g5XtGqsV73_52hOYWLxuOeI6MTY0NjI2Mjg5NjYzNDM4NDMzNQ&user_name=arwen&email=arwen%40localhost.com&password=Passw0rd%231&retype=Passw0rd%231' \
    $'http://127.0.0.1:3000/user/sign_up'

sleep 10
