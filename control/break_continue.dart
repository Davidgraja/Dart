main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) continue; // salta a la siguiente iteracción
    print(i);

    if (i == 2) break; // rompe el ciclo
  }
}
