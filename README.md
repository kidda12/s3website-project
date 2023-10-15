# Terraform AWS S3 Website Hosting Project

<font color="blue">## Overview</font>

This Terraform project allows you to set up a simple static website hosting infrastructure on Amazon S3. You can use it to host HTML, CSS, JavaScript, and other static assets for your website.

## Prerequisites

Before you begin, make sure you have the following:

- [Terraform](https://www.terraform.io/) installed.
- AWS CLI installed and configured with appropriate credentials.
- Your website files (HTML, CSS, JavaScript, images, etc.) ready in a local directory.

## Project Structure

The project structure is as follows:

- `main.tf`: The main Terraform configuration file that defines the AWS resources.
- `variables.tf`: Defines input variables for customization.
- `outputs.tf`: Defines outputs for referencing after applying the configuration.
- `.terraform/`: The directory where Terraform stores its plugins and modules.

## Configuration

1. Edit the `main.tf` file:

   - Modify the `bucket` name in the `aws_s3_bucket` resource to your desired S3 bucket name.
   - Update the `website` object in the `aws_s3_bucket` resource to set your website configuration.

2. You may also update other variables in the `variables.tf` file, such as region or access control settings.

## Usage

1. Initialize your Terraform workspace:

   ```shell
   terraform init

   ```

2. Create an execution plan:

   ```shell
   terraform plan

   ```

3. Apply the configuration to create AWS resources:

   ```shell
   terraform apply

   ```

4. Upload your website files to the s3 bucket:

   ```shell
   aws s3 sync your-local-directory/ s3://your-bucket-name/

   ```

5. After successfully applying the configuration and uploading your website files, the S3 bucket will be hosting your website. You can find the endpoint in the Terraform outputs.

6. Open your website by visiting: http://your-bucket-name.s3-website.us-west-2.amazonaws.
     OR
7.Access your website via the S3 bucket URL or set up a custom domain through Route 53.

## Tear Down

 To tear down and delete all the AWS resources created by this project:

  ```shell
 terraform destroy.

## NOTE
  Note: Remember to replace "your-bucket-name" and "your-local-directory" with actual values.
  Note: This setup does not include SSL certificates nor CloudFront distribution for HTTPS support. For production websites, you should consider using these services



## Contributing
If you would like to contribute to this project, please open an issue or a pull request.
```
