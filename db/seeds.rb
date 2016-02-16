# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EventCategory.crete(name: 'Concert', description: 'The event category is a music concert.')
EventCategory.crete(name: 'Sports event', description: 'The event category is a sport event.')

Event.create(name: 'Bon Jovi World Tour',description:'Canadian singer-songwriter Bon Jovi is set to impress with a live performance of his twelfth studio album, Wallflower, which covers pop and rock classics from artists like 10cc, Bryan Adams and The Eagles.',
             start_date:(Date.today + 20), end_date: (Date.today + 22), event_category_id: 1)

Event.create(name: 'Valentine’s Day 2016: A bandstand music series',description:'What better way to celebrate Valentine’s Day than with good music, greenery and a moonlit sky? The Bandstand at the Skenderija will host a series of fantastic live acts, so grab your sweetheart for an unforgettable nights of soul-soothing indie pop.',
             start_date:(Date.strptime("14/02/2016", "%d/%m/%Y")), end_date: (Date.strptime("14/02/2016", "%d/%m/%Y")), event_category_id: 1)

Event.create(name: 'EXIT Festival, Petrovaradin Fortress, Novi Sad!',description:'Exit Magic Adventure 2016 presents two festivals in two countries at two spectacular locations! From the magical fortress in Novi Sad to the Best European beach by Lonely Planet!',
             start_date:(Date.today + 50), end_date: (Date.today + 55), event_category_id: 1)


Venue.create(name:'Skenderija Concert Hall', address: 'Skenderija bb', description: 'Skenderija Concert Hall')
Venue.create(name:'Zetra Olympic Hall', address: 'Zetra Olympic Hall', description: 'Zetra Olympic Hall')
Venue.create(name:'Petrovaradin Fortress', address: 'Petrovaradin Fortress, Novi Sad', description: 'Petrovaradin Fortress')

