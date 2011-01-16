class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.belongs_to :user
      t.string :invoice_place
      t.belongs_to :category
      t.float :amount
      t.date :invoice_date      
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
