/*Checking if Total_Bags is correct*/

SELECT
    Date,
    Region,
    Small_Bags,
    Large_Bags,
    XLarge_Bags,
    Total_Bags,
    Small_Bags + Large_Bags + XLarge_Bags AS Total_Bags_Calc
FROM avocado_data.avocado_prices

/*Finding the % of Small_Bags*/

SELECT
    Date,
    Region,
    Total_Bags,
    Small_Bags,
    (Small_Bags / Total_Bags)*100 AS Small_Bags_Percent
FROM
    avocado_data.avocado_prices
WHERE
    Total_Bags <> 0