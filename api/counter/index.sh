build() {
  echo 1 > build-time.txt
}

handler() {
  VALUE=$(<build-time.txt)
  ((VALUE++))

  echo "$VALUE" > build-time.txt
  echo "Counter: $VALUE"
}