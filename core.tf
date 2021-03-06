provider "oci" {
  tenancy_ocid     = "ocid1.compartment.oc1..aaaaaaaauh6e6z6lq7ynpuqiwmip42znv3unf2cqekkcpabslvy4bttvvxsq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaa4kqrwgp53vy3u3xx7ktac2aewpgucq36mgkpv6g37ydentkpncia"
  fingerprint      = "dc:db:12:af:68:e7:b7:06:c1:d0:77:5f:3c:96:e8:75"
  private_key_path = "/home/opc/.oci/oci_api_key.pem"
  region           = "us-ashburn-1"
}

resource "oci_core_vcn" "simple-vcn" {
 cidr_block = "10.0.0.0/16"
 dns_label = "vcn1"
 compartment_id= "ocid1.compartment.oc1..aaaaaaaauh6e6z6lq7ynpuqiwmip42znv3unf2cqekkcpabslvy4bttvvxsq"
 display_name = "simple-vcn"
}
