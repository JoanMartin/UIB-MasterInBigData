
library("arules") 
library(data.table)

fish_trans = read.transactions("datasets/fish_recipes_transactions.csv", sep = ";")

summary(fish_trans)
inspect(fish_trans)




fish_rules = apriori(fish_trans, parameter=list(support=0.03, confidence=0.01,
                                                minlen=1, maxlen=1000,
                                                target='frequent itemsets'))
fish_rules = apriori(fish_trans, parameter=list(support=0.03, confidence=0,
                                                minlen=1, maxlen=1000,
                                                target='rules'))

f_r = inspect(fish_rules[0:length(fish_rules), ])

f_r[order(f_r$support, f_r$confidence), ]

f_r[f_r$rhs %like% ',', ]
f_r[f_r$lhs == '{salt}', ]

t1 = f_r[f_r$items %like% 'pepper sauce', ]
t2 = t1[t1$items %like% 'vinegar', ]
t3 = t2[t2$items %like% 'mustard', ]
t4 = t3[t3$items %like% 'parsley flakes', ]
t4[t4$items %like% 'salt', ]

f_r[f_r$items == '{salt}', ]

t1 = f_r[f_r$rhs %like% 'pepper sauce', ]
t2 = t1[t1$rhs %like% 'vinegar', ]
t2[t2$rhs %like% 'mustard', ]




