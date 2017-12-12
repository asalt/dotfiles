# Aliases
len <- length
pwd <- getwd
exit <- q

# Make prompt like python prompt
options(prompt=">>> ")
options(continue="... ")

#editor
options(editor="emacsclient -t")

#
options(max.print=300)

# disable graphical menu option - use the command line instead
options(menu.graphics=FALSE)

options(editor="vim")

# allows tab-completion of package names for use in "library()" or "require()" calls.
utils::rc.settings(ipck=TRUE, fuzzy=TRUE)

# colors
## if(Sys.getenv("TERM") == "xterm-256color")
if(endsWith(Sys.getenv("TERM"), "256color"))
  library("colorout")

# function for setting the width of R to the width of the terminal
# from http://stackoverflow.com/a/30625115/4788927
wideScreen <- function(howWide=NA){
  if (is.na(howWide)){
    try(
      howWide <- as.numeric(strsplit(system('stty size', intern=T), ' ')[[1]])[2],
      silent = TRUE
      )
    }

    if (!is.na(howWide))
      options(width=as.integer(howWide))
}
wideScreen()


message("\n*** Successfully loaded .Rprofile ***\n")
