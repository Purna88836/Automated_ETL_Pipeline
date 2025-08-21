output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.private_subnet_ids
}

output "ec2_instance_ids" {
  value = module.ec2_instances.instance_ids
}

output "lambda_function_name" {
  value = module.lambda.function_name
}