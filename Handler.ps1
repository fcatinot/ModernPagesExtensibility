cd C:\Users\fcatinot\Desktop\ExtensibilityHandler
Connect-PnPOnline –Url https://fctinfeeny.sharepoint.com/sites/TestPnp –Credentials (Get-Credential -Message "Supply password" -UserName "franck.catinot@fctinfeeny.onmicrosoft.com")
Add-Type -Path "C:\Users\fcatinot\source\repos\ModernPagesClasses\ModernPages\bin\Debug\ModernPages.dll"
$handler = New-PnPExtensibilityHandlerObject -Assembly "ModernPages, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" -type "ModernPages.CopyModernPagesToTemplate"
Get-PnPProvisioningTemplate -Out templ.xml -ExtensibilityHandlers $handler