# 参考文献排版说明

本版参考文献使用 `biblatex + biber`，规则如下：

- 文后顺序：**中文条目在前，英文条目在后**。
- 中文条目使用 `langid = {chinese}`；英文条目使用 `langid = {english}`。参考文献只打印一次，因此中文与英文交界处没有额外空行。中文组内部按拼音 `sortkey`/`sortname` → 年份 → 题名排序。
- 英文组内部按作者姓氏 → 年份 → 题名排序。
- 参考文献条目全部使用常规字形，不对期刊名、会议名、题名等使用粗体/斜体强调。
- 使用 `xurl` 允许 URL/DOI 在更多位置断行，避免长网址越过右页边距。
- 编译推荐：`latexmk -xelatex main.tex`；或 `xelatex -> biber -> xelatex -> xelatex`。

新增中文文献时，请在 BibTeX 条目中加入：

```bibtex
langid   = {chinese},
sortname = {作者或机构名称的拼音},
```

- 中文与英文属于同一个 bibliography 列表，组间额外间距为 0，与普通相邻条目保持一致。
