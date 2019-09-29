<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2 class="screen-out">'${param.search}'종합 검색결과</h2>
<section class="board">
	<h3><a href="${contextPath}/board/video">영상 게시판 '${param.search}' 검색결과</a></h3>
	<table>
		<caption class="screen-out">게시글 목록</caption>
		<thead>
			<tr>
				<td>번호</td>
				<td>제 목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan="5">영상게시판은 준비중입니다..</td>
			</tr>
		</tbody>
	</table>
	<p><a href="${contextPath}/board/video/write.user">글쓰기</a></p>
</section>
<section class="board">
	<h3><a href="${contextPath}/board/free">자유 게시판 '${param.search}' 검색결과</a></h3>
	<table>
		<caption class="screen-out">게시글 목록</caption>
		<thead>
			<tr>
				<td>번호</td>
				<td>제 목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
		</thead>
		<tbody>
			<c:if test="${freePostList.size() == 0}">
				<tr>
					<td colspan="5">검색 결과가 없습니다.</td>
				</tr>
			</c:if>
			<c:forEach var="post" items="${freePostList}">
			<tr>
				<td>${post.boardId}</td>
				<td><a href="free/view?boardId=${post.boardId}" title="내용보기">${post.boardTitle}</a></td>
				<td><span>${post.userId}</span></td>
				<td>${post.boardDate}</td>
				<td>${post.boardViews}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 임시 스타일 -->
	<style>
		#dv {overflow:hidden; margin-top:10px; text-align:center;}
    	#dv>a {display:bloak; float:right; padding:7px; border:1px solid black; border-radius:10px;}
    </style>
    
	<div id="dv">
		<a href="${contextPath}/board/free/write.user">글쓰기</a>
	</div>
</section>