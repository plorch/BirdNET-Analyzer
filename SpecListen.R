## Function that creates a spectrogram and plays a the sound for one 
## row of a selection table

spec_listen = function(df = sel_table, sel_row = sel_file_row)
{
  focal_row = df[sel_row,]
  sel_wav = readWave(focal_row$filepath,
                     from = focal_row$start - buf,
                     to = focal_row$end + buf,
                     units = "seconds")
  spectro(sel_wav, 
          main = paste(focal_row$common_name, focal_row$confidence), 
          listen = T)
}

