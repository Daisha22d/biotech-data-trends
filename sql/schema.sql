CREATE TABLE clinical_trials (
  trial_id TEXT,
  condition TEXT,
  phase TEXT,
  status TEXT,
  start_date TEXT,
  sponsor_id TEXT
);

CREATE TABLE sponsors (
  sponsor_id TEXT,
  sponsor_name TEXT,
  sponsor_type TEXT
);

CREATE TABLE funding (
  funding_id TEXT,
  sponsor_id TEXT,
  funding_date TEXT,
  round TEXT,
  amount_million REAL
);
