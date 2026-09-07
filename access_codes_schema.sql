CREATE TABLE IF NOT EXISTS access_codes (
    code TEXT PRIMARY KEY,
    label TEXT,
    active BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
