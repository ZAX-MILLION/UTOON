import fs from "node:fs";

const required = [
  "README.md",
  "AGENTS.md",
  "BRAIN.md",
  "RULES.md",
  "PLAN.md",
  "CHECKLIST.md",
  "project-status.json",
  "docs/PRD.md",
  "docs/ARCHITECTURE.md",
  "docs/SEO_GEO.md",
  "docs/LEGAL_RIGHTS_GATES.md",
  "docs/PROVIDER_QUESTIONS.md",
  "docs/SKILL_MATRIX.md",
  "docs/AGENT_TOOLING.md",
  "agent-tools/skills.lock.json"
];

const missing = required.filter((p) => !fs.existsSync(p));
if (missing.length) {
  console.error("Missing foundation files:\n" + missing.map((x) => " - " + x).join("\n"));
  process.exit(1);
}

const status = JSON.parse(fs.readFileSync("project-status.json", "utf8"));
if (!status.code_authorized) {
  const forbidden = ["src", "astro.config.mjs", "astro.config.ts", "package.json"];
  const present = forbidden.filter((p) => fs.existsSync(p));
  if (present.length) {
    console.error("Product code is blocked during foundation phase. Found: " + present.join(", "));
    process.exit(1);
  }
}

console.log("UTOON foundation guard: PASS");
console.log("phase:", status.phase);
console.log("code_authorized:", status.code_authorized);
