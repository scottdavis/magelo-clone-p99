class AddCommentsAndFixerToReports < ActiveRecord::Migration
  def self.up
    add_column :reports, :comment, :text
    add_column :reports, :fixer, :integer
    
    if Rails.env == 'production'
      ['danebostick@gmail.com', 'zacharywallace@gmail.com'].each do |email|
        u = User.find_by_email(email)
        u.admin = true
        u.save
      end
    end
    
  end

  def self.down
    remove_column :reports, :fixer
    remove_column :reports, :comment
  end
end
