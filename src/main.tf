resource "aws_db_instance" "mysql" {
  engine               = "mysql"
  identifier           = "mysql-techchallenge"
  allocated_storage    = "20"
  instance_class       = "db.t2.micro"
  username             = var.mysql_user
  password             = var.mysql_password
  vpc_security_group_ids = [aws_security_group.sg.id]
  skip_final_snapshot  = true
  publicly_accessible  = true
  port                 = "3306"
}