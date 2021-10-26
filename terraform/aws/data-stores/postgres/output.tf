output "address" {
  value = aws_db_instance.external_datastore.address
  description = "URI for database connection."
}

output "port" {
  value = aws_db_instance.external_datastore.port
  description = "port the database is listening on."
}