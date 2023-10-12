// 1. Install necessary packages
// Might also need ggplot for what I want?
const r_install = Deno.run({
    cmd: ['sudo', 'Rscript', '-e', "install.packages(c('dplyr', 'readxl', 'readr', 'lubridate', 'stringr'))"]
});

await r_install.status();

// 2. Forward the execution to the R script
const r_run = Deno.run({
    cmd: ['Rscript', './clean.R'].concat(Deno.args),
});

await r_run.status();
