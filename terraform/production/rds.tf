resource "aws_rds_cluster" "primary" {
  cluster_identifier      = "primary"
  engine                  = "aurora-postgresql"
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

resource "aws_rds_cluster_instance" "primary" {
  count              = 1
  identifier         = "primary-${count.index}"
  cluster_identifier = aws_rds_cluster.primary.id
  instance_class     = "db.t3.medium"
  engine             = aws_rds_cluster.primary.engine
  engine_version     = aws_rds_cluster.primary.engine_version
}
