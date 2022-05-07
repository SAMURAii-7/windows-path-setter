for /f "usebackq tokens=2,*" %%A in (`reg query HKCU\Environment /v PATH`) do set my_user_path=%%B

if exist "D:\sdks\tools" setx PATH "D:\sdks\tools;%my_user_path%"