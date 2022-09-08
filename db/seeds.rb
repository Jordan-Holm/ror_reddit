Sub.delete_all

# seed file is for populating the db
Sub.create(title: 'Food')
Sub.create(title: 'Travel')
Sub.create(title: 'Tech')

# Faker helps out with giving fake data easier
5.times do
    Sub.create(
        title: Faker::Games::SuperMario.character
    )
end