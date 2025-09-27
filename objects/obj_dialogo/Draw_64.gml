if inicializar == true { 
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();
var _xx = 32;
var _yy = _guia - 200;
var _c = c_black;
var _texto = string_copy ((texto_grid [# Infos.Texto, pagina]), 0, caractere);
draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_left);

if texto_grid [# Infos.Lado, pagina] == 0 {
	draw_rectangle_color(_xx + 200, _yy, _guil, _guia, _c, _c, _c, _c, false);
	draw_text(_xx + 235, _yy + 32, texto_grid [# Infos.Nome, pagina]);
	draw_text_ext(_xx + 232, _yy + 82, _texto, 32, _guil - 264);

} else {
	draw_rectangle_color(_xx, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
	draw_text(_xx + 46, _yy + 32, texto_grid [# Infos.Nome, pagina]);
	draw_text_ext(_xx + 42, _yy + 82, _texto, 32, _guil - 264);
}}