::  Build lvgl-wasm on Windows. Derived from GitHub Actions log: https://github.com/AppKaki/lvgl-wasm/actions
::  Note: emcc won't run multiple times from this script. To build on Windows:
::  (1) Copy and paste all the lines in "First Time Build Only" section below to a Windows Command Prompt
::  (2) Then enter "build.cmd"
cargo build
..\emsdk\emsdk_env.bat
emcc -o wasm/lvgl.html ^
    -Wl,--start-group ^
    lv_group.o lv_indev.o lv_disp.o lv_obj.o lv_refr.o lv_style.o lv_hal_disp.o lv_hal_indev.o lv_hal_tick.o lv_arc.o lv_bar.o lv_checkbox.o lv_cpicker.o lv_dropdown.o lv_keyboard.o lv_line.o lv_msgbox.o lv_spinner.o lv_roller.o lv_table.o lv_tabview.o lv_tileview.o lv_btn.o lv_calendar.o lv_chart.o lv_canvas.o lv_gauge.o lv_label.o lv_list.o lv_slider.o lv_textarea.o lv_spinbox.o lv_btnmatrix.o lv_cont.o lv_img.o lv_imgbtn.o lv_led.o lv_linemeter.o lv_page.o lv_switch.o lv_win.o lv_objmask.o lv_font.o lv_font_fmt_txt.o lv_font_montserrat_12.o lv_font_montserrat_14.o lv_font_montserrat_16.o lv_font_montserrat_18.o lv_font_montserrat_20.o lv_font_montserrat_22.o lv_font_montserrat_24.o lv_font_montserrat_26.o lv_font_montserrat_28.o lv_font_montserrat_30.o lv_font_montserrat_32.o lv_font_montserrat_34.o lv_font_montserrat_36.o lv_font_montserrat_38.o lv_font_montserrat_40.o lv_font_montserrat_42.o lv_font_montserrat_44.o lv_font_montserrat_46.o lv_font_montserrat_48.o lv_font_montserrat_12_subpx.o lv_font_montserrat_28_compressed.o lv_font_unscii_8.o lv_font_dejavu_16_persian_hebrew.o lv_area.o lv_task.o lv_fs.o lv_anim.o lv_mem.o lv_ll.o lv_color.o lv_txt.o lv_txt_ap.o lv_math.o lv_log.o lv_gc.o lv_utils.o lv_async.o lv_printf.o lv_bidi.o lv_debug.o lv_theme.o lv_theme_material.o lv_theme_mono.o lv_theme_empty.o lv_theme_template.o lv_draw_mask.o lv_draw_blend.o lv_draw_rect.o lv_draw_label.o lv_draw_line.o lv_draw_img.o lv_draw_arc.o lv_draw_triangle.o lv_img_decoder.o lv_img_cache.o lv_img_buf.o lv_gpu_stm32_dma2d.o wasm/lv_port_disp.o mynewt/inline.o wasm/lvgl.o ^
    -Wl,--end-group ^
    -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]" ^
    target/wasm32-unknown-emscripten/debug/libwasm.a

