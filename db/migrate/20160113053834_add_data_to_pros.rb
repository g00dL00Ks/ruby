class AddDataToPros < ActiveRecord::Migration
  def change
    add_column :pros, :last_name, :string
    add_column :pros, :description, :text
    add_column :pros, :year_started, :integer
    add_column :pros, :city, :string
    add_column :pros, :location, :integer
    add_column :pros, :gender, :integer
    add_column :pros, :certifications, :text
    add_column :pros, :specialty, :text
    add_column :pros, :hometown, :string
    add_column :pros, :quote, :text
    add_column :pros, :author, :string
    add_column :pros, :tip, :text
    add_column :pros, :facebook_page, :text
    add_column :pros, :twitter_handle, :text
    add_column :pros, :instagram_handle, :text
    add_column :pros, :pinterest_handle, :text
    add_column :pros, :pinterest_link, :text
    add_column :pros, :linkedin_page, :text
    add_column :pros, :paypal_email, :string
    add_column :pros, :phone, :integer
    add_column :pros, :alt_email, :string
    add_column :pros, :loc_inperson_private, :boolean
    add_column :pros, :loc_inperson_public, :boolean
    add_column :pros, :loc_inperson_yourspace, :boolean
    add_column :pros, :loc_virtual_short, :boolean
    add_column :pros, :loc_virtual_long, :boolean
    add_column :pros, :pre_work, :text
    add_column :pros, :cancellation, :text
    add_column :pros, :everyday, :boolean
    add_column :pros, :execs, :boolean
    add_column :pros, :celebs, :boolean
    add_column :pros, :bridal, :boolean
    add_column :pros, :prenatal, :boolean
    add_column :pros, :petites, :boolean
    add_column :pros, :plus_size, :boolean
    add_column :pros, :travelers, :boolean
    add_column :pros, :men, :boolean
    add_column :pros, :women, :boolean
    add_column :pros, :lgbt, :boolean
    add_column :pros, :age_und20, :boolean
    add_column :pros, :age_20_30, :boolean
    add_column :pros, :age_30_40, :boolean
    add_column :pros, :age_40_50, :boolean
    add_column :pros, :age_50_60, :boolean
    add_column :pros, :age_60over, :boolean
    add_column :pros, :closet, :boolean
    add_column :pros, :personal_styling, :boolean
    add_column :pros, :personal_shopping, :boolean
    add_column :pros, :commercial, :boolean
    add_column :pros, :bundle_offers, :boolean
    add_column :pros, :stylist_other, :text
    add_column :pros, :weight_loss, :boolean
    add_column :pros, :weight_gain, :boolean
    add_column :pros, :firming, :boolean
    add_column :pros, :bootcamp, :boolean
    add_column :pros, :bodybuilding, :boolean
    add_column :pros, :endurance, :boolean
    add_column :pros, :trainer_prenatal, :boolean
    add_column :pros, :recovery, :boolean
    add_column :pros, :nutrition_planning, :boolean
    add_column :pros, :yoga, :boolean
    add_column :pros, :pilates, :boolean
    add_column :pros, :trainer_bundle, :boolean
    add_column :pros, :trainer_other, :text
    add_column :pros, :nutrition_analysis, :boolean
    add_column :pros, :meal_planning, :boolean
    add_column :pros, :food_sensitivity, :boolean
    add_column :pros, :grocery, :boolean
    add_column :pros, :pantry, :boolean
    add_column :pros, :supplement, :boolean
    add_column :pros, :body_comp, :boolean
    add_column :pros, :nutritionist_bundle, :boolean
    add_column :pros, :nutritionist_other, :text
    add_column :pros, :transition, :boolean
    add_column :pros, :interview, :boolean
    add_column :pros, :exec_coaching, :boolean
    add_column :pros, :lifestyle_coaching, :boolean
    add_column :pros, :public_speaking, :boolean
    add_column :pros, :dating, :boolean
    add_column :pros, :time_mgmt, :boolean
    add_column :pros, :ADD_coaching, :boolean
    add_column :pros, :stress_mgmt, :boolean
    add_column :pros, :parenting, :boolean
    add_column :pros, :spirituality, :boolean
    add_column :pros, :coach_bundle, :boolean
    add_column :pros, :coach_other, :text
    add_column :pros, :q_enjoy, :text
    add_column :pros, :q_approach, :text
    add_column :pros, :q_common, :text
  end
end
