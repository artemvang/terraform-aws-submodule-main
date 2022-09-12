module "v1" {
 source = "./sub1"
}
module "v5" {
 source = "./ec2"
} 

 module "v3" {
 source = "./fol1"
} 
  module "v2" {
 source = "./fol2"
} 
   module "v4" {
 source = "./fol3"
} 
    module "v6" {
 source = "./fol4"
} 
