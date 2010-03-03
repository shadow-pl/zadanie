class User < ActiveRecord::Base
  validates_presence_of :imie, :nazwisko, :wiek
  validates_numericality_of :wiek
end
