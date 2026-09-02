USE GLOB

INSERT
INTO styles.header(name, content)
VALUES (N'button-confirm', N'bacground: #171717')

SELECT @@Identity, Scope_Identity() 
AS LastID

SELECT IDENT_CURRENT('styles.header')