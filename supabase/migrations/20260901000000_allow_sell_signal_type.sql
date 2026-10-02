ALTER TABLE signals DROP CONSTRAINT IF EXISTS signals_signal_type_check;
ALTER TABLE signals
  ADD CONSTRAINT signals_signal_type_check
  CHECK (signal_type IN ('BUY', 'SELL', 'WAIT', 'EXIT', 'NO_TRADE'));