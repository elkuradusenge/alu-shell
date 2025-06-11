#!/bin/bash

# 1-hello_you
cat << 'EOF' > 1-hello_you
#!/bin/bash
echo "hello $USER"
EOF

# 2-path
cat << 'EOF' > 2-path
#!/bin/bash
export PATH="$PATH:/action"
EOF

# 3-paths
cat << 'EOF' > 3-paths
#!/bin/bash
echo "$PATH" | tr ':' '\n' | grep -v '^$' | wc -l
EOF

# 4-global_variables
cat << 'EOF' > 4-global_variables
#!/bin/bash
printenv
EOF

# 5-local_variables
cat << 'EOF' > 5-local_variables
#!/bin/bash
set
EOF

# 6-create_local_variable
cat << 'EOF' > 6-create_local_variable
#!/bin/bash
BEST="School"
EOF

# 7-create_global_variable
cat << 'EOF' > 7-create_global_variable
#!/bin/bash
export BEST="School"
EOF

# 8-true_knowledge
cat << 'EOF' > 8-true_knowledge
#!/bin/bash
echo $((128 + TRUEKNOWLEDGE))
EOF

# 9-divide_and_rule
cat << 'EOF' > 9-divide_and_rule
#!/bin/bash
echo $((POWER / DIVIDE))
EOF

# 10-love_exponent_breath
cat << 'EOF' > 10-love_exponent_breath
#!/bin/bash
echo $((BREATH ** LOVE))
EOF

# 11-binary_to_decimal
cat << 'EOF' > 11-binary_to_decimal
#!/bin/bash
echo $((2#$BINARY))
EOF

# 12-combinations
cat << 'EOF' > 12-combinations
#!/bin/bash
for l1 in {a..z}; do
  for l2 in {a..z}; do
    [[ "$l1$l2" == "oo" ]] || echo "$l1$l2"
  done
done
EOF

# 13-print_float
cat << 'EOF' > 13-print_float
#!/bin/bash
printf "%.2f\n" "$NUM"
EOF

# 14-decimal_to_hexadecimal
cat << 'EOF' > 14-decimal_to_hexadecimal
#!/bin/bash
printf "%x\n" "$DECIMAL"
EOF

# 15-rot13
cat << 'EOF' > 15-rot13
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
EOF

# 16-odd
cat << 'EOF' > 16-odd
#!/bin/bash
awk 'NR % 2 == 1'
EOF

# 17-water_and_stir
cat << 'EOF' > 17-water_and_stir
#!/bin/bash
echo "$((2#$(echo "$WATER" | tr 'ewatr' 01234) + 2#$(echo "$STIR" | tr 'ti.rs' 01234)))" | tr 0123456789 'bestcholhc'
EOF

# Make all scripts executable
chmod +x *

echo "✅ All files created and made executable inside init_files_variables_and_expansions/"