::  First Time Build Only: Copy and paste all the lines below to a Windows Command Prompt, because emcc won't run multiple times from this script.
..\emsdk\emsdk_env.bat
emcc -c -o lv_group.o ././src/lv_core/lv_group.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_indev.o ././src/lv_core/lv_indev.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_disp.o ././src/lv_core/lv_disp.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_obj.o ././src/lv_core/lv_obj.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_refr.o ././src/lv_core/lv_refr.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_style.o ././src/lv_core/lv_style.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_hal_disp.o ././src/lv_hal/lv_hal_disp.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_hal_indev.o ././src/lv_hal/lv_hal_indev.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_hal_tick.o ././src/lv_hal/lv_hal_tick.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_arc.o ././src/lv_widgets/lv_arc.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_bar.o ././src/lv_widgets/lv_bar.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_checkbox.o ././src/lv_widgets/lv_checkbox.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_cpicker.o ././src/lv_widgets/lv_cpicker.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_dropdown.o ././src/lv_widgets/lv_dropdown.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_keyboard.o ././src/lv_widgets/lv_keyboard.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_line.o ././src/lv_widgets/lv_line.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_msgbox.o ././src/lv_widgets/lv_msgbox.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_spinner.o ././src/lv_widgets/lv_spinner.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_roller.o ././src/lv_widgets/lv_roller.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_table.o ././src/lv_widgets/lv_table.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_tabview.o ././src/lv_widgets/lv_tabview.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_tileview.o ././src/lv_widgets/lv_tileview.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_btn.o ././src/lv_widgets/lv_btn.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_calendar.o ././src/lv_widgets/lv_calendar.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_chart.o ././src/lv_widgets/lv_chart.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_canvas.o ././src/lv_widgets/lv_canvas.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_gauge.o ././src/lv_widgets/lv_gauge.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_label.o ././src/lv_widgets/lv_label.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_list.o ././src/lv_widgets/lv_list.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_slider.o ././src/lv_widgets/lv_slider.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_textarea.o ././src/lv_widgets/lv_textarea.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_spinbox.o ././src/lv_widgets/lv_spinbox.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_btnmatrix.o ././src/lv_widgets/lv_btnmatrix.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_cont.o ././src/lv_widgets/lv_cont.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_img.o ././src/lv_widgets/lv_img.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_imgbtn.o ././src/lv_widgets/lv_imgbtn.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_led.o ././src/lv_widgets/lv_led.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_linemeter.o ././src/lv_widgets/lv_linemeter.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_page.o ././src/lv_widgets/lv_page.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_switch.o ././src/lv_widgets/lv_switch.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_win.o ././src/lv_widgets/lv_win.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_objmask.o ././src/lv_widgets/lv_objmask.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font.o ././src/lv_font/lv_font.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_fmt_txt.o ././src/lv_font/lv_font_fmt_txt.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_12.o ././src/lv_font/lv_font_montserrat_12.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_14.o ././src/lv_font/lv_font_montserrat_14.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_16.o ././src/lv_font/lv_font_montserrat_16.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_18.o ././src/lv_font/lv_font_montserrat_18.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_20.o ././src/lv_font/lv_font_montserrat_20.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_22.o ././src/lv_font/lv_font_montserrat_22.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_24.o ././src/lv_font/lv_font_montserrat_24.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_26.o ././src/lv_font/lv_font_montserrat_26.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_28.o ././src/lv_font/lv_font_montserrat_28.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_30.o ././src/lv_font/lv_font_montserrat_30.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_32.o ././src/lv_font/lv_font_montserrat_32.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_34.o ././src/lv_font/lv_font_montserrat_34.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_36.o ././src/lv_font/lv_font_montserrat_36.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_38.o ././src/lv_font/lv_font_montserrat_38.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_40.o ././src/lv_font/lv_font_montserrat_40.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_42.o ././src/lv_font/lv_font_montserrat_42.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_44.o ././src/lv_font/lv_font_montserrat_44.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_46.o ././src/lv_font/lv_font_montserrat_46.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_48.o ././src/lv_font/lv_font_montserrat_48.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_12_subpx.o ././src/lv_font/lv_font_montserrat_12_subpx.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_montserrat_28_compressed.o ././src/lv_font/lv_font_montserrat_28_compressed.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_unscii_8.o ././src/lv_font/lv_font_unscii_8.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_font_dejavu_16_persian_hebrew.o ././src/lv_font/lv_font_dejavu_16_persian_hebrew.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_area.o ././src/lv_misc/lv_area.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_task.o ././src/lv_misc/lv_task.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_fs.o ././src/lv_misc/lv_fs.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_anim.o ././src/lv_misc/lv_anim.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_mem.o ././src/lv_misc/lv_mem.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_ll.o ././src/lv_misc/lv_ll.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_color.o ././src/lv_misc/lv_color.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_txt.o ././src/lv_misc/lv_txt.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_txt_ap.o ././src/lv_misc/lv_txt_ap.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_math.o ././src/lv_misc/lv_math.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_log.o ././src/lv_misc/lv_log.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_gc.o ././src/lv_misc/lv_gc.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_utils.o ././src/lv_misc/lv_utils.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_async.o ././src/lv_misc/lv_async.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_printf.o ././src/lv_misc/lv_printf.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_bidi.o ././src/lv_misc/lv_bidi.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_debug.o ././src/lv_misc/lv_debug.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_theme.o ././src/lv_themes/lv_theme.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_theme_material.o ././src/lv_themes/lv_theme_material.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_theme_mono.o ././src/lv_themes/lv_theme_mono.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_theme_empty.o ././src/lv_themes/lv_theme_empty.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_theme_template.o ././src/lv_themes/lv_theme_template.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_mask.o ././src/lv_draw/lv_draw_mask.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_blend.o ././src/lv_draw/lv_draw_blend.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_rect.o ././src/lv_draw/lv_draw_rect.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_label.o ././src/lv_draw/lv_draw_label.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_line.o ././src/lv_draw/lv_draw_line.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_img.o ././src/lv_draw/lv_draw_img.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_arc.o ././src/lv_draw/lv_draw_arc.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_draw_triangle.o ././src/lv_draw/lv_draw_triangle.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_img_decoder.o ././src/lv_draw/lv_img_decoder.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_img_cache.o ././src/lv_draw/lv_img_cache.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_img_buf.o ././src/lv_draw/lv_img_buf.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o lv_gpu_stm32_dma2d.o ././src/lv_gpu/lv_gpu_stm32_dma2d.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o wasm/lv_port_disp.o wasm/lv_port_disp.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o mynewt/inline.o mynewt/inline.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
emcc -c -o wasm/lvgl.o wasm/lvgl.c -g -I src/lv_core -D LV_USE_DEMO_WIDGETS -s WASM=1 -s "EXPORTED_FUNCTIONS=[ '_main', '_get_display_buffer', '_get_display_width', '_get_display_height', '_test_display', '_init_display', '_render_display', '_render_widgets', '_create_clock', '_refresh_clock', '_update_clock' ]"
