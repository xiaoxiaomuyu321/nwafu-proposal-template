# 西北农林科技大学博士研究生开题报告 · 完整空白 LaTeX 模板

这是从当前完整工程提取的**仅含格式、封面和章节骨架**的可编译模板。

- 原 `settings/info.tex` **逐字节保留**，封面中此前填入的全部字段、姓名、题目及日期均未删除或修改；如需修改封面，仅编辑这一文件。
- 原 `nwafuthesis.cls`、`settings/format.tex`、`settings/packages.tex`、`settings/degree.tex`、封面及正文排版逻辑保留。
- `contents/` 保留全套章节、节、小节标题，全部论文论证、方法、政策数据、结论、预算金额和研究性文字均已清空。
- `references.bib` 为空，没有保留原报告参考文献；`figs/` 不包含原统计图或研究图。
- `examples/figure-table-snippets.tex.txt` 提供可选图表空白代码，不会自动插入正文。

## 编译

从工程根目录执行：

```bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
biber main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

填写文献后再运行 Biber；完全空白时可直接运行 XeLaTeX 两次生成预览。使用 XeLaTeX，不要使用 pdfLaTeX。

## 填写位置

- `settings/info.tex`：封面中英文题目、个人信息和日期。
- `contents/01-basis.tex`：选题依据。
- `contents/02-content.tex`：研究内容及拟解决的关键问题。
- `contents/03-scheme.tex`：研究方案及可行性分析。
- `contents/04-outcomes.tex` ～ `08-budget.tex`：预期成果、创新、社会效益、工作进度、经费预算。
- `references.bib`：参考文献。

模板 PDF 只用于检查封面、目录、章节排版，不代表已经填写研究内容。
