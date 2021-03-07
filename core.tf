#test
resource "oci_core_vcn" "simple-vcn" {
 cidr_block = "10.0.0.0/16"
 dns_label = "vcn1"
 compartment_id= "ocid1.compartment.oc1..aaaaaaaauh6e6z6lq7ynpuqiwmip42znv3unf2cqekkcpabslvy4bttvvxsq"
 display_name = "simple-vcn"
}
