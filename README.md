# RetailDB: Relational Database for Retail Management

RetailDB is a relational database designed to handle the inventory, sales, and customer data for a retail company. It is implemented using MySQL and includes stored procedures and triggers to automate tasks and enhance performance.

## Features

- **Customer Management**: Store and manage customer data.
- **Product Inventory**: Keep track of product details, including stock quantity.
- **Sales Records**: Record sales transactions, automatically updating inventory.

## How to Use

1. Clone this repository to your local machine.
2. Open your MySQL database management tool (such as MySQL Workbench).
3. Run the scripts in the `sql/` directory in the following order:
   1. `create_tables.sql`: To create the necessary database tables.
   2. `stored_procedures.sql`: To implement stored procedures for common tasks.
   3. `triggers.sql`: To implement triggers for data consistency.
4. Use the stored procedures `AddCustomer` and `RecordSale` to add customers and record sales.

## Contributing

If you have suggestions for how this project could be improved, or want to report a bug, please open an issue!

## License

This project is open-source and available under the MIT License.
