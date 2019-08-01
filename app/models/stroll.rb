class Stroll < ApplicationRecord
	#Ligne permettant d'indiquer qu'une balade concerne un et un seul chien ! Il en est de même pour les dogsitters
	belongs_to :dog
	belongs_to :dogsitter
end
