resource "aws_api_gateway_rest_api" "details_api" {
  name        = "EmployeeDetailsApi"
  description = "This is my API for interfacing with an employees database"
}

resource "aws_api_gateway_resource" "customer_details_endpoint" {
  rest_api_id = "${aws_api_gateway_rest_api.details_api.id}"
  parent_id   = "${aws_api_gateway_rest_api.details_api.root_resource_id}"
  path_part   = "getCustomerDetailsById"
}

resource "aws_api_gateway_method" "get_customer_details" {
  rest_api_id   = "${aws_api_gateway_rest_api.details_api.id}"
  resource_id   = "${aws_api_gateway_resource.customer_details_endpoint.id}"
  http_method   = "GET"
  authorization = "NONE"
}
