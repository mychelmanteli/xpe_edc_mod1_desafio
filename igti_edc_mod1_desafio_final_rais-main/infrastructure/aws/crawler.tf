resource "aws_glue_crawler" "glue_crawler" {
  database_name = "igti_du"
  name          = "igti_rais_processing_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://igti-mychel-rais-prod-processing-zone-423657377942/rais/"
  }

  tags = local.common_tags



}