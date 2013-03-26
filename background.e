note
	description: "[
					G�re l'affichage de l'arri�re-plan
					Contient le chemin d'acc�s pour le fichier graphique de l'arri�re-plan et envoir les informations n�cessaire � la classe sprite
]"
	author: "Samuel Forcier - David Lafreni�re"
	date: "25 mars 2013"
	revision: "1.0"

class
	BACKGROUND
inherit
	SPRITE

create
	make

feature {NONE}-- Implementation


	make
	local
		l_chemin_c:C_STRING
	do

	chemin_background := "background.bmp"

	create l_chemin_c.make (chemin_background)

	ptr := {RAPPER}.SDL_LoadBMP(l_chemin_c.item)

	background_x := 0
	background_y := 0
	background_w := 840
	background_h := 640

	end




note
	copyright:"Copyright - Samuel Forcier - David Lafreni�re"
	licence:"GPL 3.0 (see http://www.gnu.org/licences/gpl-3.0.txt)"
	source:"[
				Samuel Forcier						David Lafreni�re
				�tudiant C�gep de Drummondville		�tudiant C�gep de Drummondville
]"

end
