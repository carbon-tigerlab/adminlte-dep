#!/bin/bash

release_filename="adminltedeps.tar.gz"
dep_folder_name="admin_lte"

mv node_modules "${dep_folder_name}"
rm -f "${release_filename}"
tar cf - "${dep_folder_name}" | gzip -9 - > "${release_filename}"
mv "${dep_folder_name}" node_modules
