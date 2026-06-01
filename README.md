# Retail Sales Margin Erosion Analysis

## Business Problem
A multi-region retail business generating $2.3M revenue has a hidden 
profitability problem. Despite 12.47% overall margin, 3 sub-categories 
produce negative margins representing $133K in unrealised profit.

## Tools Used
- SQL (SQLite) — data extraction and analysis
- Excel — pivot tables and quick summary
- Power BI — interactive dashboard and charts

## Key Findings
- Tables (-8.56%), Bookcases (-3.02%), Supplies (-2.55%) are loss-making
- Root cause: discounts above 20% consistently produce negative margin
- Worst combination: Central region at 44.9% avg discount, -125% margin
- Pattern is structural across 2014–2017, not seasonal

## Recommendation
Cap discounts at 20% on loss-making sub-categories. Require regional 
director approval above that threshold. Estimated recovery: $133K annually.

## Files
- `queries/` — SQL scripts for each analysis step
- `excel/` — pivot table summary
- `powerbi/` — dashboard file (.pbix)
- `summary/` — executive summary memo
