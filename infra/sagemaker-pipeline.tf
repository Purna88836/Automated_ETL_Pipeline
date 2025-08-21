resource "aws_sagemaker_model" "example" {
  name                 = "example-model"
  execution_role_arn   = aws_iam_role.sagemaker_execution_role.arn
  primary_container {
    image               = "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-sagemaker-image:latest"
    model_data_url      = "s3://my-bucket/model.tar.gz"
  }
}

resource "aws_sagemaker_endpoint_configuration" "example" {
  name = "example-endpoint-config"
  production_variants {
    variant_name           = "AllTraffic"
    model_name             = aws_sagemaker_model.example.name
    initial_instance_count = 1
    instance_type          = "ml.m5.large"
  }
}

resource "aws_sagemaker_endpoint" "example" {
  endpoint_name = "example-endpoint"
  endpoint_config_name = aws_sagemaker_endpoint_configuration.example.name
}