Group1 = c(2,3,7,2,6)
Group2 = c(10,8,7,5,10)
Group3 = c(10,13,14,13,15)
Combined_Group = data.frame(Group1,Group2,Group3)
Combined_Group

Stacked_Group = stack(Combined_Group)
Stacked_Group

Result=aov(values~ind,data = Stacked_Group)
summary(Result)