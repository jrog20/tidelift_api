class CreateVulnerabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :vulnerabilities do |t|
      t.integer :vulnerability_id
      t.string :package_name
      t.string :package_version
      t.string :description
      t.string :created
      t.references :package, null: false, foreign_key: true

      t.timestamps
    end
  end
end
