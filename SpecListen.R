## Function that creates a spectrogram and plays a the sound for one 
## row of a selection table
library(tuneR)
library(seewave)

spec_listen = function(df = sel_table, sel_row = sel_file_row, 
                       buf = 0.25, freqlim = c(0, 10))
{
  # Debug code, uncomment
  # print(df[sel_row,])
  focal_row = df[sel_row,]
  sel_wav = readWave(focal_row$filepath,
                     from = focal_row$start - buf,
                     to = focal_row$end + buf,
                     units = "seconds")
  spectro(sel_wav, 
          main = paste(basename(focal_row$filepath),#  "\n",
                       paste0("row: ", sel_row),
                       focal_row$common_name,
                       focal_row$confidence,
                       sep = ", "),
          palette = reverse.gray.colors.2,
          scale = F,
          noisereduction = 1,
          flim = freqlim,
          listen = T)
}

