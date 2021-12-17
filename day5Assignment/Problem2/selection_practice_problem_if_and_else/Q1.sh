((A=RANDOM%999+100, B=RANDOM%999+100, C=RANDOM%999+100, D=RANDOM%999+100, E=RANDOM%999+100))
echo A=$A B=$B C=$C D=$D E=$E  
arrayName=($A $B $C $D $E )

# Use choose first element of array as initial values for min/max;
# (Defensive programming) - this is a language-agnostic 'gotcha' when
# finding min/max ;)
max=${arrayName[0]}
min=${arrayName[0]}

# Loop through all elements in the array
for i in "${arrayName[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

    # Update min if applicable
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

# Output results:
echo "Max is: $max"
echo "Min is: $min"