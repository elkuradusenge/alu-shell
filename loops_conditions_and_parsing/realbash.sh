#!/usr/bin/env bash
# This script creates all the ALX Shell project files 1 to 13 with their required content and makes them executable

set -euo pipefail

DIR="loops_conditions_and_parsing"
mkdir -p "$DIR"

# 1-for_best_school
cat > "$DIR/1-for_best_school" <<'EOF'
#!/usr/bin/env bash
# This script displays "Best School" 10 times using a for loop

for i in {1..10}; do
  echo "Best School"
done
EOF
chmod +x "$DIR/1-for_best_school"

# 2-while_best_school
cat > "$DIR/2-while_best_school" <<'EOF'
#!/usr/bin/env bash
# This script displays "Best School" 10 times using a while loop

i=1
while [ "$i" -le 10 ]; do
  echo "Best School"
  i=$((i + 1))
done
EOF
chmod +x "$DIR/2-while_best_school"

# 3-until_best_school
cat > "$DIR/3-until_best_school" <<'EOF'
#!/usr/bin/env bash
# This script displays "Best School" 10 times using an until loop

i=1
until [ "$i" -gt 10 ]; do
  echo "Best School"
  i=$((i + 1))
done
EOF
chmod +x "$DIR/3-until_best_school"

# 4-if_9_say_hi
cat > "$DIR/4-if_9_say_hi" <<'EOF'
#!/usr/bin/env bash
# This script displays "Best School" 10 times and says "Hi" on the 9th iteration

i=1
while [ "$i" -le 10 ]; do
  if [ "$i" -eq 9 ]; then
    echo "Best School"
    echo "Hi"
  else
    echo "Best School"
  fi
  i=$((i + 1))
done
EOF
chmod +x "$DIR/4-if_9_say_hi"

# 5-4_bad_luck_8_is_your_chance
cat > "$DIR/5-4_bad_luck_8_is_your_chance" <<'EOF'
#!/usr/bin/env bash
# This script prints "bad luck" for 4, "good luck" for 8, and "Best School" otherwise for numbers 1 to 10

i=1
while [ "$i" -le 10 ]; do
  if [ "$i" -eq 4 ]; then
    echo "bad luck"
  elif [ "$i" -eq 8 ]; then
    echo "good luck"
  else
    echo "Best School"
  fi
  i=$((i + 1))
done
EOF
chmod +x "$DIR/5-4_bad_luck_8_is_your_chance"

# 6-superstitious_numbers
cat > "$DIR/6-superstitious_numbers" <<'EOF'
#!/usr/bin/env bash
# This script displays numbers 1 to 20 with special messages for 4, 9, and 17 using a case statement

i=1
while [ "$i" -le 20 ]; do
  case "$i" in
    4) echo "bad luck from China" ;;
    9) echo "bad luck from Japan" ;;
    17) echo "bad luck from Italy" ;;
    *) echo "$i" ;;
  esac
  i=$((i + 1))
done
EOF
chmod +x "$DIR/6-superstitious_numbers"

# 7-clock
cat > "$DIR/7-clock" <<'EOF'
#!/usr/bin/env bash
# This script displays hours 0 to 12 and minutes 1 to 59

hour=0
while [ "$hour" -le 12 ]; do
  echo "Hour: $hour"
  minute=1
  while [ "$minute" -le 59 ]; do
    echo "$minute"
    minute=$((minute + 1))
  done
  hour=$((hour + 1))
done
EOF
chmod +x "$DIR/7-clock"

# 8-for_ls
cat > "$DIR/8-for_ls" <<'EOF'
#!/usr/bin/env bash
# This script lists current directory contents without hidden files and shows only the part after the first dash

for file in *; do
  if [[ "$file" == *-* ]]; then
    echo "${file#*-}"
  else
    echo "$file"
  fi
done
EOF
chmod +x "$DIR/8-for_ls"

# 9-to_file_or_not_to_file
cat > "$DIR/9-to_file_or_not_to_file" <<'EOF'
#!/usr/bin/env bash
# This script checks if the file "school" exists and its properties

if [ -e school ]; then
  echo "school file exists"
  if [ ! -s school ]; then
    echo "school file is empty"
  else
    echo "school file is not empty"
  fi
  if [ -f school ]; then
    echo "school is a regular file"
  fi
else
  echo "school file does not exist"
fi
EOF
chmod +x "$DIR/9-to_file_or_not_to_file"

# 10-fizzbuzz
cat > "$DIR/10-fizzbuzz" <<'EOF'
#!/usr/bin/env bash
# This script prints numbers 1 to 100 with "FizzBuzz" rules

for i in {1..100}; do
  if (( i % 15 == 0 )); then
    echo "FizzBuzz"
  elif (( i % 3 == 0 )); then
    echo "Fizz"
  elif (( i % 5 == 0 )); then
    echo "Buzz"
  else
    echo "$i"
  fi
done
EOF
chmod +x "$DIR/10-fizzbuzz"

# 11-read_and_cut
cat > "$DIR/11-read_and_cut" <<'EOF'
#!/usr/bin/env bash
# This script reads /etc/passwd and displays username:user id:home directory

while IFS=: read -r username _ userid _ _ home _; do
  echo "$username:$userid:$home"
done < /etc/passwd
EOF
chmod +x "$DIR/11-read_and_cut"

# 12-tell_the_story_of_passwd
cat > "$DIR/12-tell_the_story_of_passwd" <<'EOF'
#!/usr/bin/env bash
# This script tells the story of /etc/passwd users using a while loop with IFS

while IFS=: read -r username password userid groupid fullname home shell; do
  echo "The user $username is part of the $groupid gang, lives in $home and rides $shell. $userid's place is protected by the passcode $password, more info about the user here: $userid"
done < /etc/passwd
EOF
chmod +x "$DIR/12-tell_the_story_of_passwd"

# 13-placeholder
cat > "$DIR/13-placeholder" <<'EOF'
#!/usr/bin/env bash
# Placeholder script for task 13 - content not provided

echo "Task 13 script placeholder"
EOF
chmod +x "$DIR/13-placeholder"

echo "All files created and made executable in the $DIR directory."

