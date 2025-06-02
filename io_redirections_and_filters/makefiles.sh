echo "Creating 0-hello_world..."
cat <<'EOF' > 0-hello_world
#!/bin/bash
echo "Hello, World"
EOF
chmod +x 0-hello_world

echo "Creating 10-no_more_js..."
cat <<'EOF' > 10-no_more_js
#!/bin/bash
find . -type f -name "*.js" -delete
EOF
chmod +x 10-no_more_js

echo "Creating 11-directories..."
cat <<'EOF' > 11-directories
#!/bin/bash
find . -type d ! -path . | wc -l
EOF
chmod +x 11-directories

echo "Creating 12-newest_files..."
cat <<'EOF' > 12-newest_files
#!/bin/bash
ls -tp | grep -v / | head -n 10
EOF
chmod +x 12-newest_files

echo "Creating 13-unique..."
cat <<'EOF' > 13-unique
#!/bin/bash
sort | uniq -u
EOF
chmod +x 13-unique

echo "Creating 14-findthatword..."
cat <<'EOF' > 14-findthatword
#!/bin/bash
grep "root" /etc/passwd
EOF
chmod +x 14-findthatword

echo "Creating 15-countthatword..."
cat <<'EOF' > 15-countthatword
#!/bin/bash
grep -c "bin" /etc/passwd
EOF
chmod +x 15-countthatword

echo "Creating 16-whatsnext..."
cat <<'EOF' > 16-whatsnext
#!/bin/bash
grep -A 3 "root" /etc/passwd
EOF
chmod +x 16-whatsnext

echo "Creating 17-hidethisword..."
cat <<'EOF' > 17-hidethisword
#!/bin/bash
grep -v "bin" /etc/passwd
EOF
chmod +x 17-hidethisword

echo "Creating 18-letteronly..."
cat <<'EOF' > 18-letteronly
#!/bin/bash
grep ^[a-zA-Z] /etc/ssh/sshd_config
EOF
chmod +x 18-letteronly

echo "Creating 19-AZ..."
cat <<'EOF' > 19-AZ
#!/bin/bash
tr '[Ac]' '[Ze]'
EOF
chmod +x 19-AZ

echo "Creating 1-confused_smiley..."
cat <<'EOF' > 1-confused_smiley
#!/bin/bash
echo "\"(Ôo)'"
EOF
chmod +x 1-confused_smiley

echo "Creating 20-hiago..."
cat <<'EOF' > 20-hiago
#!/bin/bash 
printf "%s\n" "$(tr -d 'cC')"
EOF
chmod +x 20-hiago

echo "Creating 21-reverse..."
cat <<'EOF' > 21-reverse
#!/bin/bash
rev
EOF
chmod +x 21-reverse

echo "Creating 22-users_and_homes..."
cat <<'EOF' > 22-users_and_homes
#!/bin/bash
cut -d: -f1,6 /etc/passwd | sort
EOF
chmod +x 22-users_and_homes

echo "Creating 23-empty_casks..."
cat <<'EOF' > 23-empty_casks
#!/bin/bash
find . -empty | rev | cut --delimiter='/' -f1 | rev
EOF
chmod +x 23-empty_casks

echo "Creating 24-gifs..."
cat <<'EOF' > 24-gifs
#!/bin/bash
find . -type f -name "*.gif" -printf "%f\n" | rev | cut -d'.' -f2- | rev | LC_ALL=C sort -f
EOF
chmod +x 24-gifs

echo "Creating 25-acrostic..."
cat <<'EOF' > 25-acrostic
#!/bin/bash
cut -c1 | paste -sd ""
EOF
chmod +x 25-acrostic

echo "Creating 26-the_biggest_fan..."
cat <<'EOF' > 26-the_biggest_fan
#!/bin/bash
cut -f1 | tail -n +2 | sort | uniq -c | sort -nr | head -n 11 | cut -c9-
EOF
chmod +x 26-the_biggest_fan

echo "Creating 2-hellofile..."
cat <<'EOF' > 2-hellofile
#!/bin/bash
cat /etc/passwd
EOF
chmod +x 2-hellofile

echo "Creating 3-twofiles..."
cat <<'EOF' > 3-twofiles
#!/bin/bash
cat /etc/passwd /etc/hosts
EOF
chmod +x 3-twofiles

echo "Creating 4-lastlines..."
cat <<'EOF' > 4-lastlines
#!/bin/bash
tail -n 10 /etc/passwd
EOF
chmod +x 4-lastlines

echo "Creating 5-firstlines..."
cat <<'EOF' > 5-firstlines
#!/bin/bash
head -n 10 /etc/passwd
EOF
chmod +x 5-firstlines

echo "Creating 6-third_line..."
cat <<'EOF' > 6-third_line
#!/bin/bash
head -n 3 iacta | tail -n 1
EOF
chmod +x 6-third_line

echo "Creating 7-file..."
cat <<'EOF' > 7-file
#!/bin/bash
echo 'Best School' > \\\*\\\\"'\"Best School\"\\'"\\\\\*\$\\\?\\\*\\\*\\\*\\\*\\\*:\)
EOF
chmod +x 7-file

echo "Creating 8-cwd_state..."
cat <<'EOF' > 8-cwd_state
#!/bin/bash
ls -la > ls_cwd_content
EOF
chmod +x 8-cwd_state

echo "Creating 9-duplicate_last_line..."
cat <<'EOF' > 9-duplicate_last_line
#!/bin/bash
tail -n 1 iacta >> iacta
EOF
chmod +x 9-duplicate_last_line

