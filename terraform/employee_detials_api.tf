resource "aws_api_gateway_rest_api" "details_api" {
  name        = "EmployeeDetailsApi"
  description = "This is my API for interfacing with an employees database"
}
