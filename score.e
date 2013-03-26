note
	description: "[
					Gêre le système de pointage
					Calcule le pointage du joueur
]"
	author: "Samuel Forcier - David Lafrenière"
	date: "25 mars 2013"
	revision: "1.0"


class
	SCORE

create
	andhescores
feature
	andhescores

			do
				point := 0
			end

	point:INTEGER_32 assign set_point

	set_point(a_point:INTEGER_32)
		do
			point:=a_point
		end


note
	copyright:"Copyright - Samuel Forcier - David Lafrenière"
	licence:"GPL 3.0 (see http://www.gnu.org/licences/gpl-3.0.txt)"
	source:"[
				Samuel Forcier						David Lafrenière
				Étudiant Cégep de Drummondville		Étudiant Cégep de Drummondville
]"
end
