#A Couple Wants to have 10 children
#Find the probability of at leas 4 girls
#0=Boys, 1=Girls
children<-expand.grid(kid1=0:1,kid2=0:1,kid3=0:1,kid4=0:1,kid5=0:1,kid6=0:1,kid7=0:1,kid8=0:1,kid9=0:1,kid10=0:1)
childrens<-2^10
n.Girls<-apply(children,1,sum)

GirlsRule<-table(n.Girls)

probAtLeast4Girls<-
{
    sum(n.Girls>3)/childrens
}
