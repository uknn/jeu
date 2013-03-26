note
	description: "[
					Gêre l'affichage à l'écran du programme
					Sert à gêrer l'afficher des divers sprites, gêrer les commandes au clavier et coordonner le programme de manière générale
]"
	author: "Samuel Forcier - David Lafrenière"
	date: "25 mars 2013"
	revision: "1.0"

class
	AFFICHER

create
	make

feature

	npc: SPRITE

	background: BACKGROUND

	music: SON

	score: SCORE

feature {NONE}

	make
		local
			l_inutile: INTEGER_32
			l_screen: POINTER
			l_gamestate: BOOLEAN
			l_titre: STRING
			l_titre_c: C_STRING
			l_event: POINTER
			l_background: BACKGROUND
			l_megaman: MEGAMAN
			l_objet_score: SCORE
			l_BD:BD
			l_key:POINTER
			l_keysym:POINTER
			l_sym:INTEGER

		do
			l_gamestate := true
			l_titre := "Megaman Rectum Edition"
			create l_titre_c.make (l_titre)
			l_inutile := {RAPPER}.SDL_Init ({RAPPER}.SDL_INIT_VIDEO)
			l_screen := {RAPPER}.SDL_SetVideoMode (840, 640, 32, {RAPPER}.SDL_SWSURFACE)
			{RAPPER}.SDL_WM_SetCaption (l_titre_c.item, create {POINTER})
			l_event := l_event.memory_calloc ({RAPPER}.sizeof_SDL_Event, 1)



			create l_background.make
			create l_megaman.fait
			create l_objet_score.andhescores
			from
				l_gamestate := true
			until
				l_gamestate = false
			loop
				if {RAPPER}.SDL_PollEvent (l_event) = 1 then
					if {RAPPER}.get_type_from_SDL_Event (l_event) = {RAPPER}.SDL_KEYDOWN_const then
					l_key := {RAPPER}.get_key_from_event(l_event)
					l_keysym := {RAPPER}.get_keysym_from_keyboardevent(l_key)
					l_sym := {RAPPER}.get_sym_from_keysym(l_keysym)
					end
					if {RAPPER}.get_type_from_SDL_Event (l_event) = {RAPPER}.SDL_KEYUP_const then
					l_sym := 0
					end
					if {RAPPER}.get_type_from_SDL_Event (l_event) = {RAPPER}.SDL_Quit_const then
						l_gamestate := false
					end
				end

				if l_sym={RAPPER}.SDLK_SPACE_const
				then
					-----	
				elseif l_sym={RAPPER}.SDLK_RIGHT_const
				then
					l_megaman.droite
				elseif l_sym = {RAPPER}.SDLK_LEFT_const
				then
					l_megaman.gauche
				elseif l_sym = {RAPPER}.SDLK_ESCAPE_const
				then
				l_gamestate := false
				end


				l_background.sprite_affiche_background (l_screen)
				l_megaman.sprite_affiche_mega (l_screen)
				l_inutile := {RAPPER}.SDL_Flip (l_screen)
				{RAPPER}.SDL_Delay (1)
				l_objet_score.point := 1
			end
			create l_BD.createdatabase (l_objet_score)
			l_event.memory_free
		end


note
	copyright:"Copyright - Samuel Forcier - David Lafrenière"
	licence:"GPL 3.0 (see http://www.gnu.org/licences/gpl-3.0.txt)"
	source:"[
				Samuel Forcier						David Lafrenière
				Étudiant Cégep de Drummondville		Étudiant Cégep de Drummondville
]"

end
