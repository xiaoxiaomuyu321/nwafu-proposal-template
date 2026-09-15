# 西北农林科技大学硕博通用开题报告 LaTeX 模板（最终版）

本仓库存放**最终修正版**的西北农林科技大学（NWAFU）硕博通用研究生学位论文开题报告 LaTeX 模板。此前上传的旧版已整体移除，由本版替换；仓库本身保留，历史记录可在提交日志中查看。

模板特点：

- 封面依据 NWAFU 开题报告 Word 版式重绘（学位标题、封面布局、页眉随学位层次联动）。
- 正文沿用 NWAFU 学位论文模板（`nwafuthesis.cls`）的 A4 版心、页眉页脚、章/节标题与分页规则。
- 参考文献使用 `biblatex + biber`，作者-年份制：中文条目在前、英文条目在后，同一连续列表，交界处无额外空行。
- 使用 XeLaTeX 编译，`latexmk` 自动调用 Biber。

## 目录结构

```
main.tex                  文档入口（封面、目录、正文五章、参考文献）
nwafuthesis.cls           基础论文格式类
settings/
  degree.tex              学位层次切换：doctor / master
  info.tex                封面信息（年级、题目、学院、学科、姓名学号、导师、日期等）
  format.tex              开题封面与专用排版格式
  packages.tex            附加宏包与表格列型
contents/
  01-basis.tex            选题依据
  02-content.tex          研究内容及拟解决的关键问题
  03-scheme.tex           研究方案及可行性分析
  04-outcomes.tex         预期成果、创新之处及社会效益
  05-schedule-budget.tex  工作进度安排及经费预算
figs/                     图片目录（技术路线图、流程图等放这里）
references.bib            参考文献数据库（1 中文 + 1 英文示例条目）
compile.bat / compile.sh  一键编译（Windows / Linux/macOS）
clean.bat / clean.sh      清理编译产物
FORMAT_SPEC.md            完整格式说明
README_TEMPLATE.md        模板使用说明摘要
README_BIBLIOGRAPHY.md    参考文献排版规则
```

## 1. 硕士 / 博士切换

只修改 `settings/degree.tex` 一行：

```tex
% 博士
\def\ReportDegreeType{doctor}

% 硕士
\def\ReportDegreeType{master}
```

切换后同步改变：

- `nwafuthesis` 文档类型（doctor/master）
- 封面“博士研究生学位论文 / 硕士研究生学位论文”
- 正文页眉“博士研究生开题报告 / 硕士研究生开题报告”

## 2. 基本信息

修改 `settings/info.tex`，填写：

- 年级（`\ReportGrade`）
- 中文题目（`\ReportTitle`）、英文题目（`\ReportTitleEN`）
- 学院（`\ReportDepartment`）、一级学科（`\ReportDiscipline`）
- 姓名（`\ReportStudent`）、学号（`\ReportStudentID`）
- 导师（`\ReportSupervisor`）、开题论证组负责人（`\ReportGroupLeader`）、成员（`\ReportGroupMembers`）
- 开题日期（`\ReportDefenseYear` / `\ReportDefenseMonth` / `\ReportDefenseDay`）

中英文长题目在封面版心内自动换行并逐行居中；题目区、基本信息区、日期区位置相互独立，长题目不会推动后部信息区。论证组成员姓名用普通空格分隔，需要换行时手工加 `\\`。

## 3. 正文

`contents/` 下五章为结构化占位正文，正式使用时直接替换占位内容即可。

正文普通引用统一使用：

```latex
\parencite{key}
```

输出形如 `(Gao et al., 2023)` / `(农业农村部, 2025)`。仅叙述式写法才用 `\textcite{key}`（输出 `Gao et al. (2023)`），开题正文默认不采用。

## 4. 参考文献

`references.bib` 保留 1 条中文 + 1 条英文示例条目，用于演示最终排序与引用格式；正式使用时替换为自己的数据库。规则：

- 中文条目：`langid = {chinese}`，并填写拼音 `sortname` / `sortkey`（中文组内按拼音 → 年份 → 题名排序）。
- 英文条目：`langid = {english}`（按第一作者姓氏 → 年份 → 题名排序）。
- 全部条目常规字形，不人为加粗/斜体；URL/DOI 允许断行避免越出版心。

详见 `README_BIBLIOGRAPHY.md` 与 `FORMAT_SPEC.md`。

## 5. 编译

推荐：

```bash
latexmk -xelatex main.tex
```

`latexmk` 会自动完成 XeLaTeX → Biber → XeLaTeX 迭代。也可以直接运行 `compile.bat`（Windows）或 `./compile.sh`（Linux/macOS）；清理产物用 `clean.bat` / `clean.sh`。

Windows 上若装有 SimSun、SimHei、DengXian Light、Times New Roman，封面字体与原 Word 最接近；其他环境自动使用开源字体回退。
