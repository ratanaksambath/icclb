# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  invite_codes = (0...100).map { { code: SecureRandom.hex(8), used: false } }
  invite_codes = invite_codes.uniq

  invite_codes.each do |invite_code|
    InviteCode.find_or_create_by!( invite_code )
  end