Feature: ERP Management System

  As an ERP system user,
  I want to manage various business processes efficiently,
  So that I can streamline operations across finance, inventory, sales, procurement, HR, and reporting.

  Background:
    Given the ERP system is operational
    And the user is logged into the ERP dashboard

  # Section 3: Inventory Management
  Rule: Managing inventory, stock levels, and orders
    The system should track inventory levels, manage stock, and handle inventory orders.

    # Scenario 11: Place an inventory order
    Scenario: Place an order for inventory
      Given a warehouse manager is on the order page
      When the manager places an order for 100 "Smartphones"
      Then the order should be recorded
      And the system should update the expected delivery date

    # Scenario 12: Generate inventory report
    Scenario: Generate inventory report
      Given a warehouse manager is on the reporting page
      When the manager generates an inventory report
      Then the report should include item quantities, reorder levels, and stock valuation

  # Section 4: Procurement Management
  Rule: Handling procurement processes and vendor management
    The system should manage procurement processes, track purchase orders, and handle vendor details.

    # Scenario 13: Create a new purchase order
    Scenario: Create purchase order
      Given a procurement officer is on the purchase order page
      When the officer creates a purchase order for "Office Chairs" with quantity 100
      Then the purchase order should be recorded
      And the vendor should be notified

    # Scenario 14: Update a purchase order
    Scenario: Update purchase order
      Given a procurement officer is on the purchase order page
      When the officer updates the quantity of "Desks" to 50
      Then the purchase order should be updated in the system

    # Scenario 15: Track purchase order status
    Scenario: Track order status
      Given a procurement officer has placed a purchase order
      When the officer checks the status of the order
      Then the system should display the current status as "Pending", "Shipped", or "Delivered"

    # Scenario 16: Manage vendor details
    Scenario: Manage vendor details
      Given a procurement officer is on the vendor management page
      When the officer updates the contact details of "Vendor A"
      Then the updated details should be saved and visible

  # Section 5: Sales Management
  Rule: Managing sales orders, customer details, and invoicing
    The system should handle sales orders, manage customer information, and generate invoices.

    # Scenario 17: Create a new sales order
    Scenario: Create sales order
      Given a sales representative is on the sales order page
      When the representative creates a sales order for "Product X" with quantity 200
      Then the sales order should be recorded
      And the customer should receive an order confirmation

    # Scenario 18: Update a sales order
    Scenario: Update sales order
      Given a sales representative is on the sales order page
      When the representative updates the quantity of "Product Y" to 150
      Then the sales order should be updated in the system

    # Scenario 19: Generate an invoice for a sales order
    Scenario: Generate sales invoice
      Given a sales representative has completed a sales order
      When the representative generates an invoice
      Then the invoice should include details of the order, payment terms, and total amount

    # Scenario 20: Manage customer details
    Scenario: Manage customer details
      Given a sales representative is on the customer management page
      When the representative updates the contact details of "Customer B"
      Then the updated details should be saved and visible