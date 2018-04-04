# https://news.ycombinator.com/item?id=14540986
alias tfplan='terraform plan -out=.tfplan -refresh=false'
alias tffreshplan='terraform plan -out=.tfplan'
alias tfapply='terraform apply .tfplan; rm .tfplan'
