; Call from M911 at power failure
M913 X0 Y0 Z0 U0 E0:0
M106 S0 H-1 P0:1:2:3:4
echo >"0:/sys/autopower.g" "M140 S"^{heat.heaters[0].active}
echo >>"0:/sys/autopower.g" "set global.i18n[1] = ""sys_autopower_01"""
echo >>"0:/sys/autopower.g" "M98 P""messages.g"""
echo >>"0:/sys/autopower.g" "M291 R{global.i18n[2]} P{global.i18n[3]} S3"
echo >>"0:/sys/autopower.g" "M916"
