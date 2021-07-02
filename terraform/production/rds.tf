resource "aws_rds_cluster" "primary" {
  cluster_identifier      = "primary"
  engine                  = "aurora-postgresql"
  engine_mode             = "serverless"
  engine_version          = "12.6"
  availability_zones      = [
    "eu-central-1a",
    "eu-central-1b",
    "eu-central-1c",
  ]
  database_name           = var.db.name
  master_username         = var.db.user
  master_password         = var.db.pass
  backup_retention_period = 7
  preferred_backup_window = "00:00-02:00"
}
