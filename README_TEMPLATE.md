# NWAFU 硕博通用开题报告 LaTeX 最终模板

1. `settings/degree.tex`：选择 `doctor` 或 `master`。
2. `settings/info.tex`：填写封面信息。
3. `contents/`：提供五章开题报告结构化占位正文；正式使用时直接替换占位内容即可。
4. `references.bib`：保留 1 条中文 + 1 条英文示例文献，用于演示最终排序和引用格式；正式使用时替换为自己的数据库。中文条目使用 `langid={chinese}` 并填写拼音 `sortkey`；英文条目使用 `langid={english}`。
5. 正文普通引用使用 `\parencite{key}`，输出 `(Author, Year)`；参考文献为连续单列表：中文在前、英文在后，交界处没有额外空行。
6. 编译：`latexmk -xelatex main.tex`，自动完成「先 xelatex → 再 biber → 再 xelatex」的顺序。
