## huobi
- curl -sL https://www.huobi.com/-/x/hbg/v1/hbg/open/client/list | jq ".data.huobiPro[2].s3Url" | sed 's#"##g'