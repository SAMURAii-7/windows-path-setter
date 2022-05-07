for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B

if exist "C:\example" setx PATH "C:\example;%my_user_path%"
