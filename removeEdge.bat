@echo off
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)
taskkill /f /im Widgets.exe
rmdir /s /q C:\"Program Files (x86)"\Microsoft\Edge
rmdir /s /q C:\"Program Files (x86)"\Microsoft\EdgeUpdate
rmdir /s /q C:\"Program Files (x86)"\Microsoft\Temp