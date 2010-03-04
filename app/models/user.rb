class User < ActiveRecord::Base
  validates_presence_of :imie, :nazwisko, :wiek, :wzrost
  validates_numericality_of :wiek, :wzrost

end
