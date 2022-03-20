# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# CSV.foreach(Rails.root.join('db/licenses.csv'), headers: true) do |row|
#   Package.create( {
#       package_name: row["package_name"], 
#       # version: row["version"],
#       license: row["license"] 
#   } ) 
# end

CSV.foreach(Rails.root.join('db/vulnerabilities.csv'), headers: true) do |row|
    Vulnerability.create( {
        vulnerability_id: row["vulnerability_id"], 
        package_name: row["package_name"],
        package_version: row["package_version"],
        description: row["description"],
        created: row["created"]
    } ) 
  end
