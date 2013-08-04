# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PaymentOption.create(
    [
        {
            amount: 1.00,
            amount_display: '$1',
            description: "<strong>Privateer: </strong>Thank you for your support! Everyone who contributes will be invited to a Google Hangout where we'll discuss our progress",
            shipping_desc: '',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 10.00,
            amount_display: '$10',
            description: "<strong>Privateer: </strong>Thank you for your support! Everyone who contributes will be invited to a Google Hangout where we'll discuss our progress",
            shipping_desc: '',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 100.00,
            amount_display: '$100',
            description: "<strong>Privateer: </strong>Thank you for your support! Everyone who contributes will be invited to a Google Hangout where we'll discuss our progress",
            shipping_desc: '',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 125.00,
            amount_display: '$125',
            description: "<strong>Privateer: </strong>Thank you for your support! Everyone who contributes will be invited to a Google Hangout where we'll discuss our progress",
            shipping_desc: '',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 200.00,
            amount_display: '$200',
            description: "<strong>Privateer: </strong>Thank you for your support! Everyone who contributes will be invited to a Google Hangout where we'll discuss our progress",
            shipping_desc: '',
            delivery_desc: '',
            limit: -1
        },
        {
            amount: 250.00,
            amount_display: '$250',
            description: "<strong>Privateer: </strong>Thank you for your support! Everyone who contributes will be invited to a Google Hangout where we'll discuss our progress",
            shipping_desc: '',
            delivery_desc: '',
            limit: -1
        }
    ])