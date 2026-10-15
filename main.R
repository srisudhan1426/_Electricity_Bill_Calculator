# Electricity Bill Calculator Using R
consumer_name <- readline("Enter consumer name: ")
units <- as.numeric(readline("Enter electricity units consumed: "))
# Example slab rates for demonstration only; not official tariff rates.
if (units < 0) stop("Units cannot be negative.")
if (units <= 100) {
  bill <- units * 1.5
} else if (units <= 200) {
  bill <- (100 * 1.5) + ((units - 100) * 2.5)
} else {
  bill <- (100 * 1.5) + (100 * 2.5) + ((units - 200) * 4)
}
cat("\nConsumer:", consumer_name, "\n")
cat("Units Consumed:", units, "\n")
cat("Estimated Bill: Rs.", round(bill, 2), "\n")
cat("Note: Sample rates only; not official tariff rates.\n")
