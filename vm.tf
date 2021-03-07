resource "oci_core_instance" "ubuntu_instance" {
    # Required
    #availability_domain = "ocid1.compartment.oc1..aaaaaaaauh6e6z6lq7ynpuqiwmip42znv3unf2cqekkcpabslvy4bttvvxsq"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaauh6e6z6lq7ynpuqiwmip42znv3unf2cqekkcpabslvy4bttvvxsq"
    shape = "VM.Standard.E2.1"
    source_details {
        source_id = "ocid1.image.oc1.iad.aaaaaaaak6gcgvlv3rgnrtztshfybjhbnarc5yakiunl2uu4bdadbmkqsf7q"
        source_type = "image"
    }

    # Optional
    display_name = "<your-ubuntu-instance-name>"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.iad.aaaaaaaa6rghzgkecwfhiy2sfbvci37dmkyyt7e2hipxtpjbvpnuy2kakzwq"
    }
    metadata = {
        ssh_authorized_keys = file("<ssh-public-key-path>")
    }
    preserve_boot_volume = false
}
