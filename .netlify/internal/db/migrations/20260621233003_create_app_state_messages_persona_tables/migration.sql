CREATE TABLE "app_state" (
	"id" integer PRIMARY KEY,
	"memory_summary" text DEFAULT '' NOT NULL,
	"active_model" text DEFAULT 'llama4' NOT NULL
);
--> statement-breakpoint
CREATE TABLE "messages" (
	"id" serial PRIMARY KEY,
	"role" text NOT NULL,
	"content" text NOT NULL,
	"created_at" timestamp DEFAULT now()
);
--> statement-breakpoint
CREATE TABLE "persona" (
	"id" integer PRIMARY KEY,
	"ai_name" text DEFAULT 'AI' NOT NULL,
	"user_name" text DEFAULT '' NOT NULL,
	"persona_type" text DEFAULT 'dev' NOT NULL,
	"custom_instructions" text DEFAULT '' NOT NULL
);