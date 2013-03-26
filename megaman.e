note
	description: "[
					Gêre l'affichage du personnage contrôlé par le joueur (megaman)
					Contient le chemin d'accès au fichier graphique du personnage, ainsi que ses coordoné et envoie les informations nécessaire à la classe sprites pour l'affichage
]"
	author: "Samuel Forcier - David Lafrenière"
	date: "25 mars 2013"
	revision: "1.0"



class
	MEGAMAN
inherit
	SPRITE
create
	fait
feature {NONE} -- Implementation

	fait
	local
		l_chemin_c:C_STRING
	do

	chemin_megaman := "megaman.bmp"

	create l_chemin_c.make (chemin_megaman)

	ptr := {RAPPER}.SDL_LoadBMP(l_chemin_c.item)

	mega_x := 50
	mega_y := 342
	mega_w := 63
	mega_h := 94


	end



note
	copyright:"Copyright - Samuel Forcier - David Lafrenière"
	licence:"GPL 3.0 (see http://www.gnu.org/licences/gpl-3.0.txt)"
	source:"[
				Samuel Forcier						David Lafrenière
				Étudiant Cégep de Drummondville		Étudiant Cégep de Drummondville
]"

end

