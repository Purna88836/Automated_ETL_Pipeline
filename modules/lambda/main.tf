variable "function_name" {
  type = string
}

resource "aws_lambda_function" "hello_world" {
  function_name = var.function_name
  runtime = "nodejs14.x"
  role = aws_iam_role.lambda_exec.arn
  handler = "index.handler"
  source_code_hash = filebase64sha256("lambda.zip")
  filename = "lambda.zip"
  tags = {
    Name = "lambda-${var.function_name}"
  }
}

resource "aws_iam_role" "lambda_exec" {
  name = "lambda_exec_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}