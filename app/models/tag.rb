class Tag < ActiveRecord::Base
  attr_accessible :content

  has_and_belongs_to_many :puns

  def self.process_tags(pun_id)
    p = Pun.find(pun_id)
    p.tag_list.each do |tag|
      t = find_or_initialize_by_content(tag)
      t.puns << p
      t.save
    end
  end


end
