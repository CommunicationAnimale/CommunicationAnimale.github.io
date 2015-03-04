FOR %%G IN ("*.svg") DO (
   inkscape -D -z --file="%%G" --export-pdf="%%~nG".pdf --export-latex
)
PAUSE