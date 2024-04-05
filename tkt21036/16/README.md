Link: https://littlelemon-6pra.onrender.com

I used render.com to deploy this app and I found the process to be straightforward for the most part.
The most difficult part was that Render only allowed image with amd64 architecture, while my machine is arm64, so I had to figure out how to build an image with the correct architecture. The command I had to use to fix this was:
`docker build . --platform=linux/amd64 -t littlelemon`
