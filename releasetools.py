import common
import edify_generator


def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

image_partitions = {
   'emmc_appsboot.mbn' : '/dev/block/mmcblk0p7',
   'NON-HLOS.bin'      : '/dev/block/mmcblk0p1',
   'rpm.mbn'           : '/dev/block/mmcblk0p5',
   'sbl1.mbn'          : '/dev/block/mmcblk0p2',
   'sbl2.mbn'          : '/dev/block/mmcblk0p3',
   'sbl3.mbn'          : '/dev/block/mmcblk0p6',
   'static_nv_bk.bin'  : '/dev/block/mmcblk0p22',
   'tz.mbn'            : '/dev/block/mmcblk0p9'
}

def FullOTA_InstallEnd(info):
  for k, v in image_partitions.iteritems():
    try:
      img_file = info.input_zip.read("RADIO/" + k)
      info.script.Print("Writing image " + k + "...")
      InstallImage(k, img_file, v, info)
    except KeyError:
      print "warning: no " + k + " image in input target_files; not flashing " + k


def IncrementalOTA_InstallEnd(info):
  for k, v in image_partitions.iteritems():
    try:
      source_file = info.source_zip.read("RADIO/" + k)
      target_file = info.target_zip.read("RADIO/" + k)
      if source_file != target_file:
        InstallImage(k, target_file, v, info)
      else:
        print k + " image unchanged; skipping"
    except KeyError:
      print "warning: " + k + " image missing from target; not flashing " + k
