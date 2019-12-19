<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.header h1
	{
		color: white;
	}
	table
    {
        border-collapse : collapse;
        width : 100%;
    }
    td, th
    {
        text-align : center;
        padding : 5px;
        height : 15px;
        
    }
    thead, tfoot
    {
        background : darkgray;
        color : yellow;
    }
    tbody tr
    {
    		background : white;
    }
    tbody tr:nth-child(odd)
    {
        background : aliceblue;
    }
    tbody tr:hover
    {
        background : pink;
    }
</style>
</head>
<body>
	<div class="header"><h1>Total Best Score</h1></div>
	<table>
            <thead>
                <tr>
                    <th> 순 위 </th><th> 아이디 </th><th> 점 수 </th><th> 갱신날짜 </th>
                </tr>
            </thead>
            
            <tbody>
                <tr>
                    <td>1</td><td>황기태</td><td>3421</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>2</td><td>이재문</td><td>2874</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>3</td><td>이병은</td><td>1154</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>4</td><td>김남윤</td><td>1088</td><td>2017/11/22</td>
                </tr>
				<tr>
                    <td>5</td><td>황기태</td><td>3421</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>6</td><td>이재문</td><td>2874</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>7</td><td>이병은</td><td>1154</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>8</td><td>김남윤</td><td>1088</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>9</td><td>황기태</td><td>3421</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>10</td><td>이재문</td><td>2874</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>11</td><td>이병은</td><td>1154</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>12</td><td>김남윤</td><td>1088</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>13</td><td>황기태</td><td>3421</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>14</td><td>이재문</td><td>2874</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>15</td><td>이병은</td><td>1154</td><td>2017/11/22</td>
                </tr>
                <tr>
                    <td>16</td><td>김남윤</td><td>1088</td><td>2017/11/22</td>
                </tr>      
            </tbody>
            
            <tfoot>
            </tfoot>
        </table>
</body>
</html>