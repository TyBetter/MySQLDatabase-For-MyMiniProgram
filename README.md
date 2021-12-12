### 在数据库内建立了公告信息表（bishe_news）、用户信息表（bishe_users）、教研项目信息表（bishe_projects）和评审信息表（bishe_judgeprojects）等共四张表，下面将具体介绍每个表的结构。

1. 公告信息表

| 字段名 | 数据类型 | 可否为空 | 注释 |
| :----: | :----: | :----: | :----: |
| newsId | int | TRUE | 公告ID |
| userId | int | TRUE | 发布者ID |
| title | varchar | TRUE | 公告标题 |
| brief	| longtext | FALSE | 公告简介 |
| time | date | TRUE | 公告发布时间 |
| content | longtext | TRUE | 公告正文 |
| schoolsFor | varchar | TRUE | 分配的学院 |

2. 用户信息表
该表存储了平台用户的个人信息，包含用户ID、用户名、密码、用户身份和用户所属学院等字段。

| 字段名 | 数据类型 | 可否为空 | 注释 |
| :----: | :----: | :----: | :----: |
| userId | int | TRUE | 用户ID |
| username | int | TRUE | 用户名 |
| pwd | varchar | TRUE | 密码 |
| identity | varchar | TRUE | 用户身份 |
| schoolId | int | TRUE | 用户所属学院 |

3. 教研项目信息表
该表存储了教研项目的相关信息，包含项目ID、项目申报者ID、二级学院审核人ID、校级审核人ID、项目标题、项目简介、项目详情、项目申报时间、项目进度状态、专家评审支持票数、专家评审反对票数、二级学院审核状态、校级教务处审核状态、专家评审状态、二级学院审核时间、学校教务处审核时间、专家评审结束时间和立项时间等字段。

教研项目信息表
| 字段名 | 数据类型 | 可否为空 | 注释 |
| :----: | :----: | :----: | :----: |
| projectId | int | TRUE | 项目ID |
| userId | int | TRUE | 申报的教师 |
| schoolReviewerId | int | TRUE | 学院审核人 |
| uniReviewerId | int | TRUE | 学校审核人 |
| title | varchar |	TRUE | 项目标题 |
| brief | longtext |	FALSE |	项目简介 |
| content |	longtext |	TRUE |	项目详情 |
| time | date |	FALSE |	项目申报时间 |
| status |	int |	TRUE |	项目进度状态 |
| targetId |	int |	TRUE |	项目所属计划 |
| passVote |	int |	FALSE |	评审通过数 |
| notpassVote |	int |	FALSE |	评审否决数 |
| isSchoolPass |	varchar |	FALSE |	学院审核是否通过 |
| isUniPass |	varchar |	FALSE |	学校审核是否通过 |
| isJudgePass |	varchar |	FALSE |	专家评审是否通过 |
| schoolPassTime |	date |	FALSE |	学院审核通过时间 |
| uniPassTime |	date |	FALSE |	学校审核通过时间 |
| judgePassTime |	date |	FALSE |	评审通过时间 |
| finalTime |	date |	FALSE |	立项时间 |

4. 评审信息表
该表描述了评审专家与待评审项目的关系，包含记录序号、评审专家ID、项目ID、评审截止日期和当前项目评审状态等字段。

评审信息表
| 字段名 | 数据类型 | 可否为空 | 注释 |
| :----: | :----: | :----: | :----: |
| index |	int |	TRUE |	序号 |
| userId |	int |	TRUE |	评审专家ID |
| projectId |	int |	TRUE |	项目ID |
| deadline |	date |	TRUE |	评审截止日期 |
| judgeStatus |	varchar |	TRUE |	该用户是否已评审该项目 |