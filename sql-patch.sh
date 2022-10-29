#!/bin/bash
gcloud sql instances patch ducanh-sql-instance --project om-hkt21-team10 --activation-policy=ALWAYS 
gcloud sql instances patch ducanh-sql-instance2 --project om-hkt21-team10 --activation-policy=ALWAYS
gcloud sql instances patch ducanh-sql-instance3 --project om-hkt21-team10 --activation-policy=ALWAYS
gcloud sql instances patch ducanh-sql-instance4 --project om-hkt21-team10 --activation-policy=ALWAYS


# gcloud sql instances create ducanh-sql-instance2 --root-password=abc123 --database-version=MYSQL_5_6 --cpu=1 --memory=3.75GiB --region=asia-east1 --project=om-hkt21-team10
# gcloud sql instances create ducanh-sql-instance3 --root-password=abc123 --database-version=MYSQL_5_6 --cpu=1 --memory=3.75GiB --region=asia-east1 --project=om-hkt21-team10
# gcloud sql instances create ducanh-sql-instance4 --root-password=abc123 --database-version=MYSQL_5_6 --cpu=1 --memory=3.75GiB --region=asia-east1 --project=om-hkt21-team10
