//Call MainLogic FB
FB_MainLogic(); //Associated instance DB FB_MainLogic_DB

//HMI blocks visualization
//Where IndexHeight and IndexLength are DINT

FOR #IndexHeight := 1 TO "FIELD_HEIGHT" DO
    FOR #IndexLength := 1 TO "FIELD_LENGTH" DO
        IF "DB_Field".Field[#IndexHeight, #IndexLength].SnakePresence THEN
            "DB_Field".Field[#IndexHeight, #IndexLength].HMI_Visualization := 1;
        ELSIF "DB_Field".Field[#IndexHeight, #IndexLength].ApplePresence THEN
            "DB_Field".Field[#IndexHeight, #IndexLength].HMI_Visualization := 2;
        ELSE
            "DB_Field".Field[#IndexHeight, #IndexLength].HMI_Visualization := 0;
        END_IF;
    END_FOR;
END_FOR;
