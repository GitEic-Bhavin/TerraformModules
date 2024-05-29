resource "aws_db_instance" "default" {
  allocated_storage         = var.allocate_storage
  db_name                   = var.db_name
  engine                    = var.engine
  engine_version            = var.engine_version
  instance_class            = var.instance_class
  username                  = var.username
  password                  = var.password
  parameter_group_name      = var.parameter_group_name
  skip_final_snapshot       = var.skip_final_snapshot
  final_snapshot_identifier = var.final_snapshot_identifier

  publicly_accessible = true
  # To make RDS as public while you launch it from terraform.
  
  vpc_security_group_ids = [var.sg_id]

  depends_on = [ var.sg_id ]
  
  tags = {
    "owner"      = var.owner
    "DM"         = var.DM
    "Department" = var.Department
    "End Date"   = var.End_Date
  }
  
}

