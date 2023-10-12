from django.db import models

# Create your models here.
class Article(models.Model):
    title = models.CharField(max_length=10)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


class Comment(models.Model):
    # 참조하는 테이블(클래스)명의 소문자 단수형으로 쓰는 것을 권장
    # on_delete : 연결된 게시글이 삭제되면, 댓글을 처리를 어떻게 하는지 정해야함 [필수] -> 옵션 많음
    article = models.ForeignKey(Article, on_delete=models.CASCADE) # models.CASCADE : 게시글 삭제 시 댓글도 다 삭제됨
    content = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add = True)
    updated_at = models.DateTimeField(auto_now = True)
