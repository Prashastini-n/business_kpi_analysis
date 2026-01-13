<?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="superstore.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="100"/><column_width id="3" width="2818"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><table title="superstore" custom_title="0" dock_id="4" table="4,10:mainsuperstore"/><dock_state state="000000ff00000000fd00000001000000020000000000000000fc0100000004fb000000160064006f0063006b00420072006f00770073006500310100000000ffffffff0000000000000000fb000000160064006f0063006b00420072006f00770073006500320100000000ffffffff0000000000000000fb000000160064006f0063006b00420072006f00770073006500330100000000ffffffff0000000000000000fb000000160064006f0063006b00420072006f00770073006500340100000000ffffffff0000011800ffffff000000000000000000000004000000040000000800000008fc00000000"/><default_encoding codec=""/><browse_table_settings/></tab_browse><tab_sql><sql name="SQL 1*">SELECT &quot;Product Name&quot;, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY &quot;Product Name&quot;
ORDER BY Total_Profit DESC
LIMIT 10;
</sql><sql name="SQL 2*">SELECT Category, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit ASC;
</sql><sql name="SQL 3*">SELECT 
  substr(&quot;Order Date&quot;, 7, 4) || '-' || 
  printf('%02d', substr(&quot;Order Date&quot;, 1, instr(&quot;Order Date&quot;, '/') - 1)) AS Month,
  SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;
</sql><sql name="SQL 4*">SELECT Region,
       AVG(Discount) AS Avg_Discount,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region;
</sql><current_tab id="3"/></tab_sql></sqlb_project>
