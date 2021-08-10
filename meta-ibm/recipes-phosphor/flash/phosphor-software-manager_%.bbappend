BMC_RW_MTD_ibm-ac-server = "bmc"
BMC_RW_MTD_p10bmc = "bmc"
BMC_RW_MTD_mihawk = "bmc"
BMC_RO_MTD_ibm-ac-server = "alt-bmc+bmc"
BMC_RO_MTD_p10bmc = "bmc"
BMC_RO_MTD_mihawk = "alt-bmc+bmc"
BMC_KERNEL_MTD_ibm-ac-server = "bmc"
BMC_KERNEL_MTD_p10bmc = "bmc"
BMC_KERNEL_MTD_mihawk = "bmc"

# Enable signature verification
PACKAGECONFIG_append_ibm-ac-server = " verify_signature"
PACKAGECONFIG_append_p10bmc = " verify_signature"
PACKAGECONFIG_append_mihawk = " verify_signature"

# Enable sync of persistent files to the alternate BMC chip
PACKAGECONFIG_append_ibm-ac-server = " sync_bmc_files"
PACKAGECONFIG_append_mihawk = " sync_bmc_files"

# Set BMC Minimum Ship Level
EXTRA_OEMESON_append_p10bmc = " -Dbmc-msl='fw1020.00-25'"
EXTRA_OEMESON_append_p10bmc = " -Dregex-bmc-msl='([a-z]+[0-9]{2})+([0-9]+).([0-9]+).([0-9]+)'"