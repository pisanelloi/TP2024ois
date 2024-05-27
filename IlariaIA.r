install.packages("ggplot2")
library(ggplot2)

# Charger le package ggplot2
library(ggplot2)

# Créer le graphique
ggplot(diamonds, aes(x = cut, y = price, color = cut)) +
  geom_boxplot(outlier.shape = NA) +  # Boîte à moustaches sans les outliers
  geom_jitter(width = 0.2, alpha = 0.3) +  # Points avec jitter
  theme_minimal() +  # Thème minimal
  labs(
    title = "Distribution des prix des diamants par type de coupe",
    x = "Type de coupe",
    y = "Prix (USD)",
    color = "Type de coupe"
  ) +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16),
    axis.title.x = element_text(size = 14),
    axis.title.y = element_text(size = 14),
    legend.position = "none"
  )