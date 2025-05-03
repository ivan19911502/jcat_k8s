DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'colors') THEN
        CREATE TYPE colors AS ENUM (
            'WHITE', 'BLACK', 'BLACK_WHITE', 'RED', 'BLACK_RED', 
            'RED_WHITE', 'RED_WHITE_BLACK', 'BLUE', 'FAWN', 'CREAM'
        );
    END IF;
END
$$;
