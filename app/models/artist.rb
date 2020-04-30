class Artist < ApplicationRecord
    has_many :plays 
    has_many :instruments, through: :plays 

    validates :name, presence: true
    validates :title, uniqueness: true 

    def instruments_i_play 
        Play.all.select do |play|
            play.artist_id == self.id 
        end.map { |play| play.instrument }.uniq 
    end 
end
