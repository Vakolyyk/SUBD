ALTER TABLE продажі
    DROP FOREIGN KEY ФКпекарня,
    DROP INDEX ФКпекарня;

ALTER TABLE `клiєнти`
    DROP COLUMN По_батькові, 
    MODIFY COLUMN Прізвище VARCHAR(55) NULL;

ALTER TABLE `продукцiя`
    MODIFY COLUMN `Маса` INT(10) NULL;

ALTER TABLE `працiвники`
    MODIFY Код_працівника INT(32) UNSIGNED NOT NULL, 
    ADD COLUMN Код_зміни TINYINT(8) UNSIGNED NOT NULL AFTER Код_працівника, 
    ADD CONSTRAINT UNIQUE Об_код_працівника (Код_працівника, Код_зміни); 

ALTER TABLE`продукцiя`
    DROP FOREIGN KEY ФКрецепт,
    ADD CONSTRAINT ФКреецепт FOREIGN KEY (Код_рецепту) 
    REFERENCES  `рецепт`(Код_рецепту) ON DELETE CASCADE;
