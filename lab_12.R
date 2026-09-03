# 12. Perform data reshaping on air quality dataset:melt, cast, compute monthly averages for ozone,
# solar, wind and temperature.

data("airquality")

result <- aggregate(cbind(Ozone, Solar.R, Wind, Temp) ~ Month,
                    data = airquality,
                    FUN = mean,
                    na.rm = TRUE)
print("monthly average values: ")
print(result)