class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.datetime :last_contact
      t.references :follower, index: true
      t.references :followed_user, index: true

      t.timestamps
    end
  end
end
