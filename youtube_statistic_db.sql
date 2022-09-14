CREATE TABLE "comments" (
    "id" serial   NOT NULL,
    "video_id" text   NOT NULL,
    "comment" text   NOT NULL,
    "likes" int   NOT NULL,
    "sentiment" int   NOT NULL,
    CONSTRAINT "pk_comments" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "video_stats" (
    
    "video_id" text   NOT NULL,
	"title" text   NOT NULL,
    "published_at" date   NOT NULL,
	"keywords" text   NOT NULL,
    "likes" integer   NOT NULL,
    "comments_counts" int   NOT NULL,
    "views" int   NOT NULL,
	 CONSTRAINT "pk_video_stats" PRIMARY KEY (
        "video_id"
     )
);

SELECT vs.video_id, vs.title, vs.keywords, vs.likes, vs.comments_counts, vs.views, c.comment, c.sentiment
FROM video_stats as vs
JOIN comments as c
on c.video_id = vs.video_id;
