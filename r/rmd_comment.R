
rmd_comment <- function(author, comment){
    output_type <- knitr::opts_knit$get("rmarkdown.pandoc.to")
    if(output_type == "html"){
      output_comment  <- paste("<div class=\"review\"><p><b>",author,":</b></p>",comment,"</div>",sep="")
    }
    else if(output_type == "latex"){
      output_comment <- paste("\\sethlcolor{cyan} \\par \\textbf{\\hl{",author,":}}\\newline\\hl{",comment,"}",sep="")
    }
    else(
    warning("Output type unsupported by rmd_comment.")
    )
    output_comment
}


