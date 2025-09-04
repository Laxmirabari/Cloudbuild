Feature: ERP Management System

  As an ERP system user,
  I want to manage various business processes efficiently,
  So that I can streamline operations across finance, inventory, sales, procurement, HR, and reporting.

  Background:
    Given the ERP system is operational
    And the user is logged into the ERP dashboard

  # Section 1: User Management
  Rule: User management and roles
    The system should allow for user registration, role assignments, and access control.

    # Scenario 1: Register a new user
    Scenario: Register a new user successfully
      Given an admin is on the user registration page
      When the admin enters valid user details
      Then the user account should be created
      And the user should receive a registration confirmation email

    # Scenario 2: Assign roles to a user
    Scenario: Assign roles to a user
      Given an admin is on the user management page
      When the admin assigns the role of "Finance Manager" to a user
      Then the user should have access to finance-related modules

    # Scenario 3: Login with different roles
    Scenario Outline: Login with various roles
      Given a user is on the login page
      When the user logs in with "<role>" credentials
      Then the user should see the dashboard relevant to "<role>"

      Examples:
        | role           |
        | Finance Manager|
        | Sales Executive |
        | HR Specialist  |

    # Scenario 4: Deactivate a user account
    Scenario: Deactivate a user account
      Given an admin is on the user management page
      When the admin deactivates a user account
      Then the user should no longer be able to log in

  # Section 2: Finance Management
  Rule: Managing financial transactions and reporting
    The system should handle transactions, manage accounts, and generate financial reports.

    # Scenario 5: Create a new account
    Scenario: Create a new financial account
      Given a finance manager is on the account management page
      When the finance manager creates a new account "Savings Account"
      Then the account should be listed in the account overview

    # Scenario 6: Record a financial transaction
    Scenario: Record a transaction
      Given a finance manager is on the transactions page
      When the manager records a transaction of $1000 to "Operating Expenses"
      Then the transaction should be recorded in the system
      And the account balance should be updated

    # Scenario 7: Generate a financial report
    Scenario: Generate financial report
      Given a finance manager is on the reporting page
      When the manager generates a monthly financial report
      Then the report should include income, expenses, and profit/loss statements

    # Scenario 8: Validate financial data
    Scenario: Validate financial data entry
      Given a finance manager is entering financial data
      When the manager enters incorrect data (e.g., negative amounts)
      Then the system should display an error message "Invalid financial data"

  # Section 3: Inventory Management
  Rule: Managing inventory, stock levels, and orders
    The system should track inventory levels, manage stock, and handle inventory orders.

    # Scenario 9: Add a new inventory item
    Scenario: Add inventory item
      Given a warehouse manager is on the inventory page
      When the manager adds a new item "Laptop" with a quantity of 50
      Then the item should be listed in the inventory

    # Scenario 10: Update inventory stock levels
    Scenario: Update stock levels
      Given a warehouse manager is on the inventory page
      When the manager updates the stock level of "Laptops" to 30
      Then the inventory count should reflect the updated quantity