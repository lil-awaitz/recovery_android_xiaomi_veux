#!/system/bin/sh
# This script is needed to automatically set device props.

load_veux()
{
    resetprop "ro.product.model" "2201116SG"
    resetprop "ro.product.vendor.model" "2201116SG"
    resetprop "ro.product.name" "veux"
    resetprop "ro.build.product" "veux"
    resetprop "ro.product.device" "veux"
    resetprop "ro.product.system.device" "veux"
    resetprop "ro.product.vendor.device" "veux"
    resetprop "ro.vendor.product.device" "veux"
}

load_veux_p()
{
    resetprop "ro.product.model" "2201116PG"
    resetprop "ro.product.vendor.model" "2201116PG"
    resetprop "ro.product.name" "veux_p"
    resetprop "ro.build.product" "veux_p"
    resetprop "ro.product.device" "veux_p"
    resetprop "ro.product.system.device" "veux_p"
    resetprop "ro.product.vendor.device" "veux_p"
    resetprop "ro.vendor.product.device" "veux_p"
}

load_peux()
{
    resetprop "ro.product.model" "2201116SI"
    resetprop "ro.product.vendor.model" "2201116SI"
    resetprop "ro.product.name" "peux"
    resetprop "ro.build.product" "peux"
    resetprop "ro.product.device" "peux"
    resetprop "ro.product.system.device" "peux"
    resetprop "ro.product.vendor.device" "peux"
    resetprop "ro.vendor.product.device" "peux"
}

load_peux_p()
{
    resetprop "ro.product.model" "2201116SI"
    resetprop "ro.product.vendor.model" "2201116SI"
    resetprop "ro.product.name" "peux_p"
    resetprop "ro.build.product" "peux_p"
    resetprop "ro.product.device" "peux_p"
    resetprop "ro.product.system.device" "peux_p"
    resetprop "ro.product.vendor.device" "peux_p"
    resetprop "ro.vendor.product.device" "peux_p"
}

project=$(getprop ro.boot.hwc)
echo $project

case $project in
    "GLOBAL")
        load_veux
        ;;
	    *)
        load_veux_p
        ;;
    "INDIA")
        load_peux
        ;;
    *)
        load_peux_p
        ;;
esac

exit 0