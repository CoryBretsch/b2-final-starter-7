# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@m1 = Merchant.create!(name: "Merchant 1")
@m2 = Merchant.create!(name: "Merchant 2")
@m3 = Merchant.create!(name: "Merchant 3", status: 1)
@m4 = Merchant.create!(name: "Merchant 4")
@m5 = Merchant.create!(name: "Merchant 5")
@m6 = Merchant.create!(name: "Merchant 6")
@c1 = Customer.create!(first_name: "Yo", last_name: "Yoz")
@c2 = Customer.create!(first_name: "Hey", last_name: "Heyz")
@i1 = Invoice.create!(customer_id: @c1.id, status: 2, created_at: "2012-03-27 14:54:09")
@i2 = Invoice.create!(customer_id: @c1.id, status: 2, created_at: "2012-03-27 14:54:09")
@i3 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@i4 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@i5 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@i6 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@i7 = Invoice.create!(customer_id: @c1.id, status: 2, created_at: "2012-03-27 14:54:09")
@i8 = Invoice.create!(customer_id: @c1.id, status: 2, created_at: "2012-03-27 14:54:09")
@i9 = Invoice.create!(customer_id: @c1.id, status: 2, created_at: "2012-03-27 14:54:09")
@i10 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@i11 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@i12 = Invoice.create!(customer_id: @c2.id, status: 2, created_at: "2012-03-27 14:54:09")
@item_1 = Item.create!(name: "Shampoo", description: "This washes your hair", unit_price: 10, merchant_id: @m1.id)
@item_2 = Item.create!(name: "Conditioner", description: "This makes your hair shiny", unit_price: 8, merchant_id: @m2.id)
@item_3 = Item.create!(name: "Brush", description: "This takes out tangles", unit_price: 5, merchant_id: @m3.id)
@item_4 = Item.create!(name: "test", description: "lalala", unit_price: 6, merchant_id: @m4.id)
@item_5 = Item.create!(name: "rest", description: "dont test me", unit_price: 12, merchant_id: @m5.id)
@ii_1 = InvoiceItem.create!(invoice_id: @i1.id, item_id: @item_1.id, quantity: 12, unit_price: 10, status: 0)
@ii_2 = InvoiceItem.create!(invoice_id: @i2.id, item_id: @item_2.id, quantity: 6, unit_price: 8, status: 1)
@ii_3 = InvoiceItem.create!(invoice_id: @i3.id, item_id: @item_3.id, quantity: 16, unit_price: 5, status: 2)
@ii_4 = InvoiceItem.create!(invoice_id: @i4.id, item_id: @item_3.id, quantity: 2, unit_price: 5, status: 2)
@ii_5 = InvoiceItem.create!(invoice_id: @i5.id, item_id: @item_3.id, quantity: 10, unit_price: 5, status: 2)
@ii_6 = InvoiceItem.create!(invoice_id: @i1.id, item_id: @item_3.id, quantity: 7, unit_price: 5, status: 2)
@ii_7 = InvoiceItem.create!(invoice_id: @i2.id, item_id: @item_3.id, quantity: 1, unit_price: 5, status: 2)
@t1 = Transaction.create!(credit_card_number: 203942, result: 1, invoice_id: @i1.id)
@t2 = Transaction.create!(credit_card_number: 230948, result: 1, invoice_id: @i2.id)
@t3 = Transaction.create!(credit_card_number: 234092, result: 1, invoice_id: @i3.id)
@t4 = Transaction.create!(credit_card_number: 230429, result: 1, invoice_id: @i5.id)
@t5 = Transaction.create!(credit_card_number: 102938, result: 1, invoice_id: @i6.id)
@t6 = Transaction.create!(credit_card_number: 102938, result: 1, invoice_id: @i1.id)
@merchant1 = Merchant.create!(name: 'Hair Care')

# @coupon1 = Coupon.create!(name: "Fimmy", code: Faker::Barcode.unique.ismn, category: 0, active: 0, merchant_id: @m1.id )
# @coupon2 = Coupon.create!(name: "Fimmy", code: Faker::Barcode.unique.ismn, category: 1, active: 1, merchant_id: @m1.id )
# Invoice.create!(customer_id: @c2.id, status: 2, coupon_id: @coupon1.id )

@merchant2 = FactoryBot.create(:merchant)

# @coupon1 = Coupon.create!(name: "Fimmy", code: Faker::Barcode.unique.ismn, category: 0, active: false, merchant_id: @m1.id )
# @coupon2 = Coupon.create!(name: "Fimmy", code: Faker::Barcode.unique.ismn, category: 1, active: false, merchant_id: @m1.id )
# @invoice1 = Invoice.create!(customer_id: @c2.id, status: 2, coupon_id: @coupon1.id )

@coupon3 = FactoryBot.create(:coupon)
@coupon4 = FactoryBot.create(:coupon)
@invoice = FactoryBot.create(:invoice, coupon_id: @coupon3.id)
# Rake::Task["csv_load:all"].invoke

