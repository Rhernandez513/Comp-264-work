// By Robert David Hernandez
// Github: Rhernandez513
// compiled with: gcc-4.6 -O1 -S

long switch_prob(long x, long n) {
  long result = x;
  switch(n) {
    case (60):
      result *= 8;
      break;
    case (62):
      result >>= 3;
      break;
    case (65):
      result -= (result << 4);
      break;
    case (63):
      result *= x;
    case (64):
      result += 75;
  }
  return result;
}
