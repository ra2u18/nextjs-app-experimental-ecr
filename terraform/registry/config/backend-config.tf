bucket                      = "progresso-terraform-states"
key                         = "ci-cd-example.tfstate"
region                      = "eu-west-2"
encrypt                     = true
dynamodb_table              = "terraform-locks"
