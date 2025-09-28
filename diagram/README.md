ER Diagram Components:

Three Entities (Tables):

CUSTOMERS (blue) - Contains customer information
PRODUCTS (green) - Contains product catalog
TRANSACTIONS (orange) - Contains sales records


Relationships:

Customers → Transactions: One-to-Many (1:N)

One customer can place many transactions
Relationship labeled as "places"


Products → Transactions: One-to-Many (1:N)

One product can appear in many transactions
Relationship labeled as "sold in"




Key Indicators:

PK = Primary Key (underlined)
FK = Foreign Key (italicized)
Crow's foot notation shows cardinality (1:N relationships)
