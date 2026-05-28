# Cardiovet IA — Análise de ECG

Ferramenta web para interpretação automática de parâmetros de eletrocardiograma em **cães e gatos**.

## Funcionalidades

- Formulário completo de parâmetros de ECG (Lead II)
- Interpretação automática comparando com valores de referência por espécie e porte
- Sinalização visual: ✅ Normal / ⚠️ Limítrofe / ❌ Alterado
- Sugestões diagnósticas baseadas nos achados
- Tabela de valores de referência consultável
- Impressão / exportação de laudo

## Parâmetros Avaliados

- Frequência cardíaca
- Ritmo (20+ opções incluindo arritmias)
- Onda P: amplitude e duração
- Intervalo PR
- Complexo QRS: duração e amplitude R
- Eixo elétrico médio (MEA)
- Segmento ST (depressão/elevação)
- Onda T (relação T/R)
- Intervalo QT

## Valores de Referência

| Parâmetro | Cão pequeno/toy | Cão médio/grande | Gato |
|---|---|---|---|
| FC (bpm) | 80–180 | 70–160 | 120–240 |
| Amplitude P (mV) | 0.15–0.40 | 0.15–0.40 | ≤ 0.20 |
| Duração P (s) | 0.02–0.04 | 0.02–0.04 | ≤ 0.04 |
| Intervalo PR (s) | 0.06–0.13 | 0.06–0.13 | 0.05–0.09 |
| Duração QRS (s) | 0.03–0.05 | 0.04–0.06 | ≤ 0.04 |
| Amplitude R (mV) | 0.9–2.8 | 1.2–3.0 | ≤ 0.9 |
| Desvio ST (mV) | ≤ 0.05 | ≤ 0.05 | ≤ 0.05 |
| QT (s) | 0.15–0.25 | 0.15–0.25 | 0.12–0.20 |
| MEA (°) | +40 a +100 | +40 a +100 | 0 a +160 |

## Fontes Científicas

- Varshney, J.P. (2020). *Electrocardiography in Veterinary Medicine*. Springer Nature.
- Opti-ECG Veterinary Interpretation Guide — https://www.opti-ecg.com/learn/veterinary/veterinary-ecg-interpretation
- AniCura — Doenças do coração em cães e gatos
- PMC/NCBI — "A study on electrocardiography in dogs: Reference values" (2020)
- Veteriankey — Benchmarks for Normal Electrocardiogram (Varshney, 2020)

## Como usar

Abra o `index.html` diretamente no navegador, ou acesse pelo GitHub Pages.

## Aviso

Esta ferramenta é um **auxílio diagnóstico**. Não substitui avaliação clínica ou laudo de médico-veterinário cardiologista.

---

**Cardiovet IA** · 2025
