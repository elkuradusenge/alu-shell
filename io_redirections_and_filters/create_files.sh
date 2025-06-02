#!/bin/bash

echo "Creating, populating, and running all task files..."

# Define all tasks using here-documents for correct formatting and escaping

declare -A scripts

scripts["0-hello_world"]=$(cat <<'EOF'
#!/bin/bash
echo "Hello, World"
EOF
)

scripts["1-confused_smiley"]=$(cat <<'EOF'
#!/bin/bash
echo "\"(Ôo)\'"
EOF
)

scripts["2-hellofile"]=$(cat <<'EOF'
#!/bin/bash
cat /etc/passwd
EOF
)

scripts["3-twofiles"]=$(cat <<'EOF'
#!/bin/bash
cat /etc/passwd /etc/hosts
EOF
)

scripts["4-lastlines"]=$(cat <<'EOF'
#!/bin/bash
tail -n 10 /etc/passwd
EOF
)

scripts["5-firstlines"]=$(cat <<'EOF'
#!/bin/bash
head -n 10 /etc/passwd
EOF
)

scripts["6-third_line"]=$(cat <<'EOF'
#!/bin/bash
head -n 3 iacta | tail -n 1
EOF
)

scripts["7-file"]=$(cat <<'EOF'
#!/bin/bash
create_file="\\*\\?\$\\!\\*\\*Holberton School\\"
echo "Best School" > "$create_file"
EOF
)

scripts["8-cwd_state"]=$(cat <<'EOF'
#!/bin/bash
ls -la .
EOF
)

scripts["9-duplicate_last_line"]=$(cat <<'EOF'
#!/bin/bash
tail -n 1 iacta >> iacta
EOF
)

scripts["10-no_more_js"]=$(cat <<'EOF'
#!/bin/bash
find . -type f -name "*.js" -delete
EOF
)

scripts["11-directories"]=$(cat <<'EOF'
#!/bin/bash
find . -type d ! -path . | wc -l
EOF
)

scripts["12-newest_files"]=$(cat <<'EOF'
#!/bin/bash
ls -tp | grep -v / | head -n 10
EOF
)

scripts["13-unique"]=$(cat <<'EOF'
#!/bin/bash
sort | uniq -u
EOF
)

scripts["14-findthatword"]=$(cat <<'EOF'
#!/bin/bash
grep "root" /etc/passwd
EOF
)

scripts["15-countthatword"]=$(cat <<'EOF'
#!/bin/bash
grep -c "bin" /etc/passwd
EOF
)

scripts["16-whatsnext"]=$(cat <<'EOF'
#!/bin/bash
grep -A 3 "root" /etc/passwd
EOF
)

scripts["17-hidethisword"]=$(cat <<'EOF'
#!/bin/bash
grep -v "bin" /etc/passwd
EOF
)

scripts["18-letteronly"]=$(cat <<'EOF'
#!/bin/bash
grep "^[a-zA-Z]*$"
EOF
)

scripts["19-AZ"]=$(cat <<'EOF'
#!/bin/bash
tr -d "cC"
EOF
)

scripts["20-hiago"]=$(cat <<'EOF'
#!/bin/bash 
printf "%s\n" "$(tr -d 'cC')"

EOF
)

scripts["21-reverse"]=$(cat <<'EOF'
#!/bin/bash
rev
EOF
)

scripts["22-users_and_homes"]=$(cat <<'EOF'
#!/bin/bash
cut -d: -f1,6 /etc/passwd | sort
EOF
)

scripts["23-empty_casks"]=$(cat <<'EOF'
#!/bin/bash
find . -type f -empty
EOF
)

scripts["24-gifs"]=$(cat <<'EOF'
#!/bin/bash
find . -type f -name "*.gif"
EOF
)

scripts["25-acrostic"]=$(cat <<'EOF'
#!/bin/bash
cut -c1 | paste -sd ""
EOF
)

scripts["26-the_biggest_fan"]=$(cat <<'EOF'
#!/bin/bash
sort | uniq -c | sort -nr | head -n 1
EOF
)

# Write and make each script executable
for task in "${!scripts[@]}"; do
  echo "Creating $task..."
  echo "${scripts[$task]}" > "$task"
  chmod +x "$task"
done

# Execute scripts
echo -e "\nExecuting each script (if valid)..."
for task in "${!scripts[@]}"; do
  echo -e "\nRunning $task:"
  echo "===================="
  if [[ -s "$task" ]]; then
    ./$task
  else
    echo "File is empty or missing!"
  fi
  echo "===================="
done

