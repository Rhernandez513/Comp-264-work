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
      result = n << 4;
      result -=  result;
      break;
    case (63):
      result *= result;
      break;
    case (64):
      result *= 0;
      break;
    default:
      result *= 75;
  }
  return result;
}
