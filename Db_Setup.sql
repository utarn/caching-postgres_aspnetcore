-- Table: public."DistCache"

-- DROP TABLE public."DistCache";

CREATE UNLOGGED TABLE public."DistCache"
(
  "Id" text NOT NULL,
  "Value" bytea,
  "ExpiresAtTime" timestamp with time zone,
  "SlidingExpirationInSeconds" double precision,
  "AbsoluteExpiration" timestamp with time zone,
  CONSTRAINT "DistCache_pkey" PRIMARY KEY ("Id")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public."DistCache"
  OWNER TO postgres;
  
CREATE INDEX "DistCache_ExpiresAtTime_idx" ON "public"."DistCache" USING btree (
  "ExpiresAtTime" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
