@echo off
setlocal enabledelayedexpansion

set "BACK_DIR=k:\ollama\trae_work\work\ipaigc\back\src\main\java\com\ipaigc"

REM 验证修复点

echo === 验证修复点 ===
echo.

REM 1. 验证TeamServiceImpl中的修复
echo 1. 验证TeamServiceImpl中的修复
echo 检查setUpdatedAt方法是否存在...
fingrep "setUpdatedAt" "%BACK_DIR%\service\impl\TeamServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ setUpdatedAt方法已正确使用
) else (
    echo   ✗ setUpdatedAt方法未找到
)

echo 检查setTeam方法是否存在...
fingrep "setTeam(" "%BACK_DIR%\service\impl\TeamServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ setTeam方法已正确使用
) else (
    echo   ✗ setTeam方法未找到
)

echo 检查setUser方法是否存在...
fingrep "setUser(" "%BACK_DIR%\service\impl\TeamServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ setUser方法已正确使用
) else (
    echo   ✗ setUser方法未找到
)

echo.

REM 2. 验证PatentDocumentServiceImpl中的修复
echo 2. 验证PatentDocumentServiceImpl中的修复
echo 检查Long.parseLong转换是否存在...
fingrep "Long.parseLong(" "%BACK_DIR%\service\impl\PatentDocumentServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ Long.parseLong转换已正确使用
) else (
    echo   ✗ Long.parseLong转换未找到
)

echo 检查findByCreatorId方法是否存在...
fingrep "findByCreatorId(" "%BACK_DIR%\service\impl\PatentDocumentServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ findByCreatorId方法已正确使用
) else (
    echo   ✗ findByCreatorId方法未找到
)

echo 检查findByPatentCaseId方法是否存在...
fingrep "findByPatentCaseId(" "%BACK_DIR%\service\impl\PatentDocumentServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ findByPatentCaseId方法已正确使用
) else (
    echo   ✗ findByPatentCaseId方法未找到
)

echo.

REM 3. 验证PatentSectionController中的修复
echo 3. 验证PatentSectionController中的修复
echo 检查Long.parseLong转换是否存在...
fingrep "Long.parseLong(" "%BACK_DIR%\controller\PatentSectionController.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ Long.parseLong转换已正确使用
) else (
    echo   ✗ Long.parseLong转换未找到
)

echo.

REM 4. 验证FileShareServiceImpl中的修复
echo 4. 验证FileShareServiceImpl中的修复
echo 检查setPermission方法是否存在...
fingrep "setPermission(" "%BACK_DIR%\service\impl\FileShareServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ setPermission方法已正确使用
) else (
    echo   ✗ setPermission方法未找到
)

echo 检查setExpiresAt方法是否存在...
fingrep "setExpiresAt(" "%BACK_DIR%\service\impl\FileShareServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ setExpiresAt方法已正确使用
) else (
    echo   ✗ setExpiresAt方法未找到
)

echo 检查Collections.emptyList方法是否存在...
fingrep "Collections.emptyList(" "%BACK_DIR%\service\impl\FileShareServiceImpl.java" >nul 2>&1
if %errorlevel% equ 0 (
    echo   ✓ Collections.emptyList方法已正确使用
) else (
    echo   ✗ Collections.emptyList方法未找到
)

echo.
echo === 验证完成 ===
