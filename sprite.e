note
	description: "[
					Fait afficher à l'écran les divers sprites
					Affiche à l'écran les sprites qui lui sont envoyé par les classes approprié (megaman,background etc.) et contient aussi les coordonnées des divers sprites

]"
	author: "Samuel Forcier - David Lafrenière"
	date: "25 mars 2013"
	revision: "1.0"


deferred class
	SPRITE

feature
	sprite_affiche_mega (a_screen:POINTER)
	local

			l_screen, l_targetarea, l_null:POINTER
			l_inutile:INTEGER
			l_chemin_c:C_STRING
			l_RGB:NATURAL_32
			l_Format:POINTER

		do

			l_screen := a_screen

			l_targetarea:=l_targetarea.memory_calloc ({RAPPER}.sizeof_SDL_Rect,1)

			--Coordonnees de l'image dans la fenetre
			{RAPPER}.set_x_from_SDL_Rect(l_targetarea,mega_x.truncated_to_integer.as_integer_16)

			{RAPPER}.set_y_from_SDL_Rect(l_targetarea,mega_y.truncated_to_integer.as_integer_16)

			{RAPPER}.set_w_from_SDL_Rect(l_targetarea,mega_w.truncated_to_integer.as_natural_16)

			{RAPPER}.set_h_from_SDL_Rect(l_targetarea,mega_h.truncated_to_integer.as_natural_16)

			--Place l'image sur la fenetre


			l_Format := {RAPPER}.get_Format_from_SDL_Surface(ptr)

			l_RGB := {RAPPER}.SDL_MapRGB(l_Format,255,0,255)

			l_inutile := {RAPPER}.SDL_SetColorKey(ptr,{RAPPER}.SDL_SRCCOLORKEY,l_RGB)

			l_inutile := {RAPPER}.SDL_BlitSurface(ptr,l_null,l_screen,l_targetarea)

			l_targetarea.memory_free

			end

			sprite_affiche_background (a_screen:POINTER)
	local

			l_screen, l_targetarea, l_null:POINTER
			l_inutile:INTEGER
			l_chemin_c:C_STRING
			l_RGB:NATURAL_32
			l_Format:POINTER

		do

			l_screen := a_screen

			l_targetarea:=l_targetarea.memory_calloc ({RAPPER}.sizeof_SDL_Rect,1)

			--Coordonnees de l'image dans la fenetre
			{RAPPER}.set_x_from_SDL_Rect(l_targetarea,background_x)

			{RAPPER}.set_y_from_SDL_Rect(l_targetarea,background_y)

			{RAPPER}.set_w_from_SDL_Rect(l_targetarea,background_w)

			{RAPPER}.set_h_from_SDL_Rect(l_targetarea,background_h)

			--Place l'image sur la fenetre


			l_Format := {RAPPER}.get_Format_from_SDL_Surface(ptr)

			l_RGB := {RAPPER}.SDL_MapRGB(l_Format,255,0,255)

			l_inutile := {RAPPER}.SDL_SetColorKey(ptr,{RAPPER}.SDL_SRCCOLORKEY,l_RGB)

			l_inutile := {RAPPER}.SDL_BlitSurface(ptr,l_null,l_screen,l_targetarea)

			l_targetarea.memory_free

			end

			droite

			do

			mega_x := mega_x + 1

			end

			gauche

			do
				mega_x := mega_x - 1
			end


	chemin_megaman:STRING
	mega_x:REAL
	mega_y:REAL
	mega_w:REAL
	mega_h:REAL
	 ptr:POINTER
	background_x:INTEGER_16
	background_y:INTEGER_16
	background_w:NATURAL_16
	background_h:NATURAL_16
	chemin_background:STRING



--note
--	copyright:"Copyright - Samuel Forcier - David Lafrenière"
--	licence:"GPL 3.0 (see http://www.gnu.org/licences/gpl-3.0.txt)"
--	source:"[
--				Samuel Forcier						David Lafrenière
--				Étudiant Cégep de Drummondville		Étudiant Cégep de Drummondville
--]"

end
