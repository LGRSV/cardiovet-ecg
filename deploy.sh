#!/bin/bash
# ─────────────────────────────────────────────────────────────────────────────
# Cardiovet IA — Script de deploy para GitHub Pages
# Execute este script UMA VEZ na pasta cardiovet-ecg
# Requisito: ter o GitHub CLI (gh) instalado e autenticado
# ─────────────────────────────────────────────────────────────────────────────

set -e

REPO_NAME="cardiovet-ecg"
DESCRIPTION="Cardiovet IA — Ferramenta de análise de ECG para pequenos animais"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║     Cardiovet IA — Deploy para GitHub Pages     ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""

# 1. Inicializa git
echo "▶ Inicializando repositório git..."
git init
git add .
git commit -m "feat: Cardiovet IA - ferramenta de análise de ECG v1.0"

# 2. Cria repositório público no GitHub
echo ""
echo "▶ Criando repositório '$REPO_NAME' no GitHub..."
gh repo create "$REPO_NAME" \
  --public \
  --description "$DESCRIPTION" \
  --source=. \
  --remote=origin \
  --push

# 3. Ativa GitHub Pages na branch main
echo ""
echo "▶ Ativando GitHub Pages..."
gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  "/repos/$(gh api /user --jq .login)/$REPO_NAME/pages" \
  -f source='{"branch":"main","path":"/"}' \
  2>/dev/null || true

sleep 3

# 4. Mostra URL final
USERNAME=$(gh api /user --jq .login)
URL="https://${USERNAME}.github.io/${REPO_NAME}"

echo ""
echo "╔══════════════════════════════════════════════════╗"
echo "║  ✅  Deploy concluído com sucesso!               ║"
echo "╠══════════════════════════════════════════════════╣"
echo "║                                                  ║"
echo "║  🔗 URL do site:                                 ║"
echo "║  $URL"
echo "║                                                  ║"
echo "║  ⏳ O GitHub Pages pode levar 1-2 minutos        ║"
echo "║     para ficar disponível pela primeira vez.     ║"
echo "╚══════════════════════════════════════════════════╝"
echo ""
