```R
# Improved code to handle missing columns during subsetting

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")

# Check if all columns exist before subsetting
cols_exist <- cols_to_select %in% names(df)

if (all(cols_exist)) {
  subset_df <- df[, cols_to_select]
} else {
  # Handle missing columns (e.g., select only existing columns or use a default value)
  existing_cols <- cols_to_select[cols_exist]
  subset_df <- df[, existing_cols]
  warning("Some columns were not found in the data frame. Only existing columns were selected.")
}

print(subset_df)
```