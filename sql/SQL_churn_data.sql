--Churn rate по типу контракта
select "Contract",
sum("churn_flag") as churned,
round(100.0 * avg("churn_flag")::numeric, 2) as churned_pct  
from churn_data
group by "Contract";

--Churn rate по PaymentMethod
select "PaymentMethod",
sum("churn_flag") as churned,
round(100.0 * avg("churn_flag")::numeric, 2) as churned_pct   
from churn_data
group by "PaymentMethod";

--Churn rate по services_count
select "services_count",
sum("churn_flag") as churned,
round(100.0 * avg("churn_flag")::numeric, 2) as churned_pct
from churn_data
group by "services_count" order by "services_count" desc;

--Средний доход по Churn
select "Churn", round(avg("MonthlyCharges")::numeric,2) as avg_monthly, round(avg("TotalCharges")::numeric,2) as avg_total
from churn_data group by "Churn";