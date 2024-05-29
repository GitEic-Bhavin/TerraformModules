variable "allocate_storage" {
    default = 10
}
variable "db_name" {
    default = "bhavin"
}
variable "engine" {
    default = "mysql"
}
variable "engine_version" {
    default = "8.0.35"
}
variable "instance_class" {
    default = "db.t3.micro"
}
variable "username" {
    default = "admin"
}
variable "password" {
    default = "admin123"
}
variable "parameter_group_name" {
    default = "default.mysql8.0" 
}
variable "final_snapshot_identifier" {
    default = "i-skip-snapshot"
}
variable "skip_final_snapshot" {
    default = "false" 
}
variable "owner" {
    default = "bhavin.bhavsar@einfochips.com"
}
variable "DM" {
    default = "sachin koshti"
}
variable "Department" {
    default = "PES"
}
variable "End_Date" {
    default = "29 May 2024"
}
variable "sg_id" {
    description = "take output of security group fork output.tf and use as input in rds block"
    # default = module.SG.output.aws_security_group.my-sg.id
}