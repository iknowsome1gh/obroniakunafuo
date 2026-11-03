-- Migration: add missing image_alt column to programmes table.
-- Run this in the Supabase SQL Editor so admin programme saves work.
--
-- Context: src/lib/data/content.ts upsertProgrammeSupabase() intentionally
-- omits image_alt because this column did not exist on the live table. Once
-- this migration is applied, re-enable the `image_alt` line in that function.

ALTER TABLE programmes
  ADD COLUMN IF NOT EXISTS image_alt text NOT NULL DEFAULT '';
