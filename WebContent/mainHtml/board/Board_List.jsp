<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>

<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body {
		font-family: 'Nanum Gothic', sans-serif;
		background-color: white;
	}
	h1
	{
	
	}
	.bt
	{
		align: right;
		margin-right: 0px;
	}
	table
    {
        border-collapse : collapse;
    }
	td, th
	{
		padding : 5px;
		height : 20px;
		text-align : center;
	}
	.title
	{
		text-align: left;
	}
</style>

<script type="text/javascript">
	function move(url){
		location.href=url;
	}
</script>
</head>

<body>
	<marquee behavior="alternate" scrolldelay="100" direction="right">
		<h1>Game Forum</h1>
	</marquee>
	<table class="bbs" width="980" height="200" border="1" bgcolor="white">
		<colgroup>
			<col width="100" />
			<col width="500" />
			<col width="100" />
			<col width="50" />
			<col width="50" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th>번 호</th>
				<th>제 목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조 회</th>
				<th>추 천</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 1</a></td><td>AhnMY</td><td>2017/11/21</td><td>1234</td><td>87</td>
			</tr>
			<tr>
				<td>2</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 2</a></td><td>YangYG</td><td>2017/11/21</td><td>123</td><td>44</td>
			</tr>
			<tr>
				<td>3</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 3</a></td><td>ChangSH</td><td>2017/11/21</td><td>12</td><td>34</td>
			</tr>
			<tr>
				<td>4</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 1</a></td><td>AhnMY</td><td>2017/11/21</td><td>1234</td><td>14</td>
			</tr>
			<tr>
				<td>5</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 2</a></td><td>YangYG</td><td>2017/11/21</td><td>123</td><td>6</td>
			</tr>
			<tr>
				<td>6</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 3</a></td><td>ChangSH</td><td>2017/11/21</td><td>12</td><td>8</td>
			</tr>
			<tr>
				<td>7</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 1</a></td><td>AhnMY</td><td>2017/11/21</td><td>1234</td><td>7</td>
			</tr>
			<tr>
				<td>8</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 2</a></td><td>YangYG</td><td>2017/11/21</td><td>123</td><td>1</td>
			</tr>
			<tr>
				<td>9</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 3</a></td><td>ChangSH</td><td>2017/11/21</td><td>12</td><td>2</td>
			</tr>
			<tr>
				<td>10</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 1</a></td><td>AhnMY</td><td>2017/11/21</td><td>1234</td><td>0</td>
			</tr>
			<tr>
				<td>11</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 2</a></td><td>YangYG</td><td>2017/11/21</td><td>123</td><td>0</td>
			</tr>
			<tr>
				<td>12</td><td class="title"><a href="Board_View.jsp">게시판 글입니다 3</a></td><td>ChangSH</td><td>2017/11/21</td><td>12</td><td>2</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="6">1</td>
			</tr>
		</tfoot>		
	</table>
	
	<table border="0">
		<tr>
			<td width="850"></td>
			<td>
				<input type="button" value="처음으로" onclick="move('Board_List.jsp');" class="bt"/>
				<input type="button" value="글쓰기" onclick="move('Board_Write.jsp');" class="bt"/>
			</td>
		</tr>
	</table>
</body>
</html>