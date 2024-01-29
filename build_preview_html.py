import os

# specify the folder containing the images
folder = "."

# create an empty HTML string
html = "preview.html"

# add the HTML header
html += "<html>\n<head>\n<title>Image Matrix</title>\n</head>\n<body>\n"

# create a table to hold the images
html += "<table>\n"

# loop through the images in the folder
for i, file in enumerate(os.listdir(folder)):
    if file.endswith(".jpg") or file.endswith(".png"):
        # add a new row to the table every 4 images
        if i % 4 == 0:
            html += "<tr>\n"

        # add a new cell to the row for each image
        html += "<td><img src='{}' alt='{}'></td>\n".format(os.path.join(folder, file), file)

        # close the row every 4 images
        if i % 4 == 3:
            html += "</tr>\n"

# close the table
html += "</table>\n"

# add the HTML footer
html += "</body>\n</html>"

# write the HTML to a file
with open("matrix.html", "w") as f:
    f.write(html)
