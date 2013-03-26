note
	description: "[
					Initialise le programme
					Sert a appeler les classes/objets nécessaire au lancement du programme
]"
	author: "Samuel Forcier - David Lafrenière"
	date: "25 mars 2013"
	revision: "1.0"

class
	THE_MAKER



create
	make

feature {NONE} -- Initialization

		make	-- Initialization for `Current'.
		local
			l_afficher:AFFICHER
		do
			create l_afficher.make
		end

feature
	ass:SPRITE
	sec:MEGAMAN
	pop:SON
	cac:BACKGROUND
	david:PROJECTILE
	dskajdhsa:GENTILPROJECTILE



invariant
note
	copyright:"Copyright - Samuel Forcier - David Lafrenière"
	licence:"GPL 3.0 (see http://www.gnu.org/licences/gpl-3.0.txt)"
	source:"[
				Samuel Forcier						David Lafrenière
				Étudiant Cégep de Drummondville		Étudiant Cégep de Drummondville
]"


end

