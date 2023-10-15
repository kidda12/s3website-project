# create s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = var.BucketName
}

# add ownership to the bucket

resource "aws_s3_bucket_ownership_controls" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# making the bucket public 
resource "aws_s3_bucket_public_access_block" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
# acls
resource "aws_s3_bucket_acl" "mybucket" {
  depends_on = [
    aws_s3_bucket_ownership_controls.mybucket,
    aws_s3_bucket_public_access_block.mybucket,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

# adding object 

# object index.html

resource "aws_s3_object" "prtc" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "prct.html"
  source       = "./portfolio.github.io/html/prct.html"
  acl          = "public-read"
  content_type = "text/html"
}




# resource "aws_s3_object" "images" {
#   count  = length(var.image_filenames)
#   bucket = aws_s3_bucket.mybucket.id
#   key    = "images/${var.image_filenames[count.index]}"
#   source = "./portfolio.github.io/images/${var.image_filenames[count.index]}"
#   acl    = "public-read"
# }

# adding images

resource "aws_s3_object" "image-01jpg" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "1.jpg"
  source = "./portfolio.github.io/images/1.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-01" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "1.gif"
  source = "./portfolio.github.io/images/1.gif"
  acl    = "public-read"
}
resource "aws_s3_object" "image-2" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "2.jpg"
  source = "./portfolio.github.io/images/2.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-3" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "3.jpg"
  source = "./portfolio.github.io/images/3.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-4" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "4.jpg"
  source = "./portfolio.github.io/images/4.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-5jpg" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "5.jpg"
  source = "./portfolio.github.io/images/5.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-5png" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "5.png"
  source = "./portfolio.github.io/images/5.png"
  acl    = "public-read"
}
resource "aws_s3_object" "image-06" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "6.jpg"
  source = "./portfolio.github.io/images/6.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-07" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "7.gif"
  source = "./portfolio.github.io/images/7.gif"
  acl    = "public-read"
}
resource "aws_s3_object" "image-acess" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "acess.webp"
  source = "./portfolio.github.io/images/acess.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-a" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "a.webp"
  source = "./portfolio.github.io/images/a.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-apc" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "apc.webp"
  source = "./portfolio.github.io/images/apc.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-b" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "b.webp"
  source = "./portfolio.github.io/images/b.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-barcardi" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "barcardi.png_BkLCZocIq.webp"
  source = "./portfolio.github.io/images/barcardi.png_BkLCZocIq.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-beauty" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "beauty2.jpg"
  source = "./portfolio.github.io/images/beauty2.jpg"
  acl    = "public-read"
}
resource "aws_s3_object" "image-bf" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "bf.webp"
  source = "./portfolio.github.io/images/bf.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-bg-icons" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "Bg-icons.webp"
  source = "./portfolio.github.io/images/Bg-icons.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-ble" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "ble.webp"
  source = "./portfolio.github.io/images/ble.webp"
  acl    = "public-read"
}
resource "aws_s3_object" "image-ble2" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "ble2.webp"
  source = "./portfolio.github.io/images/ble2.webp"
  acl    = "public-read"
}
# object profile.jpg
resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "profile.jpg"
  source = "./portfolio.github.io/images/profile.jpg"
  acl    = "public-read"
}

# Adding konga.html
resource "aws_s3_object" "konga" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "konga.html"
  source       = "./portfolio.github.io/html/konga.html"
  acl          = "public-read"
  content_type = "text/html"
}

# object error.html
resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "error.html"
  source       = "./portfolio.github.io/html/error.html"
  acl          = "public-read"
  content_type = "text/html"
}



# static website enabling
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id

  index_document {
    suffix = "konga.html"
  }

  error_document {
    key = "error.html"
  }
  depends_on = [aws_s3_bucket_acl.mybucket]
}




