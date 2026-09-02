USE GLOB

SET IDENTITY_INSERT styles.header ON

INSERT
INTO styles.header(id, name, content)
VALUES (555, N'button-confirm', N'bacground: #171717')

SET IDENTITY_INSERT styles.header OFF