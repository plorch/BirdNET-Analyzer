## Function that renames files with location

### This version uses the enclosing folders to name the files

### Recommend testing on a small test directory before using on 
### important files

rnFileWithLoc = function(dir_with_names = "")
  {
  if(dir_with_names == "")
    stop('\n \n You must specify a directory with .wav files in it.\n \n ')

  library(stringr)

  location_name = basename(dir_with_names)
  rename_file_list = list.files(path = dir_with_names, 
                              pattern = ".(wav|WAV)", 
                              full.names = T)
  if(length(rename_file_list) == 0)
    stop('\n \n No .wav files in specified directory.\n \n ')

  bn = basename(rename_file_list)
  bn1 = paste(location_name, bn, sep = "_")
  dn = dirname(rename_file_list)
  new_names = file.path(dn, bn1)

  file.rename(rename_file_list, new_names)
}

